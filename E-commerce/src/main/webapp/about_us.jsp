<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,typography,aspect-ratio,line-clamp,container-queries"></script>
</head>
<body>

<%@include file="Screens/Components/header.jsp" %>    

    <div class="2xl:container 2xl:mx-auto lg:py-16 lg:px-20 md:py-12 md:px-6 py-9 px-4">
        <p class="font-semibold text-5xl leading-3 text-black  mt-5 mb-12 pb-2 text-center">About Us</p>
        <div class="flex lg:flex-row flex-col lg:gap-8 sm:gap-10 gap-12">
            <div class="w-full lg:w-6/12">
                <h2 class="w-full font-bold lg:text-4xl text-3xl lg:leading-10 dark:text-black leading-9">We are here to make <br>great design accessible<br> and delightfull <br>for everyone</h2>
                <p class="font-normal text-base leading-6 text-gray-600 dark:text-gray-700 mt-6">It is a long established fact that a reader will be distracted by <br>the readable content of a page when looking at its layout. The<br> point of using Lorem Ipsum.In the first place we have granted<br> to God, and by this our present charter confirmed for us and <br> our heirs forever that the English Church shall<br> be free, and shall have her rights entire,</p>
            </div>
            <div class="w-full lg:w-6/12">
                <img class="lg:block hidden w-full" src="https://i.ibb.co/RjNH7QB/Rectangle-122-1.png" alt="people discussing on board" />
                <img class="lg:hidden sm:block hidden w-full" src="https://i.ibb.co/16fPqrg/Rectangle-122-2.png" alt="people discussing on board" />
                <img class="sm:hidden block w-full" src="https://i.ibb.co/Jxhpxh6/Rectangle-122.png" alt="people discussing on board" />
            </div>
        </div>

        <div class="relative mt-24">
            <div class="grid sm:grid-cols-3 grid-cols-2 sm:gap-8 gap-4">
                <div class="z-20 w-12 h-12 bg-gray-800 rounded-full flex justify-center items-center animate-pulse">
                    <img class="" src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg1.svg" alt="flag" />
                </div>

              <img class="z-20 animate-pulse" src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg2.svg" alt="note" />

               <img class="z-20 sm:block hidden animate-pulse" src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg3.svg" alt="users" />
            </div>
            <hr class="z-10 absolute top-2/4 w-full bg-gray-700" />
        </div>
        <div class="grid sm:grid-cols-3 grid-cols-2 sm:gap-8 gap-4">
            <div>
                <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-black mt-6">Founded</p>
                <p class="font-normal text-base leading-6 text-gray-700 dark:text-gray-700 mt-6">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
            <div>
                <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-black mt-6">50M montly enrichments</p>
                <p class="font-normal text-base leading-6 text-gray-700 dark:text-gray-700 mt-6">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
            <div class="sm:block hidden">
                <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-black mt-6">400k User</p>
                <p class="font-normal text-base leading-6 text-gray-700 dark:text-gray-700 mt-6">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
        </div>
        <div class="sm:hidden block relative mt-8">
            <div class="grid sm:grid-cols-3 grid-cols-2 sm:gap-8 gap-4">
               <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg3.svg" alt="user" />
            </div>
            <hr class="z-10 absolute top-2/4 w-full bg-gray-200" />
        </div>
        <div class="sm:hidden grid sm:grid-cols-3 grid-cols-2 sm:gap-8 gap-4">
            <div>
                <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-white mt-6">400k User</p>
                <p class="font-normal text-base leading-6 text-gray-600 dark:text-gray-700 mt-6">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
            </div>
        </div>

        <div class="flex lg:flex-row flex-col md:gap-14 gap-16 justify-between lg:mt-20 mt-16">
            <div class="w-full lg:w-6/12">
                <h2 class="font-bold lg:text-4xl text-3xl lg:leading-9 leading-7 text-gray-800 dark:text-black">Our Mission</h2>
                <p class="font-normal text-base leading-6 text-gray-600 dark:text-gray-700 mt-6 w-full lg:w-10/12 xl:w-9/12">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from</p>
                <p class="font-normal text-base leading-6 text-gray-600 dark:text-gray-700 w-full lg:w-10/12 xl:w-9/12 mt-10">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum.In the first place we have granted to God, and by this our present charter confirmed for us and our heirs forever that the English Church shall be free, and shall have her rights entire, and her liberties inviolate; and we will that it be thus observed; which is apparent from</p>
            </div>
            <div class="w-full lg:w-6/12">
                <div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-1 lg:gap-12 gap-10">
                    <!-- Team Card -->
                    <div class="flex p-4 shadow-md shadow-violet-500/50">
                        <div class="mr-6">
                           <img class="mr-6"  src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg4.svg" alt="team card" />
                        </div>
                        <div class="">
                            <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-black">Team</p>
                            <p class="mt-2 font-normal text-base leading-6 text-gray-600 dark:text-gray-700">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        </div>
                    </div>

                    <!-- Board Card -->
                    <div class="flex p-4 shadow-md shadow-violet-500/50">
                        <div class="mr-6">
                           <img class="" src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg5.svg" alt="board card" />
                        </div>
                        <div class="">
                            <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-black">Board</p>
                            <p class="mt-2 font-normal text-base leading-6 text-gray-600 dark:text-gray-700">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        </div>
                    </div>

                    <!-- Press Card -->
                    <div class="flex p-4 shadow-md shadow-violet-500/50">
                        <div class="mr-6">
                           <img src="https://tuk-cdn.s3.amazonaws.com/can-uploader/about-us-3-svg6.svg" alt="press card" />
                        </div>
                        <div class="">
                            <p class="font-semibold lg:text-2xl text-xl lg:leading-6 leading-5 text-gray-800 dark:text-black">Press</p>
                            <p class="mt-2 font-normal text-base leading-6 text-gray-600 dark:text-gray-700">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<%@include file="Screens/Components/footer.jsp" %>
</body>
</html>