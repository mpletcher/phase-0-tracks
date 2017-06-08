
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


5. Populate each table with a few items.

```
INSERT INTO users (first_name, last_name) VALUES ("Bradford", "Pitt");
INSERT INTO users (first_name, last_name) VALUES ("Mandy", "Kaling");
INSERT INTO users (first_name, last_name) VALUES ("Angela", "Jolie");
INSERT INTO users (first_name, last_name) VALUES ("Steven", "Wonder");
INSERT INTO users (first_name, last_name) VALUES ("Holly", "Berry");
INSERT INTO users (first_name, last_name) VALUES ("Merryl", "Streep");
INSERT INTO users (first_name, last_name) VALUES ("Denzel", "George");
```

```
INSERT INTO businesses (name) VALUES ("Grundy Hollow Wedding Chapel");
INSERT INTO businesses (name) VALUES ("Amir's Towing");
INSERT INTO businesses (name) VALUES ("The Beagle Nightclub");
INSERT INTO businesses (name) VALUES ("Lotus Yoga");
INSERT INTO businesses (name) VALUES ("Plumbing by Janet");
INSERT INTO businesses (name) VALUES ("Sushi World");
INSERT INTO businesses (name) VALUES ("JoeBob's Sport Barn");
```

```
INSERT INTO businesses_users (user_id, business_id) VALUES (1,1);
INSERT INTO businesses_users (user_id, business_id) VALUES (2,2);
INSERT INTO businesses_users (user_id, business_id) VALUES (3,3);
INSERT INTO businesses_users (user_id, business_id) VALUES (4,6);
INSERT INTO businesses_users (user_id, business_id) VALUES (5,4);
INSERT INTO businesses_users (user_id, business_id) VALUES (6,5);
INSERT INTO businesses_users (user_id, business_id) VALUES (7,7);
```


## Release 1: Connect the Tables
1. Build the reviews table depicted in the second schema. When you create the table, you'll need to declare two foreign keys and a primary key, along with any data needed for the review.

```
DROP TABLE businesses_users;
```
```
CREATE TABLE reviews (
	id INTEGER PRIMARY KEY,
    stars INT,
    comment VARCHAR(255),
    business_id INT,
    user_id INT,
    FOREIGN KEY(business_id) REFERENCES businesses(id),
    FOREIGN KEY(user_id) REFERENCES users(id) 
);
```