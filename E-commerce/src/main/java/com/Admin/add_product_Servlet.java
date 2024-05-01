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

@WebServlet("/add_product_Servlet")
public class add_product_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String add_name = request.getParameter("p_name");
		String add_price = request.getParameter("p_price");
		String add_type = request.getParameter("p_type");
		String add_avail = request.getParameter("p_avail");
		String add_status = request.getParameter("p_status");
		String add_img = request.getParameter("p_img");

		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug","root","admin");
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO products(products_name,products_price,products_type,products_availability,products_satus,products_img) VALUE(?,?,?,?,?,?)");
			
			pst.setString(1, add_name);
			pst.setString(2, add_price);
			pst.setString(3, add_type);
			pst.setString(4, add_avail);
			pst.setString(5, add_status);
			pst.setString(6, add_img);

			
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
