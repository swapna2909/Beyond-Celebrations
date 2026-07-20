<%@page import="java.util.List"%>
<%@page import="com.dto.Event_type"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%
List<Event_type> list =
(List<Event_type>)request.getAttribute("eventTypeList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Event Types</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>

<body class="bg-gradient-to-r from-blue-100 via-purple-100 to-pink-100 min-h-screen">

<div class="max-w-7xl mx-auto py-10">

    <h1 class="text-4xl font-bold text-center text-purple-700 mb-8">
        Event Types
    </h1>

    <div class="overflow-x-auto">

        <table class="min-w-full bg-white shadow-lg rounded-lg">

            <thead class="bg-purple-700 text-white">

                <tr>

                    <th class="px-4 py-3">ID</th>

                    <th class="px-4 py-3">Category ID</th>

                    <th class="px-4 py-3">Event Name</th>

                    <th class="px-4 py-3">Description</th>

                    <th class="px-4 py-3">Min Budget</th>

                    <th class="px-4 py-3">Max Budget</th>

                    <th class="px-4 py-3">Action</th>

                </tr>

            </thead>

            <tbody>

            <%
            if(list != null && !list.isEmpty()){

                for(Event_type et : list){
            %>

                <tr class="text-center border-b hover:bg-gray-100">

                    <td class="py-3"><%=et.getEvent_type_id()%></td>

                    <td><%=et.getCategory_id()%></td>

                    <td><%=et.getEvent_name()%></td>

                    <td><%=et.getDescription()%></td>

                    <td>₹ <%=et.getMin_budget()%></td>

                    <td>₹ <%=et.getMax_budget()%></td>

                    <td>

                        <a href="updateEventType.jsp?id=<%=et.getEvent_type_id()%>"
                        class="bg-yellow-500 hover:bg-yellow-600 text-white px-4 py-2 rounded">

                        Update

                        </a>

                    </td>

                </tr>

            <%
                }
            }
            else{
            %>

                <tr>

                    <td colspan="7" class="text-center text-red-600 py-6">

                        No Event Types Available

                    </td>

                </tr>

            <%
            }
            %>

            </tbody>

        </table>

    </div>

    <div class="text-center mt-8">

        <a href="addEventType.jsp"
        class="bg-green-600 hover:bg-green-700 text-white px-6 py-3 rounded-lg">

        Add New Event Type

        </a>

    </div>

</div>

</body>
</html>