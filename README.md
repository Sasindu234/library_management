# library_management
Library Management System - Setup Guide

Step 1: Download and Install XAMPP

Go to the official XAMPP website: https://www.apachefriends.org/index.html

Download the latest version of XAMPP for your operating system (Windows, macOS, or Linux).

Run the installer and follow the installation steps.

Once installed, open XAMPP Control Panel and start Apache and MySQL.

Step 2: Import the Database (phpMyAdmin)

Open your web browser and go to: http://localhost/phpmyadmin

Click on Databases tab.

Create a new database named library_management.

Click on the newly created database.

Click the Import tab.

Click Choose File and select the library_management.sql file.

Click Go to import the database.

Step 3: Set Up Project Files

Move the library_management project folder to the following location:

C:\xampp\htdocs\library_management

Ensure the project structure is as follows:

C:\xampp\htdocs\library_management
    /public
            style.css
            script.js
        admin.html
        index.html
        and there will be more pages....
    /backend
        add_books.php
        fetch_books.php
        add_customer.php
        fetch_customers.php
    library_management.sql
  there will be more....

Step 4: Open the Website

Start XAMPP and ensure Apache and MySQL are running.

Open a web browser and enter the following URL:

http://localhost/library_management/public/index.html

You can also access the admin panel by visiting:
http://localhost/library_management/public/admin.html
