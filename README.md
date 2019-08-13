# bookmarks


## User Stories

As a user
So I can visit my favorite websites
I would like a list of my favourite bookmarks

## Domain Model
When the user visits the '/bookmarks' path, their browser sends a request to a controller we built.
When the controller gets the request, it asks the Bookmark class to give it all the bookmarks, i.e. the controller asks for Bookmark.all.
The Bookmark class goes and gets the bookmarks, and gives back all the bookmarks in an array to the controller.
The controller renders the array of bookmarks to a webpage, which it sends as a response to the user

### To set up the database

Connect to `psql` and create the `bookmark_manager` database:

```
CREATE DATABASE bookmark_manager;
```

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.