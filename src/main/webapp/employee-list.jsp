<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "com.example.model.Employee" %>
<%@ taglib uri="jakarta.tags.core"  prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employees List</title>
<link rel="stylesheet" type="text/css" href="employeelist.css">
</head>
<body>

<style>

 
@charset "UTF-8";
*
{
	margin:0 auto;
	padding:0;
}
body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    background-color: #f9fafb;
    color: #333;
     margin:0;
     padding:0;
}

h2 {
    color: white;
    margin-bottom: 15px;
   padding-top:30px;
}

hr {
    border: 0;
    border-top: 2px solid #f5f6f8;
    margin-bottom: 25px;
     
}
table {
    width: 100%;
    border-collapse: collapse;
    background: rgba(255, 255, 255, 0.6); /* Slight opacity */
    box-shadow: 0 3px 10px rgba(0,0,0,0.8);
    border-radius: 8px;
    overflow: hidden;
    opacity: 0.8; 
    transition: opacity 0.3s ease;
}


th, td {
    padding: 12px 15px;
    text-align: left;
    
}

th {
    background-color: #007acc;
    color: white;
    font-weight: 600;
    text-transform: uppercase;
    letter-spacing: 0.05em;
}

tr:nth-child(even) {
    background-color: #f1f8ff;
}

tr:hover {
    background-color: #cce4ff;
}

a {
    display: inline-block;
    margin-top: 25px;
    padding: 12px 30px;
    background-color: #007acc;
    color: white;
    text-decoration: none;
    font-weight: 600;
    border-radius: 5px;
    box-shadow: 0 4px 6px rgba(0,0,0,0.1);
    transition: background-color 0.3s ease, box-shadow 0.3s ease;
}

a:hover {
    background-color: #005f99;
    box-shadow: 0 6px 10px rgba(0,0,0,0.15);
}
 .main 
	{
	    width:100%;
	    height:100vh;
	      box-sizing: border-box;
	   margin:0;
	   
	align-items: center;
	justify-items: center;
	justify-content: center;
	position: relative;
	  z-index: 1;
	  background-color: #333;
	 
	
	}
	.main::before {
	  content: '';
	  position: absolute;
	  top: 0; left: 0;
	  width: 100%;
	  height: 100%;
	  background-image: url('of5.jpg');
	  background-size: cover;
	  background-position: center;
	  opacity: 0.5;  
	  z-index: -1;
	}

</style>
<div class="main">
<h2> Employees List </h2>
<hr>
<table border="1">
  <tr> 
    <th>EMPLOYEE NO</th> 
    <th>EMPLOYEE NAME</th> 
    <th>SALARY</th> 
    <th>DEPTNAME</th> 
    <th>Actions</th>
  </tr>
  <c:forEach var="e" items="${employees}">
    <tr>
      <td><c:out value="${e.empno}"/></td>
      <td><c:out value="${e.ename}"/></td>
      <td><c:out value="${e.sal}"/></td>
      <td><c:out value="${e.deptname}"/></td>
      <td>
        <a href="controller?action=edit&empno=${e.empno}">Edit</a> |
        <a href="controller?action=delete&empno=${e.empno}" onclick="return confirm('Are you sure?');">Delete</a>
      </td>
    </tr>
  </c:forEach>
</table>

<br>
<a href="controller?action=new">Add New Employee</a>
</div>
</body>
</html>
