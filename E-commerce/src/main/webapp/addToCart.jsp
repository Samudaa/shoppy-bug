<%@ page import="java.util.*" %>
<%@ page session="true" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="javax.naming.Context" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import ="java.io.IOException" %>
<%@ page import ="java.sql.Connection" %>
<%@ page import ="java.sql.DriverManager" %>
<%@ page import ="java.sql.PreparedStatement" %>
<%@ page import ="java.sql.ResultSet" %>
<%@ page import ="java.sql.SQLException" %>
<%@ page import ="java.util.ArrayList" %>
<%@ page import ="java.util.HashMap" %>
<%@ page import ="java.util.List" %>
<%@ page import ="java.util.Map" %>

<%
// Retrieve the cart items from session
Map<String, String> cartItems = (Map<String, String>) session.getAttribute("cartItems");

// Check if cartItems is not null and not empty
if (cartItems != null && !cartItems.isEmpty()) {
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shopping Cart</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>
 
  <div class="bg-violet-700 text-white px-10 py-1 w-full">
      <div class="flex items-center justify-between py-2 text-5x1">
        <div class="font-bold text-white text-xl"> Shopping Cart</div>
        <div class="flex items-center text-gray-500">
          <!--  <span class="material-icons-outlined p-2" style="font-size: 30px">search</span>
          <span class="material-icons-outlined p-2" style="font-size: 30px">notifications</span>
          <div class="bg-center bg-cover bg-no-repeat rounded-full inline-block h-12 w-12 ml-2" style="background-image: url(https://i.pinimg.com/564x/de/0f/3d/de0f3d06d2c6dbf29a888cf78e4c0323.jpg)"></div>-->
        </div>
    </div>
  </div>
 
    <div class="bg-gray-100 h-screen py-8">
        <div class="container mx-auto px-4">
            
            

<ul><div class="flex flex-col md:flex-row gap-4 ">
        <div class="md:w-3/4 mx-auto">
                    <div class="bg-white rounded-lg shadow-md p-6 mb-4">
                        <table class="w-full">
                            <thead>
                                <tr>
                                     <th class="text-left font-semibold">Product</th>
                                    <th class="text-left font-semibold">Price</th>
                                    <th class="text-left font-semibold">Quantity</th>
                                    <th class="text-left font-semibold">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                            
    <% 
    for (Map.Entry<String, String> entry : cartItems.entrySet()) { %>
        
                                <tr>
                                    <td class="py-4">
                                        <div class="flex items-center">
                                            <span class="font-semibold"><%= entry.getKey() %></span>
                                        </div>
                                    </td>
                                    <td class="py-4"><%= entry.getValue() %></td>
                                    <td class="py-4">
                                        <div class="flex items-center">
                                            <button class="border rounded-md py-2 px-4 mr-2">-</button>
                                            <span class="text-center w-8">1</span>
                                            <button class="border rounded-md py-2 px-4 ml-2">+</button>
                                        </div>
                                    </td>
                                    <td class="py-4" id="total">LKR. <%= entry.getValue() %></td>
                                    <td><button><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-violet-700 hover:stroke-2">
  <path stroke-linecap="round" stroke-linejoin="round" d="m9.75 9.75 4.5 4.5m0-4.5-4.5 4.5M21 12a9 9 0 1 1-18 0 9 9 0 0 1 18 0Z" />
</svg>
                                    </button></td>
                                </tr>
                                <!-- More product rows -->
                            
    <% } %></tbody>
                        </table>
                    </div>
                </div>
                </div>
</ul>

<%
} else {
%>

<p>Your cart is empty.</p>

<%
}
%>

<div class="md:w-3/4 mx-auto">
                    <div class="bg-white rounded-lg shadow-md p-6">
                        <h2 class="text-lg font-semibold mb-4">Summary</h2>
                        
                        <hr class="my-2">
                        <div class="flex justify-between mb-2">
                            <span class="font-semibold">Total</span>
                            <span class="font-semibold total-cell" id="showTotal"></span><!-- Here i need to display total -->
                        </div class="">
                        <center><a href="check_out.jsp"><button class="bg-violet-700 text-white py-2 px-4 rounded-lg mt-4 w-1/4 ">Checkout</button></a></center>
                        <a href="index.jsp"><p class="text-center py-2 cursor-pointer text-cyan-500 text-sm">Back to home</p></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <script>
    function refreshCart() {
        var xhr = new XMLHttpRequest();
        xhr.onreadystatechange = function() {
            if (xhr.readyState === 4 && xhr.status === 200) {
                
                document.getElementById("cartItems").innerHTML = xhr.responseText;
            }
        };
        xhr.open("GET", "addToCart.jsp", true); 
        xhr.send();
    }


    refreshCart();
    setInterval(refreshCart, 5000); 
</script>



</body>
</html>


