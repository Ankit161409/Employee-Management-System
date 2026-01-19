 package com.example.model;
//model class
public class Employee {
	private int empno;
	private String ename;
	private double sal;
	private String deptname;
	
	public Employee() {
		
	}
	public Employee(int empno, String ename, double sal, String deptname) {
		super();
		this.empno = empno;
		this.ename = ename;
		this.sal = sal;
		this.deptname = deptname;
	}

	public int getEmpno() {
		return empno;
	}

	public void setEmpno(int empno) {
		this.empno = empno;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public double getSal() {
		return sal;
	}

	public void setSal(double sal) {
		this.sal = sal;
	}

	public String getdeptname() {
		return deptname;
	}

	public void setdeptname(String deptname) {
		this.deptname = deptname;
	}
	
	

}