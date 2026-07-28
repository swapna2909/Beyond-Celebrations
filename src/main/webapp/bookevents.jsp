<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List"%>
<%@ page import="com.dto.Event_type"%>
<%@ page import="com.dto.Organizer"%>
<%@ page import="com.dto.Venue"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">

<title>Book Event</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gray-100">

<div class="max-w-4xl mx-auto mt-10 bg-white shadow-xl rounded-xl p-8">

<h2 class="text-3xl font-bold text-center text-purple-700 mb-8">
Book Your Event
</h2>

<%
if(request.getParameter("success")!=null){
%>

<div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6">

Event Booked Successfully!

</div>

<%
}
%>

<form action="bookevents" method="post">

<!-- Category -->

<div class="mb-5">

<label class="font-semibold">

Event Category

</label>

<select
name="category"
onchange="this.form.submit()"
class="w-full border rounded-lg p-3 mt-2">

<option>Select Category</option>

<option value="Wedding">Wedding</option>

<option value="Birthday">Birthday</option>

<option value="Anniversary">Anniversary</option>

<option value="Baby Shower">Baby Shower</option>

<option value="Corporate Events">Corporate Events</option>

<option value="Housewarming">Housewarming</option>

</select>

</div>

<!-- Event Type -->

<div class="mb-5">

<label class="font-semibold">

Event Type

</label>

<select
name="event_type_id"
class="w-full border rounded-lg p-3 mt-2">

<option>Select Event Type</option>

<%

List<Event_type> events=(List<Event_type>)request.getAttribute("eventList");

if(events!=null){

for(Event_type e:events){

%>

<option value="<%=e.getEvent_type_id()%>">

<%=e.getEvent_name()%>

</option>

<%

}

}

%>

</select>

</div>

<!-- Organizer -->

<div class="mb-5">

<label class="font-semibold">

Organizer

</label>

<select
name="organizer_id"
class="w-full border rounded-lg p-3 mt-2">

<option>Select Organizer</option>

<%

List<Organizer> organizers=(List<Organizer>)request.getAttribute("organizerList");

if(organizers!=null){

for(Organizer o:organizers){

%>

<option value="<%=o.getOrganizer_id()%>">

<%=o.getOrganizer_name()%>

</option>

<%

}

}

%>

</select>

</div>

<!-- Venue -->

<div class="mb-5">

<label class="font-semibold">

Venue

</label>

<select
name="venue_id"
class="w-full border rounded-lg p-3 mt-2">

<option>Select Venue</option>

<%

List<Venue> venues=(List<Venue>)request.getAttribute("venueList");

if(venues!=null){

for(Venue v:venues){

%>

<option value="<%=v.getVenue_id()%>">

<%=v.getVenue_name()%>

</option>

<%

}

}

%>

</select>

</div>

<!-- Event Date -->

<div class="mb-5">

<label class="font-semibold">

Event Date

</label>

<input
type="date"
name="event_date"
required
class="w-full border rounded-lg p-3 mt-2">

</div>

<!-- Guests -->

<div class="mb-5">

<label class="font-semibold">

Guest Count

</label>

<input
type="number"
name="guest_count"
required
class="w-full border rounded-lg p-3 mt-2">

</div>

<!-- Budget -->

<div class="mb-5">

<label class="font-semibold">

Budget

</label>

<input
type="number"
name="budget"
required
class="w-full border rounded-lg p-3 mt-2">

</div>

<!-- Special Request -->

<div class="mb-6">

<label class="font-semibold">

Special Request

</label>

<textarea
name="special_request"
rows="4"
class="w-full border rounded-lg p-3 mt-2"></textarea>

</div>

<div class="flex justify-center gap-6">

<button
type="submit"
class="bg-purple-700 text-white px-8 py-3 rounded-lg hover:bg-purple-800">

Book Event

</button>

<button
type="reset"
class="bg-red-500 text-white px-8 py-3 rounded-lg hover:bg-red-600">

Reset

</button>

</div>

</form>

</div>

</body>

</html>