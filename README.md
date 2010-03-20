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




[sinatra]: http://www.sinatrarb.com
[ORMLesson]: http://github.com/morganp/Code-Dojo/tree/master/ORM/
