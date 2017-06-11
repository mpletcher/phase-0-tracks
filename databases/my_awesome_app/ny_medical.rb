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

# Make a new table

# Make a new table

# Create a table (if it's not there already)

# Include data into table EMPLOYEE_DATA

# Include data into table EMPLOYEE

# Include data into table HR_EMPLOYEE_RETENTION

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