<%@ page import="com.dao.impl.Venue_impl"%>
<%@ page import="com.dto.Venue"%>

<%
Integer id = Integer.parseInt(request.getParameter("id"));

Venue_impl dao = new Venue_impl();

Venue v = dao.findById(id);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Venue</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

<div class="flex justify-center items-center min-h-screen">

<div class="bg-white shadow-xl rounded-xl w-full max-w-2xl p-8">

<h2 class="text-3xl font-bold text-center text-indigo-700 mb-8">
Update Venue
</h2>

<form action="UpdateVenueServlet" method="post">

<input type="hidden"
name="venueId"
value="<%=v.getVenue_id()%>">

<div class="mb-5">

<label class="block font-semibold mb-2">
Venue Name
</label>

<input
type="text"
name="venueName"
value="<%=v.getVenue_name()%>"
class="w-full border rounded-lg p-3"
required>

</div>

<div class="mb-5">

<label class="block font-semibold mb-2">
Location
</label>

<input
type="text"
name="location"
value="<%=v.getLocation()%>"
class="w-full border rounded-lg p-3"
required>

</div>

<div class="mb-5">

<label class="block font-semibold mb-2">
Capacity
</label>

<input
type="number"
name="capacity"
value="<%=v.getCapacity()%>"
class="w-full border rounded-lg p-3"
required>

</div>

<div class="mb-5">

<label class="block font-semibold mb-2">
Price
</label>

<input
type="number"
step="0.01"
name="price"
value="<%=v.getPrice()%>"
class="w-full border rounded-lg p-3"
required>

</div>

<div class="mb-5">

<label class="block font-semibold mb-2">
Availability
</label>

<select
name="availability"
class="w-full border rounded-lg p-3">

<option value="Available"
<%=v.getAvailability().equals("Available")?"selected":""%>>
Available
</option>

<option value="Unavailable"
<%=v.getAvailability().equals("Unavailable")?"selected":""%>>
Unavailable
</option>

</select>

</div>

<div class="text-center">

<button
class="bg-indigo-600 text-white px-8 py-3 rounded-lg hover:bg-indigo-800">

Update Venue

</button>

</div>

</form>

</div>

</div>

</body>
</html>