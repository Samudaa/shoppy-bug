package com.Customer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/customer_register_Servlet")
public class customer_register_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cust_fname = request.getParameter("fname");
		String cust_lname = request.getParameter("lname");
		String cust_email = request.getParameter("email");
		String cust_phone = request.getParameter("phonenumber");
		String cust_password = request.getParameter("password");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug","root","admin");
			
			PreparedStatement pst = con.prepareStatement("insert into customer_register(customer_f_name,customer_l_name,customer_email,customer_mobile,customer_password) values(?,?,?,?,?)");
			pst.setString(1, cust_fname);
			pst.setString(2, cust_lname);
			pst.setString(3, cust_email);
			pst.setString(4, cust_phone);
			pst.setString(5, cust_password);
			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("log_in.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success"); 
			}
			else {
				request.setAttribute("status", "failed"); 
			}
			
			dispatcher.forward(request, response);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
	}

}
