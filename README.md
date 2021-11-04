# User stories

As a user I want to
Show a list of bookmarks
I want to see a list of bookmarks

As a user I want to
By pressing the add to bookmarks button
I want to add new bookmarks

As a user I want to
By pressing the delete bookmark button
I want to delete the selected bookmarks

As a user I want to
By pressing the update bookmark button
I want to update bookmarks

As a user I want to
By typing into a text field and submit
I want to comment on existing bookmarks

As a user I want to
By typing into a text field 
I can create a tag to categorize bookmarks

As a user I want to
To see only specific categories of bookmarks
I want to be able to filter bookmarks by tag

As an Admin I want to
manage user permissions
Users should be restricted to manage only their own bookmarks

# Database setup

- Connect to psql
- Create the database using the psql command CREATE DATABASE bookmark_manager;
- Connect to the database using the pqsl command \c bookmark_manager;
- Run the query we have saved in the file 01_create_bookmarks_table.sql

-- Dev environment
# in migrations/01_create_bookmarks_table.sql
CREATE DATABASE "bookmark_manager";

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

-- Test environment
# in migrations/01_create_bookmarks_table.sql
CREATE DATABASE "bookmark_manager_test";

CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

WHEN RUNNING TESTS USE:
$> ruby spec/setup_test_database.rb
$> rspec
