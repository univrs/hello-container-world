CREATE ROLE hello WITH PASSWORD 'hello';
ALTER ROLE hello WITH LOGIN;
CREATE DATABASE hello OWNER=hello;
GRANT ALL PRIVILEGES ON DATABASE hello TO hello;
\connect hello
CREATE TABLE hits (total int);
INSERT INTO hits (total) VALUES (0);
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO hello;
