package com.Products;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/new_arrivals_Servlet")
public class new_arrivals_Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Connection connection = null;

        try {
            // Establish a database connection (replace with your database credentials)
        	Class.forName("com.mysql.jdbc.Driver");
			
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug?useSSL=false","root","admin");

            
            String query1 = "SELECT * FROM admin";
            try (PreparedStatement statement1 = connection.prepareStatement(query1);
                 ResultSet resultSet1 = statement1.executeQuery()) {
                // Process the result set and set the result as an attribute in the request
                List<Map<String, Object>> data1 = new ArrayList<>();
                while (resultSet1.next()) {
                	Map<String, Object> row = new HashMap<>();
                	row.put("columnName1", resultSet1.getString("admin_email"));
                    row.put("columnName2", resultSet1.getString("admin_name"));
                    row.put("columnName3", resultSet1.getString("admin_phone"));
                    data1.add(row);
                }
                request.setAttribute("data1", data1);
            }

            // Execute the second query
            String query2 = "SELECT * FROM products WHERE products_satus = 'new'";
            try (PreparedStatement statement2 = connection.prepareStatement(query2);
                 ResultSet resultSet2 = statement2.executeQuery()) {
                // Process the result set and set the result as an attribute in the request
                List<Map<String, Object>> data2 = new ArrayList<>();
                while (resultSet2.next()) {
                	Map<String, Object> row = new HashMap<>();
                	row.put("columnName4", resultSet2.getString("products_image"));
                    row.put("columnName5", resultSet2.getString("products_name"));
                    row.put("columnName6", resultSet2.getString("products_price"));
                    data2.add(row);
                }
                request.setAttribute("data2", data2);
            }
            
        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
            // Close resources in the finally block
            try {
                if (connection != null) {
                    connection.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            request.getRequestDispatcher("index.jsp").forward(request, response);
           
        }
    }
        	

	}
