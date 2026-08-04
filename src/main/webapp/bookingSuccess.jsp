<%@ page language="java" contentType="text/html;charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Booking Successful</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-green-100 flex justify-center items-center h-screen">

<div class="bg-white shadow-xl rounded-2xl p-10 text-center">

<h1 class="text-4xl text-green-600 font-bold">
✅ Booking Successful
</h1>

<p class="mt-4 text-lg">
<%=request.getAttribute("success")%>
</p>

<p class="mt-2 text-gray-600">
Your booking request has been sent to the organizer.
</p>

<p class="mt-2 font-semibold text-orange-600">
Current Status : Pending
</p>

<div class="mt-8 flex justify-center gap-5">

<a href="mybookings"
class="bg-purple-700 text-white px-6 py-3 rounded-lg">

My Bookings

</a>

<a href="customerdashboard"
class="bg-green-600 text-white px-6 py-3 rounded-lg">

Home

</a>

</div>

</div>

</body>
</html>