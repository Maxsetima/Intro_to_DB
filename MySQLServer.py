import mysql.connector
from mysql.connector import Error

def create_database():
    try:
        # Establish a connection to MySQL server (without specifying a database)
        connection = mysql.connector.connect(
            host="localhost",
            user="Maxsetim",  
            password="SangSetim3502."  
        )

        if connection.is_connected():
            print("Connected to MySQL server")

            # Create a cursor to interact with MySQL server
            cursor = connection.cursor()

            # Create the database if it doesn't exist
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")

            print("Database 'alx_book_store' created successfully or already exists.")

            # Now connect to the newly created database
            connection.database = 'alx_book_store'

            print("Now connected to 'alx_book_store' database")

        # Continue with your logic here (e.g., creating tables or other operations)

    except mysql.connector.Error as e:
        print(f"Error: {e}")
    finally:
        # Close the connection to MySQL server
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection closed.")

# Call the function to create the database and work with it
create_database()
