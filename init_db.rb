require 'rubygems'
require 'sequel'
 
# Connect to the database
DB = Sequel.sqlite('./db/data.db')

unless DB.table_exists? :todos
  DB.create_table :todos do
    primary_key :id
    boolean :done, :default=>false
    text :desc, :default=>'New Task'
  end

   DB[:todos].insert(:done=>false, :desc=>'Get ActiveRecord to handle Booleans')
   DB[:todos].insert(:done=>true,  :desc=>'Initialise Database')
   DB[:todos].insert(:done=>false, :desc=>'Run FourThirds Example')

end

