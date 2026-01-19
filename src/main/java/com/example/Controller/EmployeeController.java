package com.example.Controller;

import java.io.IOException;
import java.util.List;

import com.example.model.Employee;
import com.example.model.EmployeeDAO;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/controller")
public class EmployeeController extends HttpServlet {
    
    private static final long serialVersionUID = 1L;

    @Override
  
    
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Check if user is logged in
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

      
        String action = req.getParameter("action");
        EmployeeDAO dao = new EmployeeDAO();

        if ("new".equals(action)) {
            RequestDispatcher dispatcher = req.getRequestDispatcher("employee-Form.jsp");
            dispatcher.forward(req, resp);

        } else if ("edit".equals(action)) {
            int empno = Integer.parseInt(req.getParameter("empno"));
            Employee existingEmp = dao.getEmployee(empno);
            req.setAttribute("employee", existingEmp);
            RequestDispatcher dispatcher = req.getRequestDispatcher("employee-Form.jsp");
            dispatcher.forward(req, resp);

        } else if ("delete".equals(action)) {
            int empno = Integer.parseInt(req.getParameter("empno"));
            dao.deleteEmployee(empno);
            resp.sendRedirect("controller");

        } else {
            List<Employee> empList = dao.getAllEmployees();
            req.setAttribute("employees", empList);
            RequestDispatcher dispatcher = req.getRequestDispatcher("employee-list.jsp");
            dispatcher.forward(req, resp);
        }
    }


    @Override
     
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // ✅ Session authentication check
        HttpSession session = req.getSession(false);
        if (session == null || session.getAttribute("user") == null) {
            resp.sendRedirect("login.jsp");
            return;
        }

        // ✅ Existing logic
        int empno = Integer.parseInt(req.getParameter("empno"));
        String ename = req.getParameter("ename");
        double sal = Double.parseDouble(req.getParameter("sal"));
        String deptname = req.getParameter("deptname");

        Employee emp = new Employee(empno, ename, sal, deptname);
        EmployeeDAO dao = new EmployeeDAO();

        String update = req.getParameter("update");
        if ("true".equals(update)) {
            dao.updateEmployee(emp);
        } else {
            dao.addEmployee(emp);
        }

        resp.sendRedirect("controller");
    }

    
}
