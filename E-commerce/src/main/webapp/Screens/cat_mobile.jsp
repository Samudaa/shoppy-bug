<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Mobile Devices</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>
 
 
 
  <div class="bg-violet-700 text-white px-10 py-1 w-full">
      <div class="flex items-center justify-between py-2 text-5x1">
        <div class="font-bold text-white text-xl"> Categories</div>
        <div class="flex items-center text-gray-500">
          <!--  <span class="material-icons-outlined p-2" style="font-size: 30px">search</span>
          <span class="material-icons-outlined p-2" style="font-size: 30px">notifications</span>
          <div class="bg-center bg-cover bg-no-repeat rounded-full inline-block h-12 w-12 ml-2" style="background-image: url(https://i.pinimg.com/564x/de/0f/3d/de0f3d06d2c6dbf29a888cf78e4c0323.jpg)"></div>-->
        </div>
    </div>
  </div>
 
 
<div class="max-w-7xl flex mx-auto py-6 my-12">
        <div class="bg-violet-700 p-2 h-10 rounded-md"></div>
        <div class="my-auto px-4 text-violet-700 font-bold text-xl">Mobile Devices</div>
    </div>
    
    
<!-- ---------------------------------------------------- -->

<div class="max-w-7xl mx-auto">
    <div class="grid grid-cols-1 md:grid-cols-5 gap-4">  
        <%
        
        try{
        	Class.forName("com.mysql.jdbc.Driver");
    		
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug","root","admin");
    		Statement stm = con.createStatement();
    			
    		String str = "SELECT * FROM products WHERE products_satus = 'mobile' & 'tab'";
    		ResultSet rs = stm.executeQuery(str);
    		
    		while(rs.next()){
    			
    			%>
    			
    			
    			<form action="add_cart_Servlet" method="post">
    			
    			<ul>
    			<li>
    			<div class="bg-violet-50 max-w-56 max-h-fit rounded-md shadow-md content-end">
    			<table>
    			
                <tr>
                    <div class="bg-white max-w-56 max-h-80 text-center">
                        <img src=<%=rs.getString("products_img") %> alt="">
                    </div>
                </tr>
                <tr>
                    <p class="pt-2 px-2"><%=rs.getString("products_name") %></p>
                    <input type="hidden" name="productName" value="<%= rs.getString("products_name") %>">
                </tr>
                <tr>
                    <p class="p-2 font-semibold text-violet-700 text-lg">LKR. <%=rs.getString("products_price") %></p>
                    <input type="hidden" name="productPrice" value="<%= rs.getString("products_price") %>">
                </tr>
                <tr>
                    <p class="pb-2 px-2 text-xs text-black/50 line-through"></p>
                </tr>
                <tr>
                    <input type="submit" class="p-2 min-w-full border-2 hover:bg-violet-700 hover:text-white justify-end" value="add to cart" >
                
                </tr>
                
            </table>
            </div>
            </li>
            </ul>
				</form>
    			
    			<%

    		
    		}
        	
        	
        	
        	
        }catch(Exception e){
    		
    	}
        
        %>
        
        	
   </div>
</div>
 
 
  <%@include file="Components/footer.jsp" %>
 
</body>
</html>