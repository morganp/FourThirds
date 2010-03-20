require 'rubygems'
require 'sinatra'

require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter   => 'sqlite3',
  :database  => './db/data.db'
)

#This is automagically linked with the plural table (todos)
class Todo < ActiveRecord::Base
end

#Configure Modules ran when starting/restarting Server
configure :development do
   puts "Development"
end

configure :test do
   puts "Test"
end

configure :production do
   puts "Production"
end

#Ran on Server Error
error do
   e = request.env['sinatra.error']
   puts e.to_s
   puts e.backtrace.join("\n")
   "Application error"
end

## ROUTES ##
# These direct web requests
# There are 4 Restful types, POST(create), PUT(update), GET(view), DELETE(gone)

get '/' do
   redirect '/todo'
end

#for large apps you can:
#load 'other_file.rb'

#Note /? this makes trailing / optional, which helps keep things running smoothly
get '/todo/?' do
   @todo = Todo.find(:all)
   erb :'todo/todo_all'
end

get '/todo/create/?' do
   #This is very important/cool
   #Create a new object (but not sent to database)
   #Through the Activerecord (ORM) functions it will be initialised with the database defaults

   #The @new object can be used to determin whether the template is POST (Create) or PUT (Modify)
   @todo = Todo.new
   @new = true
   erb :'todo/todo_edit'
end

post '/todo/?' do
   Todo.create(
      :done => params['post']['done'],
      :desc => params['post']['desc']
   )
   redirect '/todo/'
end

get '/todo/:id/edit/?' do
   @todo = Todo.find(:first, :conditions => ["id = ?", params[:id] ])
   erb :'todo/todo_edit'
end
   
put '/todo/:id/?' do
   @todo = Todo.find(:first, :conditions => ["id = ?", params[:id] ])
   @todo.done = params['post']['done']
   @todo.desc = params['post']['desc']
   @todo.save
   redirect '/todo/' + params[:id]
end

get '/todo/:id/?' do
   @todo = Todo.find(:first, :conditions => ["id = ?", params[:id] ])
   erb :'todo/todo_one'
end



