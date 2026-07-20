<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.dto.Event_type" %>

<%
Event_type et = (Event_type)request.getAttribute("eventType");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Event Type</title>

<script src="https://cdn.tailwindcss.com"></script>

</head>
<body class="bg-gray-100">

<div class="container mx-auto mt-10">

    <div class="max-w-xl mx-auto bg-white shadow-lg rounded-lg p-8">

        <h2 class="text-3xl font-bold text-center text-blue-600 mb-6">
            Update Event Type
        </h2>

        <form action="UpdateEventTypeServlet" method="post">

            <input type="hidden"
                   name="eventTypeId"
                   value="<%=et.getEvent_type_id()%>">

            <div class="mb-4">
                <label class="block font-semibold mb-2">
                    Category Id
                </label>
                <input type="number"
                       name="categoryId"
                       value="<%=et.getCategory_id()%>"
                       class="w-full border rounded p-2"
                       required>
            </div>

            <div class="mb-4">
                <label class="block font-semibold mb-2">
                    Event Name
                </label>
                <input type="text"
                       name="eventName"
                       value="<%=et.getEvent_name()%>"
                       class="w-full border rounded p-2"
                       required>
            </div>

            <div class="mb-4">
                <label class="block font-semibold mb-2">
                    Description
                </label>

                <textarea name="description"
                          class="w-full border rounded p-2"
                          rows="4"><%=et.getDescription()%></textarea>
            </div>

            <div class="mb-4">
                <label class="block font-semibold mb-2">
                    Min Budget
                </label>

                <input type="number"
                       step="0.01"
                       name="minBudget"
                       value="<%=et.getMin_budget()%>"
                       class="w-full border rounded p-2"
                       required>
            </div>

            <div class="mb-4">
                <label class="block font-semibold mb-2">
                    Max Budget
                </label>

                <input type="number"
                       step="0.01"
                       name="maxBudget"
                       value="<%=et.getMax_budget()%>"
                       class="w-full border rounded p-2"
                       required>
            </div>

            <button
                type="submit"
                class="w-full bg-green-500 hover:bg-green-600 text-white p-3 rounded">
                Update Event Type
            </button>

        </form>

    </div>

</div>

</body>
</html>