<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>
    <div class="  min-h-screen py-40  " style="background-image:linear-gradient(115deg,#9F7AEA,#FEE2FE)">
        <!--log in container-->
        <div class=" container mx-auto ">
        <div class="flex w-8/12 rounded-xl   bg-white rounded-x1 mx-auto shadow-lg overflow-hidden">
            <!--img-->
             <div class="w-1/2 grid grid-cols-1""> 
              <div class="my-auto"><img src="img/login.png" class=""></div></div>
             <!--form-->
             <div class="w-1/2 flex-col items-center justify-center p-12 bg-no-repeat bg-cover bg-grey-500"> 
                <h2 class="text-3xl mb-4">Register</h2>
                <p class="text-sm text-grey-700 pb-2">Create your account. It's free and only take a minute.</p>
                <form action="customer_register_Servlet" method="post">
                    <p class="mb-4">Name :</p>
                    <div class="grid grid-cols-2 gap-5">
                      <input type="text" placeholder="First Name" class="border border-gray-400 py-1 px-2" name="fname">
                        <input type="text" placeholder="Second Name" class="border border-gray-400 py-1 px-2" name="lname">
                    </div>
                    <div class="mt-5">
                        <p class="mb-4">Email :</p>
                        <input type="text" placeholder="Email" class="border border-gray-400 py-1 px-2 w-full" name="email">
                    </div>
                    <div class="mt-5">
                        <p class="mb-4">Password :</p>
                        <input type="password" placeholder="Password" class="border border-gray-400 py-1 px-2 w-full" name="password">
                    </div>
                    <!--<div class="mt-5">
                        <p class="mb-4">Confirm Password :</p>
                        <input type="password" placeholder=" Confirm Password" class="border border-gray-400 py-1 px-2 w-full">
                    </div>-->
                    <div class="mt-5">
                        <p class="mb-4">Phone Number :</p>
                        <input type="text" placeholder="Phone Number" class="border border-gray-400 py-1 px-2 w-full" name="phonenumber">
                    </div>
                    <div class="mt-5">
                        <input type="checkbox" class="border border-gray-400"  >
                        <span>I accept the Terms of Use & Privact Policy</span>
                    </div>
                    <div class="mt-5">
                        <button class="w-full bg-violet-700 py-3 text-center text-white">Register Now</button>
                    </div>
                </form>
             </div>
        </div>
        </div>
    </div>
    
</body>
</html>