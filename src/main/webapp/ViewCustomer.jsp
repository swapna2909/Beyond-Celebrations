<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Customers | Beyond Celebrations</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"/>

<style>
body{
    background:#f8fafc;
    font-family:Poppins,sans-serif;
}
</style>

</head>

<body>

<!-- Navbar -->

<nav class="bg-slate-900 shadow-lg">
<div class="max-w-7xl mx-auto px-8 py-5 flex justify-between items-center">

<h1 class="text-3xl font-bold text-white">
🎉 Beyond Celebrations
</h1>

<a href="AdminDashboard.jsp"
class="bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded-lg">
<i class="fa-solid fa-arrow-left"></i>
Dashboard
</a>

</div>
</nav>


<!-- Heading -->

<div class="max-w-7xl mx-auto mt-10">

<h2 class="text-4xl font-bold text-slate-800 mb-2">
View Customers
</h2>

<p class="text-gray-600 mb-8">
Below is the list of registered customers.
</p>


<!-- Search Box -->

<div class="flex justify-between mb-6">

<input
type="text"
placeholder="Search Customer..."
class="border border-gray-300 rounded-lg px-4 py-2 w-80 focus:outline-none focus:ring-2 focus:ring-blue-500">

<button
class="bg-blue-600 hover:bg-blue-700 text-white px-5 py-2 rounded-lg">

<i class="fa-solid fa-magnifying-glass"></i>
Search

</button>

</div>


<!-- Customer Table -->

<div class="overflow-x-auto bg-white rounded-xl shadow-lg">

<table class="w-full">

<thead class="bg-slate-800 text-white">

<tr>

<th class="py-4 px-4">Customer ID</th>

<th class="py-4 px-4">Name</th>

<th class="py-4 px-4">Email</th>

<th class="py-4 px-4">Phone</th>

<th class="py-4 px-4">City</th>

<th class="py-4 px-4">Status</th>

</tr>

</thead>

<tbody class="text-center">

<tr class="border-b hover:bg-gray-100">

<td class="py-4">101</td>

<td>Rahul Kumar</td>

<td>rahul@gmail.com</td>

<td>9876543210</td>

<td>Hyderabad</td>

<td>
<span class="bg-green-500 text-white px-3 py-1 rounded-full text-sm">
Active
</span>
</td>

</tr>

<tr class="border-b hover:bg-gray-100">

<td class="py-4">102</td>

<td>Priya Sharma</td>

<td>priya@gmail.com</td>

<td>9876501234</td>

<td>Bangalore</td>

<td>
<span class="bg-green-500 text-white px-3 py-1 rounded-full text-sm">
Active
</span>
</td>

</tr>

<tr class="border-b hover:bg-gray-100">

<td class="py-4">103</td>

<td>Arjun Reddy</td>

<td>arjun@gmail.com</td>

<td>9123456780</td>

<td>Chennai</td>

<td>
<span class="bg-red-500 text-white px-3 py-1 rounded-full text-sm">
Inactive
</span>
</td>

</tr>

<tr class="hover:bg-gray-100">

<td class="py-4">104</td>

<td>Neha Singh</td>

<td>neha@gmail.com</td>

<td>9988776655</td>

<td>Pune</td>

<td>
<span class="bg-green-500 text-white px-3 py-1 rounded-full text-sm">
Active
</span>
</td>

</tr>

</tbody>

</table>

</div>

</div>


<!-- Footer -->

<footer class="bg-slate-900 text-white text-center py-5 mt-12">

© 2026 Beyond Celebrations | Admin Panel

</footer>

</body>
</html>