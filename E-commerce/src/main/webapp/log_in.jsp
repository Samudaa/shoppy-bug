<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>
    <div class="  min-h-screen py-40  " style="background-image:linear-gradient(115deg,#9F7AEA,#FEE2FE)">
        <!--log in container-->
        <div class=" container mx-auto ">
        <div class="flex w-8/12 rounded-xl   bg-white   mx-auto shadow-lg overflow-hidden">
            <!--img-->
             <div class="w-1/2 grid grid-cols-1""> 
              <div class="my-auto"><img src="img/login.png" class=""></div></div>
             <!--form-->
             <div class="w-1/2 flex-col items-center justify-center p-12 bg-no-repeat bg-cover bg-grey-500"> 
                <h2 class="text-3xl mb-4">Log in</h2>
                <p class="text-sm text-grey-700 pb-2"> Welcome back please enter your details.</p>
                <form action="customer_login_Servlet" method="post">
                    
                    <div class="mt-5">
                   <p class="mb-4">Email :</p>     <input type="text" placeholder="Email" class="border border-gray-400 py-1 px-2 w-full" name="email">
                    </div>
                    <div class="mt-5">
                   <p class="mb-4">Password :</p> <input type="password" placeholder="Password" class="border border-gray-400 py-1 px-2 w-full" name="password">
                    </div>
                     <br>
                     <br>
                    <div class="mt-5   ">
                        <button class=" mb-4 w-full bg-violet-700 py-4 rounded-x1 text-center text-white ">Log in</button>
                    </div>
                    <a href="" class="mt-5 text-xs py-4 text-cyan-500">forgot your password?</a>
                    <div class="grid grid-cols-2">
                    <p class="mt-4 text-xs  py-2 ">If you don't have an account, Click </p>
                    <a href="register.jsp" class=" mt-4 text-xs py-2 text-cyan-500">Register</a>
                </div>
                <a href="admin_login.jsp" target="blank" class=" mt-4 text-xs py-2 text-cyan-500">Admin Login</a>
                </form>
             </div>
        </div>
        </div>
    </div>
    
</body>
</html>