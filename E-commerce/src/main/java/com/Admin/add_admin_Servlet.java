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

/**
 * Servlet implementation class add_admin_Servlet
 */
@WebServlet("/add_admin_Servlet")
public class add_admin_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String add_email = request.getParameter("ad_email");
		String add_name = request.getParameter("ad_name");
		String add_mobile = request.getParameter("ad_mobile");
		String add_pass = request.getParameter("ad_pass");

		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug?SSL","root","admin");
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO admin(admin_email,admin_name,admin_phone,admin_password) VALUE(?,?,?,?)");
			pst.setString(1, add_email);
			pst.setString(2, add_name);
			pst.setString(3, add_mobile);
			pst.setString(4, add_pass);

			
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
