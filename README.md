# README

A simple Library Management software that allows creation and booking of rooms for the library.

Both extra credits have been implemented.
* The app sends an email to any user that is in another user's team upon successful booking.
* The app does not allow a user to book multiple rooms at the same date and time unless explicitly given the privilege by an admin.

You can login using the superadmin credentials - admin@lib.com/admin.

* Ruby version
    * Ruby version 2.2.4
    * Rails version >= 5.0.0.1

* Database creation
    * Table Spec
        * Users
            * email (unique)
            * name
            * password
            * admin (true, false)
            * removable (true, false)
            * privilege (true, false)
        * Bookings
            * email
            * start
            * end
            * team (multivalue text)
        * Rooms
            * number (unique)
            * building (0=Hill, 1=Hunt)
            * size (4, 6, 12)
            
* Initial resource creation
    * Generate scripts
        * Users
            * bin\rails generate scaffold User email:string:uniq name:string password:string address:text phone:text admin:boolean removable:boolean privilege:boolean
        * Bookings
            * bin\rails generate scaffold Booking email:string room:integer start:datetime end:datetime team:text
        * Rooms
            * bin\rails generate scaffold Room number:integer:uniq building:string size:integer
    * Setup DB
        * bin\rails db:setup
        * bin\rails db:migrate
        * bin\rails db:seed