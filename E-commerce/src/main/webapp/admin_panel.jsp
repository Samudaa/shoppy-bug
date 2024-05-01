<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>


<link href="https://fonts.googleapis.com/css?family=Material+Icons|Material+Icons+Outlined|Material+Icons+Two+Tone|Material+Icons+Round|Material+Icons+Sharp" rel="stylesheet" />

<div class="bg-violet-100 min-h-screen">
  <div class="fixed bg-white text-blue-800 px-10 py-1 z-10 w-full">
      <div class="flex items-center justify-between py-2 text-5x1">
        <div class="font-bold text-blue-900 text-xl">Admin<span class="text-violet-600">Panel</span></div>
        <div class="flex items-center text-gray-500">
          <!--  <span class="material-icons-outlined p-2" style="font-size: 30px">search</span>
          <span class="material-icons-outlined p-2" style="font-size: 30px">notifications</span>
          <div class="bg-center bg-cover bg-no-repeat rounded-full inline-block h-12 w-12 ml-2" style="background-image: url(https://i.pinimg.com/564x/de/0f/3d/de0f3d06d2c6dbf29a888cf78e4c0323.jpg)"></div>-->
        </div>
    </div>
  </div>
  
  <div class="flex flex-row pt-24 px-10 pb-4">
    <div class="w-2/12 mr-6">
      <div class="bg-white rounded-xl shadow-lg mb-6 px-6 py-4">
        <a href="index.jsp" class="inline-block text-gray-600 hover:text-black my-4 w-full">
          <span class="material-icons-outlined float-left pr-2">dashboard</span>
          Home
          <span class="material-icons-outlined float-right">keyboard_arrow_right</span>
        </a>
        <a href="index.jsp" class="inline-block text-gray-600 hover:text-black my-4 w-full">
          <span class="material-icons-outlined float-left pr-2">tune</span>
          Some menu item
          <span class="material-icons-outlined float-right">keyboard_arrow_right</span>
        </a>
       </div>

       
    </div>
    
    <div class="w-10/12">
      <div class="flex flex-row">
        <div class="bg-no-repeat bg-violet-400 border border-red-300 rounded-xl w-7/12 mr-2 p-6" style="background-image: url(https://previews.dropbox.com/p/thumb/AAvyFru8elv-S19NMGkQcztLLpDd6Y6VVVMqKhwISfNEpqV59iR5sJaPD4VTrz8ExV7WU9ryYPIUW8Gk2JmEm03OLBE2zAeQ3i7sjFx80O-7skVlsmlm0qRT0n7z9t07jU_E9KafA9l4rz68MsaZPazbDKBdcvEEEQPPc3TmZDsIhes1U-Z0YsH0uc2RSqEb0b83A1GNRo86e-8TbEoNqyX0gxBG-14Tawn0sZWLo5Iv96X-x10kVauME-Mc9HGS5G4h_26P2oHhiZ3SEgj6jW0KlEnsh2H_yTego0grbhdcN1Yjd_rLpyHUt5XhXHJwoqyJ_ylwvZD9-dRLgi_fM_7j/p.png?fv_content=true&size_mode=5); background-position: 90% center;">
          <p class="text-5xl text-indigo-900">Welcome <br><strong>Shoppy bug</strong></p>
          <span class="bg-violet-600 text-xl text-white inline-block rounded-full mt-12 px-8 py-2"><strong>01:51</strong></span>
        </div>

        <div class="bg-no-repeat bg-violet-400 border border-orange-300 rounded-xl w-5/12 ml-2 p-6" style="background-image: url(https://previews.dropbox.com/p/thumb/AAuwpqWfUgs9aC5lRoM_f-yi7OPV4txbpW1makBEj5l21sDbEGYsrC9sb6bwUFXTSsekeka5xb7_IHCdyM4p9XCUaoUjpaTSlKK99S_k4L5PIspjqKkiWoaUYiAeQIdnaUvZJlgAGVUEJoy-1PA9i6Jj0GHQTrF_h9MVEnCyPQ-kg4_p7kZ8Yk0TMTL7XDx4jGJFkz75geOdOklKT3GqY9U9JtxxvRRyo1Un8hOObbWQBS1eYE-MowAI5rNqHCE_e-44yXKY6AKJocLPXz_U4xp87K4mVGehFKC6dgk_i5Ur7gspuD7gRBDvd0sanJ9Ybr_6s2hZhrpad-2WFwWqSNkh/p.png?fv_content=true&size_mode=5); background-position: 100% 40%;">
          <p class="text-5xl text-indigo-900">Inbox <br><strong>23</strong></p>
          <a href="" class="bg-violet-600 text-xl text-white underline hover:no-underline inline-block rounded-full mt-12 px-8 py-2"><strong>See messages</strong></a>
        </div>
      </div>
      <div class="flex flex-col mt-6 gap-6">
      
      <!--  -->
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
        <h2 class="font-semibold text-lg text-violet-600">Add a product</h2>
        <div class="py-4">
        <form method="post" action="add_product_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Product Id (Not necessary)" class="w-full rounded-lg" name="p_id"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Name" class="w-full rounded-lg" name="p_name"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Price" class="w-full rounded-lg" name="p_price"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Type" class="w-full rounded-lg" name="p_type"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Availability" class="w-full rounded-lg" name="p_avail"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Status" class="w-full rounded-lg" name="p_status"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Image" class="w-full rounded-lg" name="p_img"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
        
        <!--  -->
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Update a product</h2>
        <div class="py-4">
        <form method="post" action="update_product_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Product Id" class="w-full rounded-lg" name="p_id"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Name" class="w-full rounded-lg" name="p_name"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Price" class="w-full rounded-lg" name="p_price"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Tyoe" class="w-full rounded-lg" name="p_type"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Availability" class="w-full rounded-lg" name="p_avail"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Status" class="w-full rounded-lg" name="p_status"></li>
    <li class="pb-2"> <input type="text" placeholder="Product Image" class="w-full rounded-lg" name="p_img"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
        <!--  -->
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Remove a product</h2>
        <div class="py-4">
        <form method="post" action="remove_product_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Product Id" class="w-full rounded-lg" name="p_id"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        <!-- Done -->
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Add a customer</h2>
        <div class="py-4">
        <form method="post" action="add_customer_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Customer email" class="w-full rounded-lg" name="c_email"></li>
    <li class="pb-2"> <input type="text" placeholder="Customer first name" class="w-full rounded-lg" name="c_fname"></li>
    <li class="pb-2"> <input type="text" placeholder="Customer last name" class="w-full rounded-lg" name="c_lname"></li>
    <li class="pb-2"> <input type="text" placeholder="Customer phone number" class="w-full rounded-lg" name="c_mobile"></li>
    <li class="pb-2"> <input type="text" placeholder="Customer password" class="w-full rounded-lg" name="c_pass"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
      <!-- Done -->  
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Remove a customer</h2>
        <div class="py-4">
        <form method="post" action="remove_customer_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Customer email" class="w-full rounded-lg" name="c_email"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
      <!-- Done -->  
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Add an admin</h2>
        <div class="py-4">
        <form method="post" action="add_admin_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Admin email" class="w-full rounded-lg" name="ad_email"></li>
    <li class="pb-2"> <input type="text" placeholder="Admin name" class="w-full rounded-lg" name="ad_name"></li>
    <li class="pb-2"> <input type="text" placeholder="Admin phone number" class="w-full rounded-lg" name="ad_mobile"></li>
    <li class="pb-2"> <input type="text" placeholder="Admin password" class="w-full rounded-lg" name="ad_pass"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
    <!--  -->    
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Update an admin</h2>
        <div class="py-4">
        <form method="post" action="">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Admin email" class="w-full rounded-lg" name="ad_email"></li>
    <li class="pb-2"> <input type="text" placeholder="Admin name" class="w-full rounded-lg" name="ad_name"></li>
    <li class="pb-2"> <input type="text" placeholder="Admin phone number" class="w-full rounded-lg" name="ad_mobile"></li>
    <li class="pb-2"> <input type="text" placeholder="Admin password" class="w-full rounded-lg" name="ad_pass"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
    <!-- Done -->    
        <div class="bg-white rounded-xl shadow-lg px-6 py-4 w-full">
          <h2 class="font-semibold text-lg text-violet-600">Remove an admin</h2>
        <div class="py-4">
        <form method="post" action="remove_admin_Servlet">
     
        <ul class="pb-2">
    <li class="pb-2"> <input type="text" placeholder="Admin Id" class="w-full rounded-lg" name="ad_id"></li>
    <li class="pb-2 pt-2 "> <input type="submit"  class="w-1/4 rounded-lg bg-violet-600 py-2 text-white"> 
  </ul>

        </form>
        </div>
        </div>
        
      </div>
    </div>
  </div>
</div>
</body>
</html>