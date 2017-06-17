# require gems
require 'sinatra'
require 'sqlite3'

# sinatra checks if there's public folder Static 
set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# delete student
get '/students/drop' do
  @drop_student = db.execute("SELECT * FROM students") # the @ makes campuses available throughout the template
  erb :delete_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# Delete students via
# a form
post '/students/delete_student' do
	db.execute("DELETE FROM students WHERE name=?", [params['name']])
	redirect '/'
end

