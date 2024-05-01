package com.Cart;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/add_cart_Servlet")
public class add_cart_Servlet extends HttpServlet {
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String productName = request.getParameter("productName");
        String productPrice = request.getParameter("productPrice");

        HttpSession session = request.getSession();
        Map<String, String> cartItems = (Map<String, String>) session.getAttribute("cartItems");

        if (cartItems == null) {
            cartItems = new HashMap<>();
        }

        // Get product name and price from request parameters
        String productName1 = request.getParameter("productName");
        String productPrice1 = request.getParameter("productPrice");

        cartItems.put(productName1, productPrice1);
        session.setAttribute("cartItems", cartItems);

        response.sendRedirect("index.jsp");
    }
}
