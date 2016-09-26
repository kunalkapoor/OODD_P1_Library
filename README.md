# README

A simple Library Management software that allows creation and booking of rooms for the library.

Both extra credits have been implemented.
* The app sends an email to any user that is in another user's team upon successful booking.
* The app does not allow a user to book multiple rooms at the same date and time unless explicitly given the privilege by an admin.

You can login using the superadmin credentials - admin@lib.com/admin.

* General functionalities:

* When logged in as admin:
  * One can use "Manage user" screen to add new users, to view profiles of existing users and to remove any users in library database. 
  * "Manage Admins" screen can be used to add new admins to the database.
  * As the name suggests "Manage Rooms" screen can be used for adding new rooms and deleting or editing existing rooms.
  * "Booking calendar" gives a bird's eye view of existing bookings for calendar months.

* New Users can register with library management system using home page of the application.

* When logged in as user:
  * User can alter his profile from his home page.
  * User can book room using "search room" tab. User can select his preference of room such as location (D.H.Hill or James Hunt), size(small, medium, large), or simply by room number in case   he wants to book a particular room. User can select from list of rooms shown in subsequent screen. User need to enter the start time of booking in "YYYY-MM-DD HH:MM:SS" format   specifically and email ids of team mates should be provided separated by commas.
 
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