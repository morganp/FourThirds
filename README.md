FourThirds
==========

This is an example of efficient use of views in [Sinatra][sinatra] covering RESTful actions. Data is retrieved and modified from a database, I have a set of lessons and answers you can follow if you wish to [learn more about][ORMLesson] this.

The basic layout of a Sinatra application is:
    app.rb     #Contains Routes, Controller and ORM Models
    config.ru  #Contains Information for rack web server
    db/data.db #The Database
    public/    #Static non templated data.
    views/     #ERB, HAML etc web page templates
    views/layout.erb #The default structural template applied to all ERB pages

To use this example you should be able to:
    cd ~/your/local/code/dir
    git clone http://github.com/morganp/FourThirds.git 
    cd FourThirds 
    #Initialise SQLite3 Database
    ruby init_db.rb
    #Run app on Webrick access via [http://127.0.0.1:4567][localsin]
    ruby app.rb


[sinatra]: http://www.sinatrarb.com
[ORMLesson]: http://github.com/morganp/Code-Dojo/tree/master/ORM/
[localsin]:  http://127.0.0.1:4567

