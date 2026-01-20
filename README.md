Employee Management System

A web-based application to manage employee information, built using Java technologies.

📝 Project Description

The Employee Management System allows users to perform CRUD operations (Create, Read, Update, Delete) on employee data. It provides a simple and intuitive interface to add, view, edit, and delete employee records.
This project is ideal for understanding J2EE fundamentals, servlets, JSP, and database connectivity using JDBC.


```💻 Technologies Used
Java – Version 21
JDBC – For database connectivity
Servlets & JSP – For backend and frontend integration
Tomcat – Version 10.1.50, as the web server
MySQL – Version 8.x.x database for storing employee data
Eclipse IDE – Version 25-12 for development
Classpath JARs – Located inside the lib/ folder
```

```⚙️ Features
Add new employee records
View employee list
Update employee information
Delete employee records
Simple and user-friendly interface
```

🛠️ Project Setup & Installation

```Clone the repository:
git clone https://github.com/your-username/employee-management-system.git
```


Import project in Eclipse:
Open Eclipse → File → Import → Existing Projects into Workspace → Select project folder



Add JARs to classpath:
All required libraries are in the lib/ folder
Right-click project → Build Path → Configure Build Path → Add JARs → Select all from lib



Configure MySQL database:
Create a database (e.g., employee_db)



```Update database connection in your Servlet code:
String url = "jdbc:mysql://localhost:3306/yourdbName";
String username = "root";
String password = "your_password";
```

Run on Tomcat:
Right-click project → Run As → Run on Server → Select Tomcat 10.1.50


Access the application:
http://localhost:8080/EmployeeManagementSystem/

 

```📌 Notes
Ensure MySQL is running before starting the application.
Update database credentials in the source code as per your local setup.
Compatible with Eclipse IDE 25-12 and Java 21.
```

```🚀 Future Enhancements
Add user authentication for admin access
Implement search and filter for employee records
Add REST API integration for external systems
```
