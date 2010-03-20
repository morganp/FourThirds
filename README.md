FourThirds
==========

This is an example of efficient use of views in [Sinatra][sinatra] covering RESTful actions. Data is retrieved and modified from a database, I have a set of lessons and answers you can follow if you wish to [learn more about][ORMLesson] this.

The basic layout of a Sinatra application is:
    app.rb     #Contains Routes, Controller and ORM Models
    config.ru  #Contains Information for rack web server
    db/data.db #The Database
    public/    #Static non template data.
    views/     #ERB, HAML etc web page templates
    views/layout.erb #The default structural template applied to all ERB pages

Gem is Rubys package management system. they will not install by them selves so you do need to have some installed first. you can check what you have by running:
    $ gem list

I have (Shortened list) Versions:
    activerecord (2.3.5)
    activeresource (2.3.5)
    activesupport (2.3.5)
    sequel (3.8.0, 3.7.0)
    sinatra (0.9.6, 0.9.4)
    sqlite3-ruby (1.2.5)

For this example you will need:
    gem install sequel
    gem install activerecord
    gem install sinatra
    gem install sqlite3-ruby

To run this example you should be able to:
    cd ~/your/local/code/dir
    git clone http://github.com/morganp/FourThirds.git 
    cd FourThirds 
    #Initialise SQLite3 Database
    ruby init_db.rb
    #Run app on Webrick access via http://127.0.0.1:4567/
    ruby app.rb

This should be accessible on [http://127.0.0.1:4567/][localsin]

[sinatra]: http://www.sinatrarb.com
[ORMLesson]: http://github.com/morganp/Code-Dojo/tree/master/ORM/
[localsin]:  http://127.0.0.1:4567/

