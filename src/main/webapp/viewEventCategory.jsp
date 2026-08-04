<%@page import="java.util.List"%>
<%@page import="com.dto.Event_Category"%>
<%@page import="com.dao.impl.Event_Category_impl"%>
<%
String msg = request.getParameter("msg");
%>
<%
Event_Category_impl dao = new Event_Category_impl();
List<Event_Category> list = dao.findAll();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Event Categories</title>

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

<!-- Background Overlay -->
<div class="fixed inset-0 bg-black/50 -z-10"></div>

<div class="container mx-auto py-10 px-6">

    <!-- Heading -->
    <div class="text-center mb-10">
        <h1 class="text-5xl font-bold text-white">
            Event Categories
        </h1>

        <p class="text-gray-200 mt-3 text-lg">
            Manage all event categories from one place
        </p>
    </div>

    <!-- Buttons -->
    <div class="flex justify-between items-center mb-8">

        <a href="AdminDashboard.jsp"
           class="bg-gray-700 hover:bg-gray-800 text-white px-6 py-3 rounded-xl shadow-lg transition duration-300">
             Back to Dashboard
        </a>

        <a href="AddEventCategory.jsp"
           class="bg-gradient-to-r from-cyan-500 to-blue-600 hover:from-blue-600 hover:to-cyan-500 text-white px-6 py-3 rounded-xl shadow-lg transition duration-300 hover:scale-105">
            + Add Category
        </a>

    </div>
<%
if(msg != null){
%>

<div class="bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded mb-6 text-center">
    <%=msg%>
</div>

<%
}
%>
    <!-- Cards -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">

        <%
        if(list != null && !list.isEmpty()){

            for(Event_Category ec : list){
        %>

        <div class="bg-white rounded-3xl shadow-xl hover:shadow-2xl transition duration-300 overflow-hidden">

            <!-- Card Header -->
            <div class="bg-gradient-to-r from-cyan-500 to-blue-600 p-5">

                <h2 class="text-2xl font-bold text-white">
                    <%=ec.getCategory_name()%>
                </h2>

            </div>

            <!-- Card Body -->
            <div class="p-6">

                <p class="text-gray-700 mb-3">
                    <span class="font-bold text-gray-900">Category ID :</span>
                    <%=ec.getCategory_id()%>
                </p>

                <p class="text-gray-700 leading-7">
                    <span class="font-bold text-gray-900">Description :</span><br>
                    <%=ec.getDescription()%>
                </p>

                <!-- Action Buttons -->
                
                <div class="flex justify-end mt-6">

                    <a href="UpdateEventCategoryServlet?categoryId=<%=ec.getCategory_id()%>"
   class="bg-yellow-500 hover:bg-yellow-600 text-white px-5 py-2 rounded-lg shadow transition duration-300">
    Edit
</a>
                </div>

            </div>

        </div>

        <%
            }
        }else{
        %>

        <!-- No Records -->
        <div class="col-span-3">

            <div class="bg-white rounded-3xl shadow-xl p-10 text-center">

                <h2 class="text-3xl font-bold text-red-500">
                    No Event Categories Found
                </h2>

                <p class="text-gray-600 mt-3">
                    Click the button above to add your first event category.
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