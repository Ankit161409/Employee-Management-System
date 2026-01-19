<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
	<!DOCTYPE html>
	<html>
	<head>
	<meta charset="UTF-8">
	<title>Add / Edit Employee</title>
	
	<style>
	* {
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	}
	  body {
	    font-family: Arial, sans-serif;
	    background-color: #f4f4f4;
	    
	  }
	
	  .card {
	    background-color: rgba(255, 255, 255, 0.6); /* Semi-transparent background */
  max-width: 500px;
  margin: 0 auto;
  padding: 30px;
  border-radius: 10px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	  }
	
	  h2 {
	    text-align: center;
	    color: #333;
	  }
	
	  input[type="text"] {
	    width: 100%;
	    padding: 10px;
	    margin-top: 6px;
	    margin-bottom: 20px;
	    border: 1px solid #ccc;
	    
	    box-sizing: border-box;
	    border:none;
border-bottom: 1px solid black;
background:transparent;
	  }
	    input[type="text"]:focus-visible {
  outline: none;
}
	
	  button {
	    width: 100%;
	    padding: 12px;
	    background-color: #007BFF;
	    color: white;
	    border: none;
	    border-radius: 5px;
	    font-size: 16px;
	    cursor: pointer;
	  }
	
	  button:hover {
	    background-color: #0056b3;
	  }
	  .main 
	{
	    width:100%;
	    height:100vh;
	      box-sizing: border-box;
	   margin:0;
	  display: flex;
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
	  background-image: url('of.jpg');
	  background-size: cover;
	  background-position: center;
	  opacity: 0.5;  
	  z-index: -1;
	}
	  
	</style>
	
	</head>
	<body>
	<div class="main">
	<div class="card">
	  <h2>${employee != null ? "Edit" : "Add"} Employee</h2>
	
	  <form action="controller" method="post">
	    <input type="hidden" name="update" value="${employee != null}" />
	
	    Employee id: 
	    <input type="text" name="empno" value="${employee.empno}" 
	           <c:if test="${employee != null}">readonly</c:if> />
	
	    Employee name: 
	    <input type="text" name="ename" value="${employee.ename}" />
	
	    Salary: 
	    <input type="text" name="sal" value="${employee.sal}" />
	
	    Department name: 
	    <input type="text" name="deptname" value="${employee.deptname}" />
	
	    <button type="submit">
	      <c:choose>
	        <c:when test="${employee != null}">Update</c:when>
	        <c:otherwise>Submit</c:otherwise>
	      </c:choose>
	    </button>
	  </form>
	</div>
	</div>
	</body>
	</html>
