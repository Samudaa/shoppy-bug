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

    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en"  class="scroll-smooth">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shoppy Bug</title>

    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>

<%@include file="Screens/Components/header.jsp" %>

    <div class="max-w-7xl mx-auto my-8">
        
        <div class="grid grid-cols-4 gap-8">
            <div class="border-2 border-r-black/25 border-l-white border-t-white border-b-white">
                <ul class="text-black pt-8">
                    <li class="py-1"><a href="Screens/cat_mobile.jsp" class="no-underline text-black focus:text-violet-700">Mobile Phones & Tablets</a></li>
                    <li class="py-1"><a href="Screens/cat_computer.jsp" class="no-underline text-black focus:text-violet-700">Computers & Laptops</a></li>
                    <li class="py-1"><a href="Screens/cat_game.jsp" class="no-underline text-black focus:text-violet-700">Gaming Consoles & Play stations</a></li>
                    <li class="py-1"><a href="Screens/cat_camera.jsp" class="no-underline text-black focus:text-violet-700">Camera/ Lens and Equipments</a></li>
                </ul>
            </div>
            <div class="col-span-3">
            <%@include file="Screens/Components/carousel.jsp" %>
            </div>
        </div>
        
    </div>
    
    
    <div class="max-w-7xl flex mx-auto py-6 my-12">
        <div class="bg-violet-700 p-2 h-10 rounded-md"></div>
        <div class="my-auto px-4 text-violet-700 font-bold text-xl">New Arrivals</div>
    </div>
    
    
<!-- ---------------------------------------------------- -->

<div class="max-w-7xl mx-auto ">
    <div class="grid grid-cols-1 md:grid-cols-5 gap-4">
        <%
        
        try{
        	Class.forName("com.mysql.jdbc.Driver");
    		
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug","root","admin");
    		Statement stm = con.createStatement();
    			
    		String str = "SELECT * FROM products WHERE products_satus = 'new'";
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



<div class="max-w-7xl flex mx-auto py-6 my-12">
        <div class="bg-violet-700 p-2 h-10 rounded-md"></div>
        <div class="my-auto px-4 text-violet-700 font-bold text-xl">Most Popular</div>
    </div>
    
    
<!-- ---------------------------------------------------- -->
<div class="max-w-7xl mx-auto">
    <div class="grid grid-cols-1 md:grid-cols-5 gap-4">  
        <%
        
        try{
        	Class.forName("com.mysql.jdbc.Driver");
    		
    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/shoppy_bug","root","admin");
    		Statement stm = con.createStatement();
    			
    		String str = "SELECT * FROM products";
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



    


<%@include file="Screens/Components/footer.jsp" %>
</body>
</html>