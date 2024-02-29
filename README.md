# Library Management System using Angular and Dotnet8 - RestfulAPI

This is the back-end repository of this front-end repository: https://github.com/MinhNguyen5199/AngularApp

## Table of Contents
- [Website look](#Website-look)

## The purpose of this project is to learn and practice concepts related to:
> - Angular 17
> - Material UI
> - Back-end ASP.NET Core WEB API using .NET 8(C#)
> - Entity Framework Core, ORM for Database Access (DBContext, Migration)
> - SQL server from Google Cloud
> - Deploy back-end with Google App Engine
> - Continuous Integration/Continuous Deployment
> - Dependency Injection in .NET

## In this Website, I have created 
🔑 Authentication System : User would be able to login and create account.<br>
🔑 JWT Authentication : User's data will be stored in tokens in browser.<br>
🔑 Role based Authorization : Some features are only accessible to admin, some can be access by user and admin.<br>
🔑 Manage Books and Categories : Admin and inser/delete books/categories in the Library.<br>
🔑 Blocking / Disabling : Admin can block/unblock or disable/enable any User.<br>
🔑 Fine Calculation : Users can also see their fine, if they doesn't submit book withing specified time.<br>

## How to run locally

In the file Program.cs: you set policy.WithOrigins to where you host front-end; in this case, our front-end app is locally hosted on http://localhost:4200

![image](https://github.com/MinhNguyen5199/.NET-8/assets/86221335/78fbf6cf-c23f-4ada-8698-2f57c9ab6f44)

In the file appsettings.json: you set DB to the connection string of your database, everyone will have a different connection string.
Ensure you create a database called LMS. In my case, see picture below:

![image](https://github.com/MinhNguyen5199/.NET-8/assets/86221335/6f4a63e4-d423-4f03-ae6d-627011ef0877)

In the file appsettings.json: you set FromEmail and EmailAccountPassword. FromEmail is your Email and follow this tutorial https://support.google.com/mail/answer/185833?hl=en for EmailAccountPassword

![image](https://github.com/MinhNguyen5199/.NET-8/assets/86221335/35ec9018-08fd-40c0-8c48-0080afe05767)

Running commands below for your database:

    dotnet tool install --global dotnet-ef
    ### This command installs the Entity Framework Core (EF Core) Command-Line Interface (CLI) tool globally on your system.
    dotnet ef migrations add InitialDB
    ### This command creates a new migration named "InitialDB" based on the changes made to your DbContext.
    dotnet ef database update
    ### This command applies any pending migrations to the database, ensuring that the database schema matches the model defined in your DbContext.

## How to run an application from a deployed front-end

In the file Program.cs: you set policy.WithOrigins to where you host front-end

## Application Architecture

![image](https://github.com/MinhNguyen5199/AngularApp/assets/86221335/47c8a765-6925-4e2b-aca2-ecd67068c006)

## Website look

<img src="https://s2.ezgif.com/tmp/ezgif-2-c4b37de34f.gif"/>

