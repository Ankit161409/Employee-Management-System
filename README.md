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


```Step 1: Clone the Project
git clone https://github.com/Ankit161409/Employee-Management-System.git
```

```Step 2: Open Eclipse IDE (Version 25-12)

Go to File → Import → Existing Projects into Workspace
Select the project folder you just cloned
Click Finish
```

```Step 3: Add JARs to Classpath

All required libraries are in the lib/ folder

In Eclipse:
Right-click the project → Build Path → Configure Build Path
Go to Libraries → Add JARs
Select all JARs inside lib folder → Click Apply and Close
```

```Step 4: Configure Tomcat Server 10.1.50
Go to Window → Preferences → Server → Runtime Environments
Click Add → Apache → Tomcat v10.1
Browse and select your Tomcat 10.1.50 installation folder → Click Finish
```

```Step 5: Run Project on Tomcat

Right-click your project → Run As → Run on Server
Select Tomcat 10.1.50 → Click Finish
```

```Step 6: Access Application
Open your browser and go to:
http://localhost:8080/EmployeeManagementSystem/
```

✅ The application is now up and running locally.
 
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
