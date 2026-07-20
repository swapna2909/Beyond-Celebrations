<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

<body class="min-h-screen flex flex-col bg-cover bg-center"
style="background-image: url('Images/Login.png');">

<div class="flex-1 flex items-center justify-center">

<div class="relative z-10 w-full max-w-md">

<div class="bg-[#241827]/70 backdrop-blur-xl border border-yellow-500/30 rounded-3xl shadow-2xl px-8 py-8">


<!-- Logo & Brand -->

<div class="text-center">

    <div class="w-20 h-20 rounded-full border border-yellow-400 flex items-center justify-center mx-auto">

        <span class="text-yellow-300 text-3xl font-bold"
              style="font-family:Cinzel;">
            BC
        </span>

    </div>

    <h1 class="text-4xl text-white mt-5 tracking-wide"
        style="font-family:Cinzel;">
        Beyond Celebrations
    </h1>

    <p class="text-yellow-300 text-2xl mt-2"
       style="font-family:'Great Vibes';">
        More than events, we create experiences
    </p>

    <p class="text-gray-300 text-sm leading-7 mt-5 px-2">

        <span class="text-yellow-300 font-semibold">
        Beyond Celebrations</span> transforms your special moments into unforgettable experiences with personalized planning, elegant decor, and seamless event management. Every celebration is thoughtfully crafted to create memories that last a lifetime.
    </p>

</div>


<%
String error = (String)request.getAttribute("error");
if(error != null){
%>

<div class="bg-red-100 text-red-700 rounded-lg p-3 mt-5 text-center">
<%= error %>
</div>

<%
}
%>

<form action="login" method="post" class="mt-7 space-y-4">

<div class="relative">

<i class="fa-regular fa-user absolute left-4 top-4 text-gray-300"></i>

<input
type="email"
name="email"
placeholder="Email Address"
required
class="w-full bg-transparent border border-gray-500 rounded-lg py-3 pl-11 pr-4 text-white placeholder-gray-300 focus:outline-none focus:border-yellow-400">

</div>

<div class="relative">

<i class="fa-solid fa-lock absolute left-4 top-4 text-gray-300"></i>

<input
type="password"
name="password"
placeholder="Password"
required
class="w-full bg-transparent border border-gray-500 rounded-lg py-3 pl-11 pr-10 text-white placeholder-gray-300 focus:outline-none focus:border-yellow-400">

</div>

<div class="text-right">

<a href="forgot.jsp"
class="text-yellow-300 text-sm hover:underline">

Forgot Password?

</a>

</div>

<!-- Correct Login Button -->

<button
type="submit"
class="w-full py-3 rounded-lg bg-gradient-to-r from-purple-700 via-pink-500 to-orange-500 text-white font-semibold text-lg hover:scale-105 transition">

LOGIN

</button>

<div class="flex items-center my-4">

<hr class="flex-1 border-gray-500">

<span class="px-3 text-gray-300 text-sm">OR</span>

<hr class="flex-1 border-gray-500">

</div>

<p class="text-center text-white text-sm">

Don't have an account?

<a href="register.jsp"
class="text-yellow-300 hover:underline">

Register Here

</a>

</p>

</form>

</div>

</div>

</div>

</div>
</body>

</html>