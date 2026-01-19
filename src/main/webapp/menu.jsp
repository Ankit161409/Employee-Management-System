<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index Page</title>

<style>
  /* Reset some default styles */
  * {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  }

  body {
    background-color: #f4f4f4;
  }

  /* Navbar styling */
  .navbar {
     background-color: rgba(255, 255, 255, 0.6);  
    color: #fff;
    padding: 15px 20px;
    text-align: center;
    color:black;
  }

  .navbar h2 {
    margin: 0;
    font-size: 28px;
    letter-spacing: 1px;
  }

  /* Card container */
  .card-container {
    display: flex;
    justify-content: center;
    gap: 30px;
    margin-top: 40px;
    flex-wrap: wrap;
  }

  .card {
     background-color: rgba(255, 255, 255, 0.6);  
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0,0,0,0.1);
    padding: 30px 20px;
    width: 250px;
    text-align: center;
    transition: transform 0.2s ease;
  }

  .card:hover {
    transform: translateY(-5px);
  }

  .card a {
    text-decoration: none;
    color: #007BFF;
    font-weight: bold;
    display: block;
    margin-top: 15px;
    font-size: 18px;
  }

  .card a:hover {
    color: #0056b3;
  }

  .main {
    width: 100%;
    min-height: 100vh;
    box-sizing: border-box;
    /* border: 10px solid red; */
    z-index: 1;
    position: relative;
    background-color: #333;
    padding-bottom: 100px;
  }

  .main::before {
    content: '';
    position: absolute;
    top: 0; left: 0;
    width: 100%;
    height: 100%;
    background-image: url('of3.jpg');
    background-size: cover;
    background-position: center;
    opacity: 0.5;
    z-index: -1;
  }

  /* Description section */
  .description {
    color: #fff;
    text-align: center;
    max-width: 1200px;
    margin: 50px auto 0 auto;
    padding: 30px;
    background-color: rgba(0, 0, 0, 0.5);
    border-radius: 12px;
    font-size: 18px;
    line-height: 1.8;
    font-family: 'Georgia', serif;
  }

  .description strong {
    color: #FFD700;
  }

  .description em {
    color: #C0C0C0;
    font-style: italic;
  }

</style>
</head>
<body>
<div class="main">
  <div class="navbar">
    <h2>Employee Management System</h2>
  </div>

  <div class="card-container">
    <div class="card">
      <h3>Add Employee</h3>
      <a href="employee-Form.jsp">Go to Form</a>
    </div>

    <div class="card">
      <h3>View Employees</h3>
      <a href="controller">View List</a>
    </div>
  </div>

  <!-- Description below the cards -->
  <div class="description">
    <p>
      Welcome to the <strong>Employee Management System</strong>, your all-in-one platform for maintaining and organizing employee information with ease. Our system provides a clean and intuitive interface that allows administrators and HR personnel to seamlessly manage workforce data.
    </p>

    <p>
      Using the <strong>Add Employee</strong> feature, you can quickly register new employees into the system. This form ensures that all essential employee data — such as Employee id, Employee name, Salary and department name  — are securely stored and easily retrievable. This process is simple, yet powerful, offering both validation and flexibility to cater to your organization’s unique needs.
    </p>

    <p>
      With the <strong>View Employees</strong> section, you get a real-time overview of all staff members currently registered in the database. This view offers quick access to individual profiles .
      , enabling you to keep your human resources directory up-to-date at all times.
    </p>

    <p>
      Our system also supports <strong>Editing</strong> existing employee records. Whether it’s updating such as Employee id, Employee name, Salary and department name  or correcting minor typos, this feature ensures your data remains current and accurate.
         </p>

    <p>
      Additionally, the system includes the ability to <strong>Delete</strong> employee entries as needed. Whether due to resignation, retirement, or administrative updates, you can remove records cleanly from the system. <em>Note: All delete actions require confirmation</em> to prevent accidental data loss. This ensures that your database stays lean and only reflects active or relevant staff members.
    </p>

    <p>
      In summary, the Employee Management System is built to enhance organizational efficiency, reduce manual paperwork, and give you powerful tools to oversee your workforce. With features like <strong>Add</strong>, <strong>View</strong>, <strong>Edit</strong>, and <strong>Delete</strong>, managing employees has never been more streamlined or reliable.
    </p>
  </div>

</div>
</body>
</html>
