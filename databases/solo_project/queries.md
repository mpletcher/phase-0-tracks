## Release 0: Design a Schema

1. In phase-0-tracks/databases, create a new directory called solo_project.
```
mkdir solo_project
```

2. Come up with an idea for two database tables that would have a one-to-many relationship. (Don't use any of the examples we've already given.) On paper, a whiteboard, a tablet, or whatever else is comfortable, draw out the schema. In addition to the required primary and foreign keys, your tables should use three data types (you can use the ones we've learned so far, or try something different if you'd like).

*I decided to create a database to store all doctor's appointments.*


3. Think about naming conventions and general readability, and make sure that your database, table, and column names make sense.

```
DATABASE: doctor_appointments

PATIENT ((PK1)PatientID, FirstName, LastName, SSN, Address, City, Zip, State, PhoneNum, Email)
APPOINTMENT ((PK1)AppointmentID, (FK)PatientID, Date, StartTime, Duration, AmountPaid, PatientRef)

```

**DB Relationship**

Relationship | Description 
---------------- | ----------------:
PATIENT  | One patient can have several appointments (1:M)|
APPOINTMENT  | One appointment can have only one patientID (1:1) |

4. Save a screenshot or other photo of your schema drawing in the solo_project directory.

![Doctor's Appointment ERD](https://github.com/mpletcher/phase-0-tracks/tree/master/databases/solo_project/erd_doctors_appointment.png)


## Release 1: Build Your Database
1. In the solo_project directory, create your database and your two tables.
```
sqlite3 doctor_appointments.db
```

```
CREATE TABLE PATIENT (
	PatientID INTEGER PRIMARY KEY,
	FirstName VARCHAR(25),
    LastName VARCHAR(25),
    SSN VARCHAR(11),
    Address VARCHAR(100),
    City VARCHAR(100),    
	State CHAR(2),
	ZIP CHAR(10),
	PhoneNum CHAR(12),
 	Email CHAR(10) 
);

CREATE TABLE APPOINTMENT (
	AppointmentID INTEGER PRIMARY KEY,
	Date DATE,
    StartTime TIME,
	Duration INTEGER,
    AmountPaid Numeric(9,2),
    PatientRef INT,
    FOREIGN KEY(PatientRef) REFERENCES PATIENT(PatientID)  
);

```

2. Populate both tables with enough data to make queries interesting (a few items per table at least).
```
INSERT INTO PATIENT (FirstName, LastName, SSN, Address, City, Zip, State, PhoneNum, Email) VALUES ("Gary", "Knight", "600-35-5325", "91 Maxwell Farm Road", "Roanoke", "24011", "VA", "540-257-6576", "knight.g@gmail.com");

INSERT INTO PATIENT (FirstName, LastName, SSN, Address, City, Zip, State, PhoneNum, Email) VALUES ("Elvin", "Polk", "479-92-2618", "631 Kembery Drive", "Arlington Heights", "60005", "IL", "630-592-8765", "polk.el@icloud.com");

INSERT INTO PATIENT (FirstName, LastName, SSN, Address, City, Zip, State, PhoneNum, Email) VALUES ("John", "Bartley", "758-03-8016", "1612 Wescam Court", "Reno", "89511", "NV", "775-850-6852", "bartley@yahoo.com");

INSERT INTO PATIENT (FirstName, LastName, SSN, Address, City, Zip, State, PhoneNum, Email) VALUES ("Tom", "Frost", "009-48-0283", "4832 Rhode Island Avenue", "Beltsville", "20705", "DC", "202-423-7760", "tfrost@google.com");


INSERT INTO APPOINTMENT (Date, StartTime, Duration, AmountPaid, PatientRef) VALUES ("03/20/2016", "11:40", 45, 52.50, 1);

INSERT INTO APPOINTMENT (Date, StartTime, Duration, AmountPaid, PatientRef) VALUES ("03/21/2016", "15:35", 65, 75.83, 2);

INSERT INTO APPOINTMENT (Date, StartTime, Duration, AmountPaid, PatientRef) VALUES ("03/22/2016", "16:10", 92, 107.33, 3);

INSERT INTO APPOINTMENT (Date, StartTime, Duration, AmountPaid, PatientRef) VALUES ("03/23/2016", "09:22", 30, 35.00, 3);

INSERT INTO APPOINTMENT (Date, StartTime, Duration, AmountPaid, PatientRef) VALUES ("03/23/2016", "09:22", 30, 35.00, 4);

```


## Release 2: Execute SQL Queries
In the solo_project directory, create a file called queries.txt. For each SQL query you run, paste both the command and the output (if any) into queries.txt.

*I created a ".md" file because it's more redeable than .txt files*
```
touch queries.txt queries.md
```
Run a SQL query for each of the following:

1. Display the information in one table (either table is fine).
```
SELECT * FROM PATIENT;
```
(PK1) | FirstName | LastName | SSN    | Address | City | ZIP | State | PhoneNum | Email
------- | ---------------- | ---------------- | ---------------- | ---------------- | ------- |---------- |---------- |---------- |---------:
1|Gary|Knight|600-35-5325|91 Maxwell Farm Road|Roanoke|VA|24011|540-257-6576|knight.g@gmail.com
2|Elvin|Polk|479-92-2618|631 Kembery Drive|Arlington Heights|IL|60005|630-592-8765|polk.el@icloud.com
3|John|Bartley|758-03-8016|1612 Wescam Court|Reno|NV|89511|775-850-6852|bartley@yahoo.com
4|Tom|Frost|009-48-0283|4832 Rhode Island Avenue|Beltsville|DC|20705|202-423-7760|tfrost@google.com


2. Update an item that meets some condition (you can choose a condition that makes sense).
3. Display the information in both tables using one query.
4. Display a narrower selection of columns (fewer columns than all of them, in other words) from both tables using one query.
5. Delete an item that meets some condition (you can choose a condition that makes sense).


## Release 3: Research on Your Own
1. There are lots of different kinds of joins. What are they? Can you apply different conditions to a join to change what's displayed? Can you bookmark any good diagrams that will help you tell different joins apart in the future?
2. Try a few different joins in your database, and record the commands and the output in queries.txt.