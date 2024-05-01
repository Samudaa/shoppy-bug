package com.Payment;

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
 * Servlet implementation class check_out_Servlet
 */
@WebServlet("/check_out_Servlet")
public class check_out_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String add_fname = request.getParameter("first_name");
		String add_lname = request.getParameter("last_name");
		String add_email = request.getParameter("email");
		String add_address = request.getParameter("address");
		String add_city = request.getParameter("city");
		String add_state = request.getParameter("state");
		String add_zip = request.getParameter("zip");
		String add_total = request.getParameter("total");
		String add_datetime = request.getParameter("dateInput");

		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug?SSL","root","admin");
			
			PreparedStatement pst = con.prepareStatement("INSERT INTO payment(pay_fname,pay_lname,pay_email,pay_address,pay_city,pay_state,pay_zip,pay_total,pay_date) VALUE(?,?,?,?,?,?,?,?,?)");
			pst.setString(1, add_fname);
			pst.setString(2, add_lname);
			pst.setString(3, add_email);
			pst.setString(4, add_address);
			pst.setString(5, add_city);
			pst.setString(6, add_state);
			pst.setString(7, add_zip);
			pst.setString(8, add_total);
			pst.setString(9, add_datetime);

			
			int rowCount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("index.jsp");
			
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
