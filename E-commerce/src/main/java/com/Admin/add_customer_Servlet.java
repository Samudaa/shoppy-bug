package com.Admin;

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


@WebServlet("/add_customer_Servlet")
public class add_customer_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String add_email = request.getParameter("c_email");
		String add_fname = request.getParameter("c_fname");
		String add_lname = request.getParameter("c_lname");
		String add_mobile = request.getParameter("c_mobile");
		String add_pass = request.getParameter("c_pass");

		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug?SSL","root","admin");
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO customer_register(customer_email,customer_f_name,customer_l_name,customer_mobile,customer_password) VALUE(?,?,?,?,?)");
			pst.setString(1, add_email);
			pst.setString(2, add_fname);
			pst.setString(3, add_lname);
			pst.setString(4, add_mobile);
			pst.setString(5, add_pass);

			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("admin_panel.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success"); 
			}
			else {
				request.setAttribute("status", "failed"); 
			}
			
			dispatcher.forward(request, response);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			try {
				con.close();
			} catch (SQLException e) {
				
				e.printStackTrace();
			}
		}
	}

}
