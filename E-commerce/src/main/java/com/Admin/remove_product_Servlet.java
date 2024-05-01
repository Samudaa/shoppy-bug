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
 * Servlet implementation class remove_product_Servlet
 */
@WebServlet("/remove_product_Servlet")
public class remove_product_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String remove_product = request.getParameter("p_id");
		
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug","root","admin");
			
			PreparedStatement stm = con.prepareStatement("DELETE FROM products WHERE product_id = ?");
			
			stm.setString(1, remove_product);
			
			int rowCount = stm.executeUpdate();
			RequestDispatcher dis= request.getRequestDispatcher("admin_panel.jsp");
			
			if(rowCount > 0) {
				request.setAttribute("status", "success"); 
			}
			else {
				request.setAttribute("status", "failed"); 
			}
			
			
            dis.forward(request, response);
            
		}catch(Exception e)
		{
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
