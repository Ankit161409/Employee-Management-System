package com.example.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
//Model class
public class EmployeeDAO {
	
	private static Connection conn;
	private static PreparedStatement pstmt;
	private static Statement stmt;
	
	static {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver"); //optional
			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root","root");
			stmt = conn.createStatement();
			pstmt=conn.prepareStatement("INSERT INTO EMP(EMPNO,ENAME,SALARY,DEPTNAME) VALUES(?, ?, ?, ?)");
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public List<Employee>  getAllEmployees() {
		List<Employee>  empList = new ArrayList<>();
		try {
			ResultSet rs = stmt.executeQuery("SELECT EMPNO,ENAME,SALARY,DEPTNAME FROM EMP");
			while( rs.next() ) {
				Employee e = new Employee();
				e.setEmpno(rs.getInt(1));
				e.setEname(rs.getString(2));
				e.setSal(rs.getDouble(3));
				e.setdeptname(rs.getString(4));
				empList.add(e);
			}
			rs.close();
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
		return empList;
	}
	
	public void addEmployee(Employee emp) {
		try {
			pstmt.setInt(1, emp.getEmpno());
			pstmt.setString(2, emp.getEname());
			pstmt.setDouble(3, emp.getSal());
			pstmt.setString(4, emp.getdeptname());
			pstmt.executeUpdate();
			
		}
		catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	public void deleteEmployee(int empno) {
	    try {
	        PreparedStatement ps = conn.prepareStatement("DELETE FROM EMP WHERE EMPNO=?");
	        ps.setInt(1, empno);
	        ps.executeUpdate();
	        ps.close();
	    } catch (Exception ex) {
	        ex.printStackTrace();
	    }
	}

	public void updateEmployee(Employee emp) {
	    try {
	        PreparedStatement ps = conn.prepareStatement("UPDATE EMP SET ENAME=?, SALARY=?, DEPTNAME=? WHERE EMPNO=?");
	        ps.setString(1, emp.getEname());
	        ps.setDouble(2, emp.getSal());
	        ps.setString(3, emp.getdeptname());
	        ps.setInt(4, emp.getEmpno());
	        ps.executeUpdate();
	        ps.close();
	    } catch (Exception ex) {
	        ex.printStackTrace();
	    }
	}

	public Employee getEmployee(int empno) {
	    Employee emp = null;
	    try {
	        PreparedStatement ps = conn.prepareStatement("SELECT * FROM EMP WHERE EMPNO=?");
	        ps.setInt(1, empno);
	        ResultSet rs = ps.executeQuery();
	        if (rs.next()) {
	            emp = new Employee(rs.getInt("EMPNO"), rs.getString("ENAME"), rs.getDouble("SALARY"), rs.getString("DEPTNAME"));
	        }
	        rs.close();
	        ps.close();
	    } catch (Exception ex) {
	        ex.printStackTrace();
	    }
	    return emp;
	}


}