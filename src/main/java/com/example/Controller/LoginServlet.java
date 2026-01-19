	package com.example.Controller;
	
	import jakarta.servlet.ServletException;
	import jakarta.servlet.annotation.WebServlet;
	import jakarta.servlet.http.*;
	import java.io.IOException;
	
	 
	@WebServlet("/login")
	public class LoginServlet extends HttpServlet {
	    
	    private static final long serialVersionUID = 1L;
	
	    private static final String USERNAME = "admin";
	    private static final String PASSWORD = "admin123";
	
	    @Override
	    protected void doPost(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {
	        
	        String username = request.getParameter("username");
	        String password = request.getParameter("password");
	
	        if (USERNAME.equals(username) && PASSWORD.equals(password)) {
	            HttpSession session = request.getSession();   // Creates a session if not exists
	            session.setAttribute("user", username);        // Sets session attribute "user"
	            response.sendRedirect("menu.jsp");
	        } else {
	            request.setAttribute("errorMessage", "Invalid credentials!");
	            request.getRequestDispatcher("index.jsp").forward(request, response);
	        }
	    }
	}
	
	
