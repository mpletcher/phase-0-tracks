
## Release 0: Build Your Tables


1. Create a folder for this project in phase-0-tracks/databases called welp .

```
mkdir welp
```


2. In the welp directory, create a database called welp.db .

```
sqlite3 welp.db
```


3. Create the businesses table. Make sure to use a primary key.

```
CREATE TABLE businesses (
	id INTEGER PRIMARY KEY,
    name VARCHAR(255)
);
```

4. Create the users table. Make sure to use a primary key.

```
CREATE TABLE users (
	id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    last_name VARCHAR(255)
);
```

*This table is often called a junction table or join table, which is a simple table that connects users to businesses. It has two foreign keys; optionally, it could also have a primary key. Notice the name of the table: businesses_users . It's a convention to name simple junction tables this way, with the two table names arranged in alphabetical order and separated by an underscore.*

```
CREATE TABLE businesses_users (
    business_id INT,
    user_id INT,
    FOREIGN KEY(business_id) REFERENCES businesses(id),
    FOREIGN KEY(user_id) REFERENCES users(id) 
);
```