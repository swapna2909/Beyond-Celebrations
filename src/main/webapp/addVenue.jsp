<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Venue</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

<div class="flex justify-center items-center min-h-screen">

<div class="bg-white shadow-xl rounded-xl w-full max-w-2xl p-8">

<h2 class="text-3xl font-bold text-center text-indigo-700 mb-8">
Add Venue
</h2>

<form action="AddVenueServlet" method="post">

<div class="mb-5">
<label class="block font-semibold mb-2">Venue Name</label>
<input type="text"
name="venueName"
class="w-full border rounded-lg p-3"
required>
</div>

<div class="mb-5">
<label class="block font-semibold mb-2">Location</label>
<input type="text"
name="location"
class="w-full border rounded-lg p-3"
required>
</div>

<div class="mb-5">
<label class="block font-semibold mb-2">Capacity</label>
<input type="number"
name="capacity"
class="w-full border rounded-lg p-3"
required>
</div>

<div class="mb-5">
<label class="block font-semibold mb-2">Price</label>
<input type="number"
step="0.01"
name="price"
class="w-full border rounded-lg p-3"
required>
</div>

<div class="mb-5">
<label class="block font-semibold mb-2">Availability</label>

<select name="availability"
class="w-full border rounded-lg p-3">

<option value="Available">Available</option>
<option value="Unavailable">Unavailable</option>

</select>

</div>

<div class="text-center">

<button
class="bg-indigo-600 text-white px-8 py-3 rounded-lg hover:bg-indigo-800">

Add Venue

</button>

</div>

</form>

</div>

</div>

</body>
</html>