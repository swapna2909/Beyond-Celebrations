<%@page import="java.util.List"%>
<%@page import="com.dto.Event_Category"%>

<%
List<Event_Category> categoryList =
(List<Event_Category>)request.getAttribute("categoryList");

Event_Category ec =
(Event_Category)request.getAttribute("category");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Update Event Category</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

<div class="max-w-5xl mx-auto mt-10">

<div class="bg-white shadow-lg rounded-lg p-8">

<h2 class="text-3xl font-bold text-center text-indigo-700 mb-8">

Update Event Categories

</h2>


</div>

<%
if(ec!=null){
%>

<div class="bg-white shadow-lg rounded-lg p-8 mt-8">

<h2 class="text-2xl font-bold text-center text-green-700 mb-6">

Edit Category

</h2>

<form action="UpdateEventCategoryServlet" method="post">

<input
type="hidden"
name="categoryId"
value="<%=ec.getCategory_id()%>">

<div class="mb-5">

<label class="font-semibold">

Category Name

</label>

<input
type="text"
name="categoryName"
value="<%=ec.getCategory_name()%>"
required
class="w-full border rounded-lg p-3">

</div>

<div class="mb-5">

<label class="font-semibold">

Description

</label>

<textarea
name="description"
rows="4"
required
class="w-full border rounded-lg p-3"><%=ec.getDescription()%></textarea>

</div>

<div class="text-center">

<button
type="submit"
class="bg-green-600 text-white px-8 py-3 rounded-lg hover:bg-green-700">

Update Category

</button>

</div>

</form>

</div>

<%
}
%>

<%
String msg=(String)request.getAttribute("msg");

if(msg!=null){
%>

<p class="text-center mt-5 text-green-700 font-bold">

<%=msg%>

</p>

<%
}
%>

</div>

</body>

</html>