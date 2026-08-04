<%@page import="java.util.List"%>
<%@page import="com.dao.impl.Event_type_impl"%>
<%@page import="com.dto.Event_type"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
Event_type_impl dao = new Event_type_impl();
List<Event_type> list = dao.findAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Event Types</title>

<script src="https://cdn.tailwindcss.com"></script>

<style>
body{
    background-image:url('https://images.unsplash.com/photo-1511578314322-379afb476865?auto=format&fit=crop&w=1600&q=80');
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    background-attachment:fixed;
    font-family:'Poppins',sans-serif;
}
</style>

</head>

<body class="min-h-screen">

<div class="fixed inset-0 bg-black/50 -z-10"></div>

<div class="container mx-auto py-10 px-6">

    <!-- Success Message -->
    <%
    String msg=request.getParameter("msg");

    if(msg!=null){
    %>

    <div class="bg-green-100 border border-green-500 text-green-700 px-5 py-3 rounded-xl mb-6 text-center font-semibold">
        <%=msg%>
    </div>

    <%
    }
    %>

    <!-- Heading -->

    <div class="text-center mb-10">

        <h1 class="text-5xl font-bold text-white">
            Event Types
        </h1>

        <p class="text-gray-200 mt-3 text-lg">
            Manage all event types from one place
        </p>

    </div>

    <!-- Buttons -->

    <div class="flex justify-between items-center mb-8">

        <a href="AdminDashboard.jsp"
        class="bg-gray-700 hover:bg-gray-800 text-white px-6 py-3 rounded-xl shadow-lg">

            ← Back to Dashboard

        </a>

        <a href="AddEventType.jsp"
        class="bg-gradient-to-r from-cyan-500 to-blue-600 text-white px-6 py-3 rounded-xl shadow-lg hover:scale-105 transition">

            + Add Event Type

        </a>

    </div>

    <!-- Cards -->

    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

    <%
    if(list!=null && !list.isEmpty()){

        for(Event_type et:list){
    %>

    <div class="bg-white rounded-3xl shadow-xl hover:shadow-2xl transition overflow-hidden">

        <!-- Header -->

        <div class="bg-gradient-to-r from-purple-600 to-indigo-600 p-5">

            <h2 class="text-2xl font-bold text-white">
                <%=et.getEvent_name()%>
            </h2>

        </div>

        <!-- Body -->

        <div class="p-6">

            <p class="mb-2">
                <b>Event Type ID :</b>
                <%=et.getEvent_type_id()%>
            </p>

            <p class="mb-2">
                <b>Category ID :</b>
                <%=et.getCategory_id()%>
            </p>

            <p class="mb-2">
                <b>Description :</b><br>
                <%=et.getDescription()%>
            </p>

            <p class="text-green-700 font-semibold mt-3">
                Minimum Budget :
                ₹ <%=et.getMin_budget()%>
            </p>

            <p class="text-red-700 font-semibold">
                Maximum Budget :
                ₹ <%=et.getMax_budget()%>
            </p>

            <div class="flex justify-end mt-6">

                <a href="UpdateEventTypeServlet?eventTypeId=<%=et.getEvent_type_id()%>"
                class="bg-yellow-500 hover:bg-yellow-600 text-white px-5 py-2 rounded-lg">

                    Edit

                </a>

            </div>

        </div>

    </div>

    <%
        }
    }
    else{
    %>

    <div class="col-span-3">

        <div class="bg-white rounded-3xl shadow-xl p-10 text-center">

            <h2 class="text-3xl font-bold text-red-600">

                No Event Types Found

            </h2>

            <p class="mt-3 text-gray-600">

                Click "Add Event Type" to create your first event type.

            </p>

        </div>

    </div>

    <%
    }
    %>

    </div>

</div>

</body>
</html>