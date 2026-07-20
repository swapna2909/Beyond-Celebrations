

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ page import="com.dto.Customer"%>

<%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setDateHeader("Expires", 0);

Customer customer = (Customer) request.getAttribute("customer");

if (customer == null) {
	response.sendRedirect("customerLogin.jsp");
	return;
}

String firstLetter = customer.getFirst_name().substring(0, 1).toUpperCase();
%>

<!DOCTYPE html>


<html>

<head>

<meta charset="UTF-8">

<title>Customer Profile | Beyond Celebrations</title>

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Great+Vibes&family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">

</head>

<body class="bg-gray-100">

	<!-- Navbar -->

	<nav class="bg-white shadow-md">

		<div class="max-w-7xl mx-auto px-8">

			<div class="flex justify-between items-center h-20">

				<div class="flex items-center">

					<div
						class="w-14 h-14 rounded-full bg-gradient-to-r from-purple-700 to-pink-500 flex items-center justify-center text-white text-xl font-bold">

						BC</div>

					<div class="ml-4">

						<h1 class="text-2xl text-purple-700" style="font-family: Cinzel">

							Beyond Celebrations</h1>

						<p class="text-yellow-600" style="font-family: Great Vibes">

							More than events, we create experiences</p>

					</div>

				</div>

				<div class="flex items-center gap-5">

					<div class="text-right">

						<p class="text-gray-500 text-sm">Welcome</p>

						<p class="font-semibold">

							<%=customer.getFirst_name()%>

						</p>

					</div>

					<div
						class="w-12 h-12 rounded-full bg-gradient-to-r from-purple-700 to-pink-500 flex items-center justify-center text-white font-bold">

						<%=firstLetter%>

					</div>

				</div>

			</div>

		</div>

	</nav>

	<!-- Profile -->

	<div class="max-w-5xl mx-auto mt-12">

		<div class="bg-white rounded-3xl shadow-xl p-10">

			<h2 class="text-4xl font-bold text-purple-700 mb-10">My Profile

			</h2>

			<div class="grid grid-cols-2 gap-8">

				<div>

					<label class="font-semibold"> First Name </label> <input
						type="text" readonly value="<%=customer.getFirst_name()%>"
						class="w-full mt-2 border rounded-lg p-3 bg-gray-100">

				</div>

				<div>

					<label class="font-semibold"> Last Name </label> <input type="text"
						readonly value="<%=customer.getLast_name()%>"
						class="w-full mt-2 border rounded-lg p-3 bg-gray-100">

				</div>

				<div>

					<label class="font-semibold"> Email </label> <input type="email"
						readonly value="<%=customer.getEmail()%>"
						class="w-full mt-2 border rounded-lg p-3 bg-gray-100">

				</div>

				<div>

					<label class="font-semibold"> Phone </label> <input type="text"
						readonly value="<%=customer.getPhone()%>"
						class="w-full mt-2 border rounded-lg p-3 bg-gray-100">

				</div>

				<div class="col-span-2">

					<label class="font-semibold"> Address </label>

					<textarea readonly rows="4"
						class="w-full mt-2 border rounded-lg p-3 bg-gray-100"><%=customer.getAddress()%></textarea>

				</div>

			</div>

			<div class="mt-10 flex gap-5">

				<a href="updatecustomer.jsp"
					class="bg-purple-700 text-white px-8 py-3 rounded-xl hover:bg-purple-800">

					<i class="fa-solid fa-user-pen"></i> Edit Profile

				</a> <a href="customerdashboard"
					class="bg-gray-700 text-white px-8 py-3 rounded-xl hover:bg-gray-800">

					<i class="fa-solid fa-arrow-left"></i> Dashboard

				</a> <a href="logout"
					class="bg-red-600 text-white px-8 py-3 rounded-xl hover:bg-red-700">

					<i class="fa-solid fa-right-from-bracket"></i> Logout

				</a>

			</div>

		</div>

	</div>

	<footer class="mt-16 bg-[#1b0f1d] text-white">

		<div class="text-center py-6">© 2026 Beyond Celebrations. All
			Rights Reserved.</div>

	</footer>

</body>
</html>