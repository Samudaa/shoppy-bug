<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>
	
	<div class="  min-h-screen py-40  " style="background-image:linear-gradient(115deg,#9F7AEA,#FEE2FE)">
        <!--log in container-->
        <div class=" container mx-auto ">
        <div class="flex w-8/12 rounded-xl   bg-white   mx-auto shadow-lg overflow-hidden">
            <!--img-->
             <div class="w-1/2 grid grid-cols-1""> 
              <div class="my-auto"><img src="img/ad_login.png" class=""></div></div>
             <!--form-->
             <div class="w-1/2 flex-col items-center justify-center p-12 bg-no-repeat bg-cover bg-grey-500"> 
                <h2 class="text-3xl mb-4">Admin Log in</h2>
                <p class="text-sm text-grey-700 pb-2"> Please enter your details.</p>
                <form action="admin_login_Servlet" method="post">
                    
                    <div class="mt-5">
                   <p class="mb-4">Email :</p>     <input type="text" placeholder="Email" class="border border-gray-400 py-1 px-2 w-full" name="ad_email">
                    </div>
                    <div class="mt-5">
                   <p class="mb-4">Password :</p> <input type="password" placeholder="Password" class="border border-gray-400 py-1 px-2 w-full" name="ad_password">
                    </div>
                     <br>
                     <br>
                    <div class="mt-5   ">
                        <button class=" mb-4 w-full bg-violet-700 py-4 rounded-x1 text-center text-white ">Log in</button>
                    </div>
                </form>
             </div>
        </div>
        </div>
    </div>
	
</body>
</html>