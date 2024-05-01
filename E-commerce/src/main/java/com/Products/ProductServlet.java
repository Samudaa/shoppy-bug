package com.Products;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/products")
public class ProductServlet extends HttpServlet {

  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
private List<Product> products;
  private String jdbcURL;
  private String username;
  private String password;

  @Override
  public void init() throws ServletException {
    super.init();
    // Replace these with your actual database connection details
    jdbcURL = "jdbc:mysql://localhost:3306/shoppy_bug";
    username = "root";
    password = "admin";

    products = new ArrayList<>();
    getProductsFromDatabase();
  }

  private void getProductsFromDatabase() {
    try (Connection connection = DriverManager.getConnection(jdbcURL, username, password)) {
      Statement statement = connection.createStatement();
      String sql = "SELECT products_name, products_price, products_img FROM products"; 
      ResultSet resultSet = statement.executeQuery(sql);

      while (resultSet.next()) {
        String name = resultSet.getString("products_name");
        String price = resultSet.getString("products_price");
        String imageURL = resultSet.getString("products_img");
        products.add(new Product(name, price, imageURL));
      }
    } catch (Exception e) {
      e.printStackTrace();
      // Handle connection errors gracefully
    }
  }

  protected void doGet(HttpServletRequest request, HttpServletResponse response)
      throws ServletException, IOException {
    request.setAttribute("products", products);
    request.getRequestDispatcher("index.jsp").forward(request, response);
  }
}

