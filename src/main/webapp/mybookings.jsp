<%@page import="java.util.List"%>
<%@page import="com.dto.Booking"%>


<html>

<head>

<title>My Bookings</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>


<body>


<div class="max-w-5xl mx-auto mt-10">


<h1 class="text-4xl text-purple-700 font-bold">

My Bookings

</h1>


<%

List<Booking> list =
(List<Booking>)request.getAttribute("bookings");


if(list!=null)
{

for(Booking b:list)

{

%>


<div class="bg-white shadow p-5 mt-5">


<p>
Event Date :
<%=b.getEvent_date()%>
</p>


<p>
Guests :
<%=b.getGuest_count()%>
</p>


<p>
Budget :
₹ <%=b.getBudget()%>
</p>


<p>
Status :
<%=b.getStatus()%>
</p>


</div>


<%

}

}

%>


</div>


</body>

</html>