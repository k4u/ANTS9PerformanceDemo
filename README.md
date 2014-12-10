ANTS9PerformanceDemo
====================

Demo application used for showcasing ANTS Profiler 9

##Setup Instructions##

-Modify web.config connection string to point to a local database
-Manually Create the database schema using the scripts in /Database or let EF create it for you
-Load the database with objects.  (Can use SQL Generator from RedGate or other tools)

##Running the Demos##

Once the application starts, select "Demos" from the listing.  From there you can see the basics of structure.  

##Known "Limitations"##

By default if you load the archive table with many records the "Search Archives" function without any query parameters can & will cause out of memory exceptions.