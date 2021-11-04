-- Dev environment
# in migrations/01_create_bookmarks_table.sql
CREATE DATABASE "bookmark_manager";

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

-- Test environment
# in migrations/01_create_bookmarks_table.sql
CREATE DATABASE "bookmark_manager_test";

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));