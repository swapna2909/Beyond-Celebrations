<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html;charset=UTF-8"
	pageEncoding="UTF-8"%>
	

<%
String category = request.getParameter("category");
%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Book Event</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

	<div class="max-w-3xl mx-auto mt-10 bg-white shadow-xl rounded-xl p-8">

		<h2 class="text-3xl font-bold text-center text-purple-700 mb-8">
			Book Event</h2>

		<form action="bookevents" method="get">

<label>Event Category</label>

<select name="category" onchange="this.form.submit()"
class="w-full border rounded-lg p-3">

    <option value="">Select Category</option>

    <option value="Wedding"
        <%= "Wedding".equals(request.getAttribute("category")) ? "selected" : "" %>>
        Wedding
    </option>

    <option value="Birthday"
        <%= "Birthday".equals(request.getAttribute("category")) ? "selected" : "" %>>
        Birthday
    </option>

    <option value="Anniversary"
        <%= "Anniversary".equals(request.getAttribute("category")) ? "selected" : "" %>>
        Anniversary
    </option>

    <option value="Baby Shower"
        <%= "Baby Shower".equals(request.getAttribute("category")) ? "selected" : "" %>>
        Baby Shower
    </option>

</select>

<br><br>

<label>Event Type</label>

<select name="eventType"
class="w-full border rounded-lg p-3">

<%
List<String> eventTypes=(List<String>)request.getAttribute("eventTypes");

if(eventTypes!=null){

for(String event:eventTypes){
%>

<option><%=event%></option>

<%
}
}
%>

</select>

</form>
	</div>

</body>

</html>