<%@page import="com.dto.Event_Category"%>

<%
Event_Category ec = (Event_Category) request.getAttribute("category");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Event Category</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>
<body class="bg-gray-100">

<div class="max-w-xl mx-auto mt-10 bg-white shadow-lg rounded-lg p-8">

<h2 class="text-3xl font-bold text-center text-indigo-600 mb-8">
Update Event Category
</h2>

<!-- STEP 1 : SEARCH -->

<form action="UpdateEventCategoryServlet" method="get">

<div class="mb-5">
<label class="block font-semibold mb-2">
Enter Category ID
</label>

<input
type="number"
name="categoryId"
required
class="w-full border rounded px-4 py-2 focus:outline-none focus:ring-2 focus:ring-indigo-500">

</div>

<div class="text-center">

<button
type="submit"
class="bg-blue-600 text-white px-6 py-2 rounded hover:bg-blue-700">

Search

</button>

</div>

</form>

<%
if(ec!=null){
%>

<hr class="my-8">

<!-- STEP 2 : UPDATE -->

<form action="UpdateEventCategoryServlet" method="post">

<input
type="hidden"
name="categoryId"
value="<%=ec.getCategory_id()%>">

<div class="mb-5">

<label class="block font-semibold mb-2">

Category Name

</label>

<input
type="text"
name="categoryName"
value="<%=ec.getCategory_name()%>"
required
class="w-full border rounded px-4 py-2">

</div>

<div class="mb-5">

<label class="block font-semibold mb-2">

Description

</label>

<textarea
name="description"
rows="4"
required
class="w-full border rounded px-4 py-2"><%=ec.getDescription()%></textarea>

</div>

<div class="text-center">

<button
type="submit"
class="bg-green-600 text-white px-6 py-2 rounded hover:bg-green-700">

Update Category

</button>

</div>

</form>

<%
}
%>

<%
String msg=(String)request.getAttribute("msg");
if(msg!=null){
%>

<p class="text-center mt-5 text-red-600 font-semibold">
<%=msg%>
</p>

<%
}
%>

</div>

</body>
</html>