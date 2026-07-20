<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Beyond Celebrations - Login</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Cinzel:wght@600;700&family=Great+Vibes&family=Poppins:wght@300;400;500&display=swap" rel="stylesheet">

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body
class="min-h-screen flex flex-col bg-cover bg-center"
style="background-image: url('Images/Login.png');">

    <!-- Center Login Card -->
    <div class="flex-1 flex items-center justify-center">

        <div class="relative z-10 w-full max-w-md">

            <div class="bg-[#241827]/70 backdrop-blur-xl border border-yellow-500/30 rounded-3xl shadow-2xl px-8 py-8">

                <!-- Logo -->
                <div class="text-center">

                    <div class="w-20 h-20 rounded-full border border-yellow-400 flex items-center justify-center mx-auto">
                        <div class="text-yellow-300 text-2xl font-bold" style="font-family:Cinzel;">
                            BC
                        </div>
                    </div>

                    <h1 class="text-4xl text-white mt-4 tracking-wide"
                        style="font-family:Cinzel;">
                        Beyond Celebrations
                    </h1>

                    <p class="text-yellow-300 text-2xl"
                        style="font-family:'Great Vibes';">
                        More than events, we create experiences.
                    </p>

                    <p class="text-gray-300 text-sm leading-6 mt-4">
                        Because every celebration tells a story, we help you create
                        unforgettable moments through personalized planning,
                        elegant decor, customized catering and smart budget-friendly
                        recommendations.
                    </p>

                </div>

                <!-- Form -->
                <form action="login" method="POST" class="mt-7 space-y-4">

                    <div class="relative">
                        <i class="fa-regular fa-user absolute left-4 top-4 text-gray-300"></i>

                        <input type="email"
                               name="email"
                               placeholder="Email Address"
                               class="w-full bg-transparent border border-gray-500 rounded-lg py-3 pl-11 pr-4 text-white placeholder-gray-300 focus:outline-none focus:border-yellow-400">
                    </div>

                    <div class="relative">
                        <i class="fa-solid fa-lock absolute left-4 top-4 text-gray-300"></i>

                        <input type="password"
                               name="password"
                               placeholder="Password"
                               class="w-full bg-transparent border border-gray-500 rounded-lg py-3 pl-11 pr-10 text-white placeholder-gray-300 focus:outline-none focus:border-yellow-400">

                        <i class="fa-regular fa-eye absolute right-4 top-4 text-gray-300 cursor-pointer"></i>
                    </div>

                    <div class="text-right">
                        <a href="forgot.jsp" class="text-yellow-300 text-sm hover:underline">
                            Forgot Password?
                        </a>
                    </div>

                    <button
                        class="w-full py-3 rounded-lg bg-gradient-to-r from-purple-700 via-pink-500 to-orange-500 text-white font-semibold text-lg hover:scale-105 transition">
                       <a href="customerDashboard.jsp" class="text-black-300 hover:underline">
                        LOGIN
                    </button>

                    <div class="flex items-center my-4">
                        <hr class="flex-1 border-gray-500">
                        <span class="px-3 text-gray-300 text-sm">OR</span>
                        <hr class="flex-1 border-gray-500">
                    </div>

                    <p class="text-center text-white text-sm">
                        Don't have an account?
                        <a href="register.jsp" class="text-yellow-300 hover:underline">
                            Register Here
                        </a>
                    </p>

                </form>

            </div>

        </div>

    </div>

    <!-- Footer -->
<footer class="bg-[#1b0f1d]/95 backdrop-blur-md border-t border-yellow-500/20">

    <div class="max-w-7xl mx-auto px-8 py-12">

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10">

            <!-- Company -->
            <div>

                <div class="flex items-center mb-5">

                    <div class="w-16 h-16 rounded-full border-2 border-yellow-400 flex items-center justify-center">

                        <span class="text-yellow-300 text-2xl font-bold"
                              style="font-family:Cinzel;">
                            BC
                        </span>

                    </div>

                    <div class="ml-4">

                        <h2 class="text-white text-2xl"
                            style="font-family:Cinzel;">
                            Beyond Celebrations
                        </h2>

                        <p class="text-yellow-300"
                           style="font-family:'Great Vibes';">
                            Creating Memories Forever
                        </p>

                    </div>

                </div>

                <p class="text-gray-400 text-sm leading-7">
                    Beyond Celebrations is a premium event management
                    platform specializing in weddings, birthdays,
                    corporate events, anniversaries and customized
                    celebrations. We transform your dream events into
                    unforgettable memories with elegance and creativity.
                </p>

            </div>

            <!-- Office Address -->
            <div>

                <h3 class="text-yellow-300 text-xl font-semibold mb-5">
                    Our Office
                </h3>

                <div class="space-y-4 text-gray-300 text-sm">

                    <p>
                        <i class="fa-solid fa-location-dot text-yellow-400 mr-2"></i>
                        Bengaluru, Karnataka, India
                    </p>

                    <p>
                        <i class="fa-solid fa-phone text-yellow-400 mr-2"></i>
                        +91 98765 43210
                    </p>

                    <p>
                        <i class="fa-solid fa-envelope text-yellow-400 mr-2"></i>
                        info@beyondcelebrations.com
                    </p>

                </div>

            </div>

            <!-- Quick Links -->
            <div>

                <h3 class="text-yellow-300 text-xl font-semibold mb-5">
                    Quick Links
                </h3>

                <ul class="space-y-3 text-gray-300">

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Home
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            About Us
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Services
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Gallery
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Contact Us
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Privacy Policy
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Terms & Conditions
                        </a>
                    </li>

                </ul>

            </div>

            <!-- Working Hours -->
            <div>

                <h3 class="text-yellow-300 text-xl font-semibold mb-5">
                    Working Hours
                </h3>

                <div class="space-y-3 text-gray-300">

                    <p>
                        <strong class="text-white">
                            Monday - Saturday
                        </strong>
                    </p>

                    <p>
                        9:00 AM - 7:00 PM
                    </p>

                    <p>
                        <strong class="text-white">
                            Sunday
                        </strong>
                    </p>

                    <p>
                        Closed
                    </p>

                </div>

                <div class="mt-6">

                    <h4 class="text-yellow-300 font-semibold mb-2">
                        Follow Us
                    </h4>

                    <div class="flex space-x-4 text-xl">

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-facebook"></i>
                        </a>

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-instagram"></i>
                        </a>

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-x-twitter"></i>
                        </a>

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-linkedin"></i>
                        </a>

                    </div>

                </div>

            </div>

        </div>

        <!-- Bottom Footer -->

        <div class="border-t border-gray-700 mt-10 pt-6">

            <p class="text-center text-gray-400 text-sm">

                © 2026 <span class="text-yellow-300 font-semibold">
                    Beyond Celebrations
                </span>.
                All Rights Reserved.

            </p>

        </div>

    </div>

</footer>

</body>
</html>