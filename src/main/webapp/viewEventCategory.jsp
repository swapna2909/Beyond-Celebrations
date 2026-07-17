<%@page import="java.util.List"%>
<%@page import="com.dto.Event_Category"%>
<%@page import="com.dao.impl.Event_Category_impl"%>

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
    background:url("https://images.unsplash.com/photo-1505236858219-8359eb29e329?auto=format&fit=crop&w=1600&q=80");
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    font-family:'Poppins',sans-serif;
}
</style>

</head>

<body class="min-h-screen">

<!-- Overlay -->
<div class="absolute inset-0 bg-black/40"></div>

<div class="relative container mx-auto py-12 px-6">

    <!-- Heading -->
    <div class="text-center mb-8">
        <h1 class="text-5xl font-bold text-white">
            Event Categories
        </h1>

        <p class="text-gray-200 mt-3">
            Manage all celebration event categories
        </p>
    </div>

    <!-- Card -->
    <div class="bg-white/85 backdrop-blur-lg rounded-3xl shadow-2xl p-8">

        <!-- Top Section -->
        <div class="flex justify-between items-center mb-6">

            <input
                type="text"
                placeholder="Search Category..."
                class="w-80 px-4 py-3 rounded-xl border border-gray-300 focus:ring-4 focus:ring-cyan-400 outline-none">

            <a href="addEventCategory.jsp"
               class="bg-gradient-to-r from-cyan-500 to-blue-600 text-white px-6 py-3 rounded-xl shadow-lg hover:scale-105 duration-300">
                + Add Category
            </a>

        </div>

        <!-- Table -->
        <div class="overflow-x-auto">

            <table class="w-full border-collapse">

                <thead>

                <tr class="bg-gradient-to-r from-cyan-500 to-blue-600 text-white">

                    <th class="py-4">Category ID</th>
                    <th>Category Name</th>
                    <th>Description</th>
                   

                </tr>

                </thead>

                <tbody>

                <%
                for(Event_Category ec : list){
                %>

                <tr class="text-center bg-white hover:bg-cyan-50 transition">

                    <td class="py-4 border-b"><%=ec.getCategory_id()%></td>

                    <td class="border-b">
                        <%=ec.getCategory_name()%>
                    </td>

                    <td class="border-b">
                        <%=ec.getDescription()%>
                    </td>

                   

                </tr>

                <%
                }
                %>

                </tbody>

            </table>

        </div>

    </div>

</div>

</body>
</html>