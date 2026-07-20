<%@page import="java.util.List"%>
<%@page import="com.dto.Venue"%>

<%
List<Venue> list = (List<Venue>)request.getAttribute("list");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>View Venues</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

<div class="container mx-auto mt-10">

<h1 class="text-4xl font-bold text-center text-indigo-700 mb-8">
Venue Details
</h1>

<div class="overflow-x-auto">

<table class="table-auto w-full bg-white shadow-lg rounded-lg">

<thead class="bg-indigo-700 text-white">

<tr>

<th class="p-3">Venue ID</th>

<th class="p-3">Venue Name</th>

<th class="p-3">Location</th>

<th class="p-3">Capacity</th>

<th class="p-3">Price</th>

<th class="p-3">Availability</th>

<th class="p-3">Update</th>

<th class="p-3">Delete</th>

</tr>

</thead>

<tbody>

<%
if(list!=null && !list.isEmpty()){

for(Venue v:list){
%>

<tr class="border-b text-center hover:bg-gray-100">

<td class="p-3"><%=v.getVenue_id()%></td>

<td class="p-3"><%=v.getVenue_name()%></td>

<td class="p-3"><%=v.getLocation()%></td>

<td class="p-3"><%=v.getCapacity()%></td>

<td class="p-3"><%=v.getPrice()%></td>

<td class="p-3"><%=v.getAvailability()%></td>

<td class="p-3">

<a href="updateVenue.jsp?id=<%=v.getVenue_id()%>"
class="bg-yellow-500 text-white px-4 py-2 rounded hover:bg-yellow-600">

Update

</a>

</td>

<td class="p-3">

<a href="DeleteVenueServlet?id=<%=v.getVenue_id()%>"
onclick="return confirm('Are you sure you want to delete this venue?');"
class="bg-red-600 text-white px-4 py-2 rounded hover:bg-red-700">

Delete

</a>

</td>

</tr>

<%
}
}
else{
%>

<tr>

<td colspan="8" class="text-center text-red-600 p-5">

No Venue Records Found

</td>

</tr>

<%
}
%>

</tbody>

</table>

</div>

</div>

</body>
</html>