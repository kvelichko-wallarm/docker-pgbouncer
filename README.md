Pgbouncer
=========

PostgreSQL connection pooler.

Tags:
=====

  + latest: same as 1.9.0 
  + 1.9.0: Alpine with pgbouncer 1.9.0

Usage:
======

Mount your configuration directory as a volume:

```bash
  $ docker run -v <pgbouncer_config_dir>:/etc/pgbouncer \
               -v <pgbouncer_userlist_dir>:/etc/userlist \
               wallarm/pgbouncer
```
