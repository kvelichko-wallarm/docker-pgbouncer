CREATE ROLE pgbouncer WITH SUPERUSER LOGIN PASSWORD 'qwerty';
CREATE ROLE test WITH LOGIN PASSWORD 'qwerty';
CREATE DATABASE testdb WITH OWNER test;

CREATE ROLE test2 WITH LOGIN PASSWORD 'qwerty';
GRANT ALL PRIVILEGES ON DATABASE testdb TO test2;
