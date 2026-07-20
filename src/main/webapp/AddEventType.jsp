<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.dto.Event_Category"%>
<%@ page import="com.dao.impl.Event_Category_impl"%>

<%
Event_Category_impl dao = new Event_Category_impl();
List<Event_Category> list = dao.findAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event Type</title>

<script src="https://cdn.tailwindcss.com"></script>

<style>
body{
background-image:url('https://images.unsplash.com/photo-1511795409834-ef04bbd61622?auto=format&fit=crop&w=1600&q=80');
background-size:cover;
background-position:center;
background-repeat:no-repeat;
font-family:'Poppins',sans-serif;
}
</style>

</head>

<body class="min-h-screen flex justify-center items-center">

<div class="absolute inset-0 bg-black/40"></div>

<div class="relative w-full max-w-2xl bg-white/90 backdrop-blur-md rounded-3xl shadow-2xl p-10">

<h1 class="text-4xl font-bold text-center text-indigo-700">
Add Event Type
</h1>

<p class="text-center text-gray-600 mb-8">
Create new event type under a category
</p>

<%
String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>

<div class="mb-5 bg-green-100 border border-green-500 text-green-700 rounded-lg p-3 text-center">
<%=msg%>
</div>

<%
}
%>

<form action="AddEventTypeServlet" method="post">

<div class="mb-5">

<label class="font-semibold block mb-2">
Select Category
</label>

<select
name="category_id"
required
class="w-full border rounded-xl px-4 py-3">

<option value="">Choose Category</option>

<%
for(Event_Category ec:list){
%>

<option value="<%=ec.getCategory_id()%>">
<%=ec.getCategory_name()%>
</option>

<%
}
%>

</select>

</div>

<div class="mb-5">

<label class="font-semibold block mb-2">
Event Name
</label>

<input
type="text"
name="event_name"
required
placeholder="Wedding, Birthday..."
class="w-full border rounded-xl px-4 py-3">

</div>

<div class="mb-5">

<label class="font-semibold block mb-2">
Description
</label>

<textarea
name="description"
rows="4"
required
class="w-full border rounded-xl px-4 py-3"></textarea>

</div>

<div class="grid grid-cols-2 gap-5">

<div>

<label class="font-semibold block mb-2">
Minimum Budget
</label>

<input
type="number"
step="0.01"
name="min_budget"
required
class="w-full border rounded-xl px-4 py-3">

</div>

<div>

<label class="font-semibold block mb-2">
Maximum Budget
</label>

<input
type="number"
step="0.01"
name="max_budget"
required
class="w-full border rounded-xl px-4 py-3">

</div>

</div>

<div class="flex justify-between mt-8">

<button
type="reset"
class="bg-red-500 hover:bg-red-600 text-white px-8 py-3 rounded-xl">

Clear

</button>

<button
type="submit"
class="bg-indigo-600 hover:bg-indigo-700 text-white px-8 py-3 rounded-xl">

Add Event Type

</button>

</div>

</form>

</div>

</body>
</html>