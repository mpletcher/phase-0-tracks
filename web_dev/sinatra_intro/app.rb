# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# params is a hash
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
# params is a hash
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# route parameters
# pass information via params
get '/contact' do
	"The address of the Tokyo Tower is: Japan, 〒105-0011 Tokyo, Minato, Shibakoen, 4 Chome−２−８- <a href='https://goo.gl/AtxFBs'> Open it on GoogleMaps</a>"
end

# A /contact route that displays an address (you can make up the address)
get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# A /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". 
#If the query parameter is not present, the route simply says "Good job!"
get '/great_job/?:name?' do
  if name = params['name']
    "Good job, #{name}!"
  else
    "Good job!"
  end
end
