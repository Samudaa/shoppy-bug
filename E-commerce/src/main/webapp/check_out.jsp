<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
    <title>Checkout</title>
</head>
<body>
    <div class="bg-gray-100 dark:bg-violet-150">
        <div class="w-full max-w-3xl mx-auto p-8">
            <div class="bg-white dark:bg-white-800 p-8 rounded-lg shadow-md border dark:border-gray-700">
                <h1 class="text-2xl font-bold text-gray-800 dark:text-black mb-4">Checkout</h1>
    
                <form id="myForm" onsubmit="return validateForm()" target="check_out_Servlet" method="post">
                <div class="mb-6">
                    <h2 class="text-xl font-semibold text--700 dark:text-black mb-2">Shipping Details</h2>
                    
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <label for="first_name" class="block text-gray-700 dark:text-black mb-1">First Name</label>
                            <input type="text" required name="first_name" id="first_name" class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                        </div>
                        <div>
                            <label for="last_name" class="block text-gray-700 dark:text-black mb-1">Last Name</label>
                            <input type="text" required name="last_name" id="last_name" class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                        </div>
                    </div>
                    <div class="mt-4">
                        <label for="address" class="block text-gray-700 dark:text-black mb-1">E-mail</label>
                        <input type="text" required name="email" id="email" class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                    </div>
    
                    <div class="mt-4">
                        <label for="address" class="block text-gray-700 dark:text-black mb-1">Address</label>
                        <input type="text" required name="address" id="address" class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                    </div>
    
                    <div class="mt-4">
                        <label for="city" class="block text-gray-700 dark:text-black mb-1">City</label>
                        <input type="text" required name="city" id="city" class="w-full rounded-lg border py-2 px-3 dark:bg-white-700 dark:text-black dark:border">
                    </div>
    
                    <div class="grid grid-cols-2 gap-4 mt-4">
                        <div>
                            <label for="state" class="block text-gray-700 dark:text-black mb-1">State</label>
                            <input type="text" required name="state" id="state"  class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                        </div>
                        <div>
                            <label for="zip" class="block text-gray-700 dark:text-black mb-1">ZIP Code</label>
                            <input type="text" required name="zip" id="zip" class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                        </div>
                        <div>
                            <label for="zip" class="block text-gray-700 dark:text-black mb-1">Amount</label>
                            <input type="text" required name="total" id="total" value="LKR. " class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                        </div>
                       <div class="">
                       <label for="zip" class="block text-gray-700 dark:text-black mb-1">Date</label>
                            <input type="date" required id="dateInput" name="dateInput" value="<%= java.time.LocalDate.now() %>" class="w-full rounded-lg border py-2 px-3 dark:bg-white dark:text-black dark:border">
                        </div> 
                        <div class="col-span-2">
                            <input type="submit" value="Pay now" class="w-full rounded-lg border py-2 px-3 bg-violet-700 text-white border" id="paynow">
                        </div>
                    </div>
                </div>
                
    </form>
                <!-- Payment Information -->
            
				<div id="hidePaypal">
                <div id="paypal-button-container" style="max-width:full;" class="formbold-btn-paypal"></div>
                </div>
            </div>
        </div>
    </div>
    
    
    <script type="text/javascript">
    
    var hide = document.getElementById("hidePaypal");
    hide.style.display = "none";
    
    
    	function validateForm() {
            var name = document.getElementById("first_name").value;
            var email = document.getElementById("last_name").value;
            var email = document.getElementById("email").value;
            var name = document.getElementById("address").value;
            var email = document.getElementById("city").value;
            var name = document.getElementById("state").value;
            var email = document.getElementById("zip").value;


            if (first_name === '' || last_name === ''|| email=== '' || address === '' || city === '' || state === '' || zip === '' || total=== '') {
               
                document.getElementById("hidePaypal").style.display = "none";
                alert("Please fill out all fields!");
                return false; 
            } else {
                
                document.getElementById("hidePaypal").style.display = "block";
                document.getElementById("paynow").style.display = "none";
                return false; 
            }
        }
    
    </script>
    



    <script src="https://www.paypal.com/sdk/js?client-id=AV701bFdpEKpiRGRhDeGiodFuUMgs7CMpBmnnYqfu47pG_Q5zGpz4B2PyrUqZOEWD08yfKn4OxcBPSJF"></script>


<script src="https://www.paypal.com/sdk/js?client-id=AV701bFdpEKpiRGRhDeGiodFuUMgs7CMpBmnnYqfu47pG_Q5zGpz4B2PyrUqZOEWD08yfKn4OxcBPSJF"></script>
    
    
       
       <script>
  paypal.Buttons({
  style: {
	color:'gold',
	
    
  },
  createOrder:function(data,actions){
	  return actions.order.create({
		  purchase_units:[{
			  amount:{
				  value:'350.00'
			  } 
		  }]
	  });
  },
  onApprove:function(data,actions){
	  return actions.order.capture().then(function(details){
		  console.log(details)
		  window.location.replace("index.jsp")
		  })
  },
  onCancel:function(data){
	  window.location.replace("check_out.jsp")
  }
}).render('#paypal-button-container');
</script>
</body>
</html>