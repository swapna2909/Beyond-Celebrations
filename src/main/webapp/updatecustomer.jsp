<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.dto.Customer"%>

<%
Customer customer = (Customer) session.getAttribute("Customer");

if (customer == null) {
	response.sendRedirect("login.jsp");
	return;
}
%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Update Profile</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">

</head>

<body class="bg-gray-100" style="font-family: Poppins;">

	<div class="max-w-3xl mx-auto mt-12">

		<div class="bg-white shadow-xl rounded-3xl p-10">

			<h2 class="text-4xl
font-bold
text-purple-700
mb-8">Update
				Profile</h2>

			<%
			String error = (String) request.getAttribute("error");

			if (error != null) {
			%>

			<div class="bg-red-100
text-red-700
p-3
rounded-lg
mb-5">

				<%=error%>

			</div>

			<%
			}
			%>

			<form action="updatecustomer" method="post" class="space-y-6">

				<div>

					<label class="font-semibold"> First Name </label> <input
						type="text" name="first_name"
						value="<%=customer.getFirst_name()%>" required
						class="w-full
border
rounded-lg
p-3
mt-2">

				</div>

				<div>

					<label class="font-semibold"> Last Name </label> <input type="text"
						name="last_name" value="<%=customer.getLast_name()%>" required
						class="w-full
border
rounded-lg
p-3
mt-2">

				</div>

				<div>

					<label class="font-semibold"> Email </label> <input type="email"
						value="<%=customer.getEmail()%>" readonly
						class="w-full
border
rounded-lg
p-3
mt-2
bg-gray-100">

				</div>

				<div>

					<label class="font-semibold"> Phone </label> <input type="text"
						name="phone" value="<%=customer.getPhone()%>" required
						class="w-full
border
rounded-lg
p-3
mt-2">

				</div>

				<div>

					<label class="font-semibold"> Address </label>

					<textarea name="address" rows="4"
						class="w-full
border
rounded-lg
p-3
mt-2"><%=customer.getAddress()%></textarea>

				</div>

				<div class="flex
gap-5">

					<button type="submit"
						class="bg-purple-700
text-white
px-8
py-3
rounded-xl
hover:bg-purple-800">

						Update Profile</button>

					<a href="customerprofile"
						class="bg-gray-600
text-white
px-8
py-3
rounded-xl
hover:bg-gray-700">

						Cancel </a>

				</div>

			</form>

		</div>

	</div>

</body>

</html>