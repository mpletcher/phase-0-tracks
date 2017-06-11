=begin
8.5 Combining SQL and Ruby
Author: Marcos Pletcher
Application created in RubyMine, Repl.it, and tested in Terminal


# -----------------------
New York Medical Centers, Inc.
Upon implementing this new database, several improvements and benefits will be possible, such as potential redundancies
and errors reduce, substantial time savings, accurate information, better data security, and easily fulfill
business requirements with more efficiency.
# -----------------------
=end

# required gems
require 'sqlite3'
require 'faker'
require 'faker/number'
require 'faker/medical/patient'
require 'faker/medical/ssn'

# Create a new database
db = SQLite3::Database.new("NYMedical.db")
db.results_as_hash = true

# Make a new table
CENTER_table = <<-SQL
	CREATE TABLE IF NOT EXISTS CENTER(
		center_id INTEGER PRIMARY KEY,
		street_address VARCHAR(100), 
		city VARCHAR(100),    
		state_abbr CHAR(2),
		phone_number CHAR(12)  
	)
SQL

# Make a new table
EMPLOYEE_table = <<-SQL
	CREATE TABLE IF NOT EXISTS EMPLOYEE(
		id INTEGER PRIMARY KEY,
		first_name VARCHAR(50),
		last_name VARCHAR(50),
		ssn VARCHAR(11),
		gender CHAR(1),
		street_address VARCHAR(100),
		city VARCHAR(100),
		state_abbr CHAR(2),
		zip CHAR(10),
		phone_number CHAR(12),
		title VARCHAR(100),
		email CHAR(10), 
		years INT,
		center_ref INT,
		FOREIGN KEY(center_ref) REFERENCES CENTER(center_id)
	)
SQL

# Make a new table
HR_EMPLOYEE_RETENTION_table = <<-SQL
	CREATE TABLE IF NOT EXISTS HR_EMPLOYEE_RETENTION(
		rate INT,
		employee_id INT,	
		FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(id)    
	)
SQL


# Create a table (if it's not there already)
db.execute(CENTER_table)
db.execute(EMPLOYEE_table)
db.execute(HR_EMPLOYEE_RETENTION_table)

# Include data into table EMPLOYEE_DATA
def create_center(db, street_address, city, state_abbr, phone_number)
  db.execute("INSERT INTO CENTER(street_address, city, state_abbr, phone_number) VALUES (?, ?, ?, ?)", [street_address, city, state_abbr, phone_number])
end

# Include data into table EMPLOYEE
def create_new_employee(db, first_name, last_name, ssn, gender, street_address, city, state_abbr, zip, phone_number, title, email, years, center_ref)
  db.execute("INSERT INTO EMPLOYEE(first_name, last_name, ssn, gender, street_address, city, state_abbr, zip, phone_number, title, email, years, center_ref) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)", [first_name, last_name, ssn, gender, street_address, city, state_abbr, zip, phone_number, title, email, years, center_ref])
end

# Include data into table HR_EMPLOYEE_RETENTION
def create_retention(db, rate, employee_id)
  db.execute("INSERT INTO HR_EMPLOYEE_RETENTION(rate, employee_id) VALUES (?, ?)", [rate, employee_id])
end

# Populate multiple entries for Center (there are three centers)

# Populate multiple entries for Employees

# Populate multiple entries for HR Employee Retention

# ////////////////////////////////////////////////

# Display Employees of the Month

# Display Employee Recognition and Service Awards

# Display the whole list of employees



# -----------------------
# Driver Code
# -----------------------

=begin
++++++++++++++++++++++++++++++++++++++++++++++++++
gem install faker-medical
https://rubygems.org/gems/faker-medical/versions/0.5.2
++++++++++++++++++++++++++++++++++++++++++++++++++
=end