<%@page import="com.dto.BookingDetails"%>

<%
BookingDetails booking =
(BookingDetails)request.getAttribute("booking");

String from =
(String)request.getAttribute("from");

String backUrl = "AdminDashboard.jsp";

if("pending".equals(from)){
    backUrl = "pendingbookings";
}
else if("approved".equals(from)){
    backUrl = "approvedbookings";
}
else if("rejected".equals(from)){
    backUrl = "rejectedbookings";
}
%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Booking Details</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="stylesheet"
href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body class="bg-gray-100">

<div class="max-w-5xl mx-auto py-10">

<!-- Header -->

<div class="bg-purple-700 text-white rounded-t-3xl p-8">

<div class="flex justify-between items-center">

<h1 class="text-4xl font-bold">

<i class="fa-solid fa-calendar-check mr-2"></i>

Booking Details

</h1>

<a href="<%=backUrl%>"
class="bg-white text-purple-700 px-6 py-2 rounded-lg font-semibold hover:bg-gray-200">

 Back

</a>

</div>

</div>

<!-- Details Card -->

<div class="bg-white shadow-xl rounded-b-3xl p-10">

<div class="grid grid-cols-1 md:grid-cols-2 gap-8">

<div>

<p class="mb-4">

<b>Booking ID :</b>

<%=booking.getBookingId()%>

</p>

<p class="mb-4">

<b>Customer :</b>

<%=booking.getCustomerName()%>

</p>

<p class="mb-4">

<b>Organizer :</b>

<%=booking.getOrganizerName()%>

</p>

<p class="mb-4">

<b>Event :</b>

<%=booking.getEventType()%>

</p>

<p class="mb-4">

<b>Venue :</b>

<%=booking.getVenueName()%>

</p>

</div>

<div>

<p class="mb-4">

<b>Booking Date :</b>

<%=booking.getBookingDate()%>

</p>

<p class="mb-4">

<b>Event Date :</b>

<%=booking.getEventDate()%>

</p>

<p class="mb-4">

<b>Guests :</b>

<%=booking.getGuestCount()%>

</p>

<p class="mb-4">

<b>Budget :</b>

<span class="text-green-700 font-bold">

 <%=booking.getBudget()%>

</span>

</p>

<p class="mb-4">

<b>Status :</b>

<%
String status = booking.getStatus();

String badge = "bg-yellow-100 text-yellow-700";

if(status.equalsIgnoreCase("Approved")){

badge = "bg-green-100 text-green-700";

}
else if(status.equalsIgnoreCase("Rejected")){

badge = "bg-red-100 text-red-700";

}
else if(status.equalsIgnoreCase("Completed")){

badge = "bg-blue-100 text-blue-700";

}
%>

<span class="<%=badge%> px-4 py-2 rounded-full">

<%=status%>

</span>

</p>

</div>

</div>

<hr class="my-8">

<div>

<h2 class="text-2xl font-bold text-purple-700 mb-4">

Special Request

</h2>

<div class="bg-gray-100 rounded-xl p-5">

<%=booking.getSpecialRequest()%>

</div>

</div>

<%
if(status.equalsIgnoreCase("Pending")){
%>

<div class="flex justify-center gap-5 mt-10">

<a href="approvebooking?id=<%=booking.getBookingId()%>"
class="bg-green-600 hover:bg-green-700 text-white px-8 py-3 rounded-xl">

<i class="fa-solid fa-check mr-2"></i>

Approve

</a>

<a href="rejectbooking?id=<%=booking.getBookingId()%>"
class="bg-red-600 hover:bg-red-700 text-white px-8 py-3 rounded-xl">

<i class="fa-solid fa-xmark mr-2"></i>

Reject

</a>

</div>

<%
}
%>

</div>

</div>

</body>

</html>