<%@page language="java"
    contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="com.dto.Venue"%>

<%
Venue venue = (Venue) request.getAttribute("venue");

if (venue == null) {
    response.sendRedirect("viewVenue.jsp?msg=Venue not found");
    return;
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Edit Venue - Beyond Celebrations</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect"
      href="https://fonts.googleapis.com">

<link rel="preconnect"
      href="https://fonts.gstatic.com"
      crossorigin>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
      rel="stylesheet">

</head>


<body
class="min-h-screen bg-gradient-to-br
       from-purple-900
       via-purple-700
       to-indigo-800"
style="font-family:Poppins;">


<!-- ================= HEADING ================= -->

<div class="text-center pt-10">

    <h1 class="text-5xl font-bold text-white">

        Edit Venue

    </h1>

    <p class="text-gray-200 mt-3 text-lg">

        Update venue details

    </p>

</div>



<!-- ================= FORM ================= -->

<div class="max-w-3xl mx-auto mt-10 mb-12">

<div class="bg-white rounded-3xl shadow-2xl p-10">


<form action="UpdateVenueServlet"
      method="post">


<!-- VENUE ID -->

<div class="mb-6">

    <label class="font-semibold text-gray-700">

        Venue ID

    </label>

    <input
        type="text"
        value="<%=venue.getVenue_id()%>"
        readonly
        class="w-full mt-2
               border rounded-xl
               p-3
               bg-gray-100">

    <input
        type="hidden"
        name="venueId"
        value="<%=venue.getVenue_id()%>">

</div>



<!-- VENUE NAME -->

<div class="mb-6">

    <label class="font-semibold text-gray-700">

        Venue Name

    </label>

    <input
        type="text"
        name="venueName"
        value="<%=venue.getVenue_name()%>"
        required
        class="w-full mt-2
               border rounded-xl
               p-3
               focus:ring-2
               focus:ring-purple-500">

</div>



<!-- LOCATION -->

<div class="mb-6">

    <label class="font-semibold text-gray-700">

        Location

    </label>

    <input
        type="text"
        name="location"
        value="<%=venue.getLocation()%>"
        required
        class="w-full mt-2
               border rounded-xl
               p-3
               focus:ring-2
               focus:ring-purple-500">

</div>



<!-- CAPACITY -->

<div class="mb-6">

    <label class="font-semibold text-gray-700">

        Capacity

    </label>

    <input
        type="number"
        name="capacity"
        value="<%=venue.getCapacity()%>"
        min="1"
        required
        class="w-full mt-2
               border rounded-xl
               p-3
               focus:ring-2
               focus:ring-purple-500">

</div>



<!-- PRICE -->

<div class="mb-6">

    <label class="font-semibold text-gray-700">

        Price

    </label>

    <input
        type="number"
        name="price"
        value="<%=venue.getPrice()%>"
        step="0.01"
        min="0"
        required
        class="w-full mt-2
               border rounded-xl
               p-3
               focus:ring-2
               focus:ring-purple-500">

</div>



<!-- AVAILABILITY -->

<div class="mb-6">

    <label class="font-semibold text-gray-700">

        Availability

    </label>

    <select
        name="availability"
        required
        class="w-full mt-2
               border rounded-xl
               p-3
               focus:ring-2
               focus:ring-purple-500">


        <option value="Available"
        <%= "Available".equalsIgnoreCase(
            venue.getAvailability()) ? "selected" : "" %>>

            Available

        </option>


        <option value="Not Available"
        <%= "Not Available".equalsIgnoreCase(
            venue.getAvailability()) ? "selected" : "" %>>

            Not Available

        </option>


    </select>

</div>



<!-- BUTTONS -->

<div class="flex justify-center gap-5 mt-8">


    <button
        type="submit"
        class="bg-purple-700
               hover:bg-purple-800
               text-white
               px-8 py-3
               rounded-xl
               font-semibold">

        Update Venue

    </button>


    <a
        href="viewVenue.jsp"
        class="bg-gray-600
               hover:bg-gray-700
               text-white
               px-8 py-3
               rounded-xl
               font-semibold">

        Cancel

    </a>


</div>


</form>

</div>

</div>


</body>

</html>