import mysql.connector
from mysql.connector import Error

def create_database():
    connection = None  # Initialize connection variable to None
    try:
        # Establish a connection to MySQL server (without specifying a database)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password='SangSetim3502.',  # Make sure this password is correct
            database='alx_book_store'
        )

        # Check if the connection was successful
        if connection.is_connected():
            print("Connected to MySQL Server.")

            # Create a cursor to interact with the MySQL server
            cursor = connection.cursor()

            # Create the database if it doesn't exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
            
    except Error as e:
        print(f"Error: {e}")
    finally:
        # Ensure that the connection and cursor are closed only if they were successfully created
        if connection and connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

if __name__ == "__main__":
    create_database()
