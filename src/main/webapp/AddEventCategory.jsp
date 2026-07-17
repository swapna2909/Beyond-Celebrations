<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Event Category</title>

<script src="https://cdn.tailwindcss.com"></script>

<style>
body{
    background-image:url('https://images.unsplash.com/photo-1519225421980-715cb0215aed?auto=format&fit=crop&w=1600&q=80');
    background-size:cover;
    background-position:center;
    background-repeat:no-repeat;
    font-family: 'Poppins', sans-serif;
}
</style>

</head>

<body class="min-h-screen flex items-center justify-center">

    <!-- Background Overlay -->
    <div class="absolute inset-0 bg-black/30"></div>

    <!-- Form Card -->
    <div class="relative bg-white/80 backdrop-blur-lg shadow-2xl rounded-3xl w-full max-w-xl p-10 border border-white">

        <!-- Heading -->
        <h1 class="text-4xl font-bold text-center text-gray-900">
            Add Event Category
        </h1>

        <p class="text-center text-gray-600 mt-2 mb-8">
            Create categories for your celebration events.
        </p>
        <%
	String msg = (String)request.getAttribute("msg");
	if(msg != null){
	%>
	
	<div class="mb-5 bg-green-100 border border-green-400 text-green-700 px-4 py-3 rounded-lg text-center">
	    <%= msg %>
	</div>
	
	<%
	}
	%>

        <form action="AddEventCategoryServlet" method="post">

            <!-- Category Name -->
            <div class="mb-6">
                <label class="block text-gray-800 font-semibold mb-2">
                    Category Name
                </label>

                <input
                    type="text"
                    name="category_name"
                    placeholder="Enter Category Name"
                    required
                    class="w-full px-4 py-3 rounded-xl border border-gray-300 bg-white text-gray-800 placeholder-gray-500 focus:ring-4 focus:ring-purple-400 focus:outline-none">
            </div>

            <!-- Description -->
            <div class="mb-8">
                <label class="block text-gray-800 font-semibold mb-2">
                    Description
                </label>

                <textarea
                    rows="5"
                    name="description"
                    placeholder="Enter Category Description"
                    required
                    class="w-full px-4 py-3 rounded-xl border border-gray-300 bg-white text-gray-800 placeholder-gray-500 resize-none focus:ring-4 focus:ring-purple-400 focus:outline-none"></textarea>
            </div>

            <!-- Buttons -->
            <div class="flex justify-between">

                <button
                    type="reset"
                    class="px-8 py-3 bg-red-500 hover:bg-red-600 text-white rounded-xl font-semibold transition duration-300 shadow-md">
                    Clear
                </button>

                <button
                    type="submit"
                    class="px-8 py-3 bg-gradient-to-r from-purple-600 to-indigo-600 hover:from-indigo-600 hover:to-purple-700 text-white rounded-xl font-semibold transition duration-300 shadow-lg hover:scale-105">
                    Add Category
                </button>

            </div>

        </form>

    </div>

</body>
</html>