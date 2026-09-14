# pg_admin_connect creates the elevated PostgreSQL connection buildFIADB
# needs to create/alter tables and COPY data in. Connection parameters are
# resolved in the same order as FIADB.diRect's FIAdb_connect(): explicit
# arguments, then environment variables, then defaults.
#
# Unlike a regular query connection, this one needs privileges to create
# tables and load data, so it is driven by FIADB_ADMIN_USER/
# FIADB_ADMIN_PASSWORD (distinct from FIADB_USER/FIADB_PASSWORD) rather than
# the postgres superuser.
#
# On a Unix socket, standard Postgres peer authentication only lets an OS
# user log in as a same-named Postgres role -- it can't connect directly as
# a different admin role like "fiadb_admin" without editing pg_hba.conf/
# pg_ident.conf (which needs root). So instead we connect as the OS user
# (unchanged peer auth) and then run SET ROLE to switch to the admin role.
# That switch only succeeds if the OS user's own Postgres role has actually
# been granted membership in the admin role (`GRANT fiadb_admin TO
# <user>;`), so the environment variable alone never grants access -- the
# GRANT is the real gate. No password, and no OS/system account is needed
# for the admin role itself, since it's NOLOGIN and only ever reached via
# SET ROLE.
#
# The TCP fallback (no socket -- Windows, sandboxed contexts) has no peer
# auth to work with, so it connects directly as FIADB_ADMIN_USER with
# FIADB_ADMIN_PASSWORD; that role would need LOGIN + a password in whatever
# Postgres install it targets.

`%||%` <- function(x, y) if (is.null(x)) y else x

pg_admin_connect <- function(dbname = "fiadb",
                              host = NULL,
                              port = NULL,
                              user = Sys.getenv("FIADB_ADMIN_USER",
                                                unset = Sys.getenv("USER", unset = "")),
                              password = Sys.getenv("FIADB_ADMIN_PASSWORD", unset = "")) {

  if (identical(user, "")) {
    stop(
      "No admin database user resolved. Set the FIADB_ADMIN_USER environment ",
      "variable (and FIADB_ADMIN_PASSWORD if not using Unix-socket peer auth), ",
      "or pass user= explicitly. This should be a role that owns (or has ",
      "CREATEDB on) the '", dbname, "' database -- not the postgres superuser."
    )
  }

  # Auto-detect whether a Unix socket is available, same as FIAdb_connect().
  # Falls back to TCP if the socket doesn't exist (e.g. Windows) or a host
  # was supplied explicitly.
  socket_path <- "/var/run/postgresql"
  use_tcp <- !file.exists(socket_path) || !is.null(host)

  if (use_tcp) {
    DBI::dbConnect(
      RPostgres::Postgres(),
      dbname   = dbname,
      host     = host %||% Sys.getenv("FIADB_HOST", unset = "localhost"),
      port     = as.integer(port %||% Sys.getenv("FIADB_PORT", unset = "5432")),
      user     = user,
      password = password
    )
  } else {
    # Peer auth only supports connecting as yourself -- connect as the OS
    # user, then SET ROLE to the target admin role if it's a different role.
    os_user <- Sys.getenv("USER")
    con <- DBI::dbConnect(
      RPostgres::Postgres(),
      dbname = dbname,
      user   = os_user
    )
    if (!identical(user, os_user)) {
      DBI::dbExecute(con, paste0("SET ROLE ", DBI::dbQuoteIdentifier(con, user)))
    }
    con
  }
}
