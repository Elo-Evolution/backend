#!/bin/sh

# Define the path to your SQLite database and schema SQL file
DB_PATH="./your_database.db"
SCHEMA_PATH="./schema.sql"

# Check if the SQLite database file exists
if [ ! -f "$DB_PATH" ]; then
    echo "Database not found. Creating database schema..."
    # Initialize the database schema from the SQL file
    sqlite3 $DB_PATH < $SCHEMA_PATH
fi

# Now, run the Flask application
exec flask run --host=0.0.0.0 --port=3000
