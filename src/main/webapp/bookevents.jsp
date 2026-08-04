<%@page import="java.util.List"%>
<%@page import="com.dto.Event_type"%>
<%@page import="com.dto.Organizer"%>
<%@page import="com.dto.Venue"%>

<%
Event_type event = (Event_type)request.getAttribute("event");

List<Organizer> organizers =
(List<Organizer>)request.getAttribute("organizers");

List<Venue> venues =
(List<Venue>)request.getAttribute("venues");
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Book Event</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect"
href="https://fonts.googleapis.com">

<link rel="preconnect"
href="https://fonts.gstatic.com"
crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
rel="stylesheet">

</head>

<body class="bg-gray-100"
style="font-family:Poppins;">

<div class="max-w-3xl mx-auto mt-10 mb-10">

<div class="bg-white rounded-3xl shadow-xl p-10">

<h1 class="text-4xl font-bold text-center text-purple-700">

Book Event

</h1>

<p class="text-center text-gray-500 mt-2">

Fill the details below to confirm your booking

</p>

<form action="savebooking" method="post" class="mt-8">

<!-- Event Type -->

<div class="mb-6">

<label class="font-semibold">

Selected Event

</label>

<input
type="text"
value="<%=event.getEvent_name()%>"
readonly
class="w-full mt-2 border rounded-lg p-3 bg-gray-100">

<input
type="hidden"
name="event_type_id"
value="<%=event.getEvent_type_id()%>">

</div>

<!-- Organizer -->

<div class="mb-6">

<label class="font-semibold">

Select Organizer

</label>

<select
name="organizer_id"
required
class="w-full mt-2 border rounded-lg p-3">

<option value="">Select Organizer</option>

<%
for(Organizer o : organizers){
%>

<option value="<%=o.getOrganizer_id()%>">

<%=o.getOrganizer_name()%>

</option>

<%
}
%>

</select>

</div>

<!-- Venue -->

<div class="mb-6">

<label class="font-semibold">

Select Venue

</label>

<select
name="venue_id"
required
class="w-full mt-2 border rounded-lg p-3">

<option value="">Select Venue</option>

<%
for(Venue v : venues){
%>

<option value="<%=v.getVenue_id()%>">

<%=v.getVenue_name()%>
-
<%=v.getLocation()%>

(Capacity :
<%=v.getCapacity()%>)

</option>

<%
}
%>

</select>

</div>

<!-- Event Date -->

<div class="mb-6">

<label class="font-semibold">

Event Date

</label>

<input
type="date"
name="event_date"
required
class="w-full mt-2 border rounded-lg p-3">

</div>

<!-- Guest Count -->

<div class="mb-6">

<label class="font-semibold">

Number of Guests

</label>

<input
type="number"
name="guest_count"
min="1"
required
placeholder="Enter Guests Count"
class="w-full mt-2 border rounded-lg p-3">

</div>

<!-- Budget -->

<div class="mb-6">

<label class="font-semibold">

Budget

</label>

<input
type="number"
name="budget"
step="0.01"
required
placeholder="Enter Your Budget"
class="w-full mt-2 border rounded-lg p-3">

</div>

<!-- Special Request -->

<div class="mb-6">

<label class="font-semibold">

Special Request

</label>

<textarea
name="special_request"
rows="5"
placeholder="Any Decoration, Food, Music, Theme..."
class="w-full mt-2 border rounded-lg p-3"></textarea>

</div>

<!-- Buttons -->

<div class="flex justify-center gap-6 mt-8">

<button
type="submit"
class="bg-purple-700 hover:bg-purple-800 text-white px-8 py-3 rounded-xl">

Confirm Booking

</button>

<a
href="customerdashboard"
class="bg-red-600 hover:bg-red-700 text-white px-8 py-3 rounded-xl">

Cancel

</a>

</div>

</form>

</div>

</div>

</body>

</html>