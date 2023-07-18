# Data Modeling Demo

This repository contains a demonstration of data modeling for a social media application. The purpose of this project is to showcase the design of a database schema for a simple social media platform with user authentication, post creation, commenting, and basic user interactions.

## Features

The following features are included in the data model:

1. Users can sign into the app with their email and password.
2. Users can create posts with photos and/or text.
3. Users can comment on posts.
4. Users can follow each other.
5. Users can join groups.
6. Users can create posts within groups.

## Database Schema

The data model consists of the following tables:

1. `Users`: Stores user information, including username, first name, email, and hashed passwords.

2. `UserDetail`: Contains additional user details such as phone number.

3. `Posts`: Stores posts created by users, including text content and image URLs.

4. `Comments`: Contains comments made by users on posts.

## Getting Started

To run this data modeling demo, you need to set up a relational database (e.g., MySQL, PostgreSQL) and execute the provided SQL script to create the necessary tables and foreign key constraints.

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/data-modeling-demo.git
   cd data-modeling-demo
   ```

2. Set up your relational database server and create a new database.

3. Run the SQL script in your database management tool or command-line interface to create the required tables and constraints:

   ```bash
   # Example using MySQL command-line tool
   mysql -u your-username -p your-database-name < data_model.sql
   ```

4. Once the database is set up, you can start using it with your application.

## Note

- For security reasons, ensure that passwords are hashed and salted before storing them in the database.
- Additional fields, constraints, or optimizations may be required based on the specific needs of your application.

## License

This project is licensed under the [MIT License](LICENSE).

Feel free to modify and use this data model as a starting point for your social media application or any other project that requires similar functionality.

If you have any questions or suggestions, feel free to reach out or open an issue. Happy coding!