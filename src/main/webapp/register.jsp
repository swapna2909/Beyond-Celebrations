

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Register | Beyond Celebrations</title>

<script src="https://cdn.tailwindcss.com"></script>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Cinzel:wght@700&family=Great+Vibes&family=Playfair+Display:wght@500&display=swap"
	rel="stylesheet">

</head>

<body class="relative min-h-screen flex flex-col"
	style="background-image: url('https://images.unsplash.com/photo-1519167758481-83f550bb49b3?auto=format&amp;fit=crop&amp;w=1950&amp;q=80'); background-size: cover; background-position: center; background-repeat: no-repeat;">

	<!-- Dark Overlay -->

	<div class="absolute inset-0 bg-black/40"></div>

	<!-- Register Card -->

	<div
		class="relative z-10 flex-grow flex items-center justify-center py-10 px-4">

		<div
			class="w-full max-w-2xl
bg-white/20
backdrop-blur-xl
border border-white/30
rounded-3xl
shadow-2xl
p-10">

			<!-- Success Message -->

			<%
			String success = (String) request.getAttribute("success");
			if (success != null) {
			%>

			<div
				class="bg-green-100 text-green-700 border border-green-300 rounded-lg p-3 text-center mb-5">
				<%=success%>
			</div>

			<%
			}
			%>

			<!-- Error Message -->

			<%
			String error = (String) request.getAttribute("error");
			if (error != null) {
			%>

			<div
				class="bg-red-100 text-red-700 border border-red-300 rounded-lg p-3 text-center mb-5">
				<%=error%>
			</div>

			<%
			}
			%>

			<!-- Heading -->

			<div class="text-center mb-8">

				<h1 class="text-5xl text-white drop-shadow-lg"
					style="font-family: 'Cinzel', serif;">Beyond Celebrations</h1>

				<p class="text-2xl text-yellow-200 mt-2"
					style="font-family: 'Great Vibes', cursive;">More than events,
					we create experiences</p>

				<p class="text-gray-100 mt-4 text-base leading-7"
					style="font-family: 'Playfair Display', serif;">A personalized
					event planning platform that helps individuals and organizations
					create memorable celebrations through curated decoration packages,
					customizable catering, and budget-aware recommendations.</p>

			</div>

			<!-- Register Form -->

			<form action="register" method="POST" class="space-y-5">

				<!-- First Name -->

				<div>

					<label class="block text-white font-semibold mb-2"> First
						Name </label> <input type="text" name="first_name"
						placeholder="Enter your first name" required
						class="w-full
px-5
py-3
rounded-xl
bg-white/40
border border-white/50
text-black
placeholder-gray-700
focus:outline-none
focus:ring-2
focus:ring-purple-500">

				</div>

				<!-- Last Name -->

				<div>

					<label class="block text-white font-semibold mb-2"> Last
						Name </label> <input type="text" name="last_name"
						placeholder="Enter your last name" required
						class="w-full
px-5
py-3
rounded-xl
bg-white/40
border border-white/50
text-black
placeholder-gray-700
focus:outline-none
focus:ring-2
focus:ring-purple-500">

				</div>

				<!-- Email -->

				<div>

					<label class="block text-white font-semibold mb-2"> Email
						Address </label> <input type="email" name="email"
						placeholder="Enter your email" required
						class="w-full
px-5
py-3
rounded-xl
bg-white/40
border border-white/50
text-black
placeholder-gray-700
focus:outline-none
focus:ring-2
focus:ring-purple-500">

				</div>

				<!-- Phone -->

				<div>

					<label class="block text-white font-semibold mb-2"> Phone
						Number </label> <input type="tel" name="phone"
						placeholder="Enter your phone number" required
						class="w-full
px-5
py-3
rounded-xl
bg-white/40
border border-white/50
text-black
placeholder-gray-700
focus:outline-none
focus:ring-2
focus:ring-purple-500">

				</div>

				<!-- Address -->

				<div>

					<label class="block text-white font-semibold mb-2"> Address

					</label>

					<textarea name="address" rows="3" placeholder="Enter your address"
						class="w-full
px-5
py-3
rounded-xl
bg-white/40
border border-white/50
text-black
placeholder-gray-700
focus:outline-none
focus:ring-2
focus:ring-purple-500"></textarea>

				</div>

				<div>

    <label class="block text-white font-semibold mb-2">
        Password
    </label>

    <input
        type="password"
        name="password"
        placeholder="Create your password"
        required

        class="w-full
        px-5
        py-3
        rounded-xl
        bg-white/40
        border border-white/50
        text-black
        placeholder-gray-700
        focus:outline-none
        focus:ring-2
        focus:ring-purple-500">

</div>

				<!-- Register Button -->

				<button type="submit"
					class="w-full
py-3
rounded-xl
bg-gradient-to-r
from-purple-600
via-pink-500
to-orange-500
text-white
font-bold
text-lg
shadow-lg
hover:scale-105
hover:shadow-xl
transition-all
duration-300">

					Create Account</button>

			</form>

			<!-- Login -->

			<div class="text-center mt-8">

				<p class="text-white">

					Already have an account? <a href="login.jsp"
						class="font-bold
text-yellow-300
hover:text-yellow-200
hover:underline">

						Login Here </a>

				</p>

			</div>

		</div>

	</div>

	<!-- Footer -->

	<footer
		class="relative z-10
bg-black/40
backdrop-blur-md
text-center
py-4">

		<p class="text-white text-sm">© 2026 Beyond Celebrations. All
			Rights Reserved.</p>

	</footer>
	    <!-- Footer -->
<footer class="bg-[#1b0f1d]/95 backdrop-blur-md border-t border-yellow-500/20">

    <div class="max-w-7xl mx-auto px-8 py-12">

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-10">

            <!-- Company -->
            <div>

                <div class="flex items-center mb-5">

                    <div class="w-16 h-16 rounded-full border-2 border-yellow-400 flex items-center justify-center">

                        <span class="text-yellow-300 text-2xl font-bold"
                              style="font-family:Cinzel;">
                            BC
                        </span>

                    </div>

                    <div class="ml-4">

                        <h2 class="text-white text-2xl"
                            style="font-family:Cinzel;">
                            Beyond Celebrations
                        </h2>

                        <p class="text-yellow-300"
                           style="font-family:'Great Vibes';">
                            Creating Memories Forever
                        </p>

                    </div>

                </div>

                <p class="text-gray-400 text-sm leading-7">
                    Beyond Celebrations is a premium event management
                    platform specializing in weddings, birthdays,
                    corporate events, anniversaries and customized
                    celebrations. We transform your dream events into
                    unforgettable memories with elegance and creativity.
                </p>

            </div>

            <!-- Office Address -->
            <div>

                <h3 class="text-yellow-300 text-xl font-semibold mb-5">
                    Our Office
                </h3>

                <div class="space-y-4 text-gray-300 text-sm">

                    <p>
                        <i class="fa-solid fa-location-dot text-yellow-400 mr-2"></i>
                        Bengaluru, Karnataka, India
                    </p>

                    <p>
                        <i class="fa-solid fa-phone text-yellow-400 mr-2"></i>
                        +91 98765 43210
                    </p>

                    <p>
                        <i class="fa-solid fa-envelope text-yellow-400 mr-2"></i>
                        info@beyondcelebrations.com
                    </p>

                </div>

            </div>

            <!-- Quick Links -->
            <div>

                <h3 class="text-yellow-300 text-xl font-semibold mb-5">
                    Quick Links
                </h3>

                <ul class="space-y-3 text-gray-300">

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Home
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            About Us
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Services
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Gallery
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Contact Us
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Privacy Policy
                        </a>
                    </li>

                    <li>
                        <a href="#" class="hover:text-yellow-300 transition">
                            Terms & Conditions
                        </a>
                    </li>

                </ul>

            </div>

            <!-- Working Hours -->
            <div>

                <h3 class="text-yellow-300 text-xl font-semibold mb-5">
                    Working Hours
                </h3>

                <div class="space-y-3 text-gray-300">

                    <p>
                        <strong class="text-white">
                            Monday - Saturday
                        </strong>
                    </p>

                    <p>
                        9:00 AM - 7:00 PM
                    </p>

                    <p>
                        <strong class="text-white">
                            Sunday
                        </strong>
                    </p>

                    <p>
                        Closed
                    </p>

                </div>

                <div class="mt-6">

                    <h4 class="text-yellow-300 font-semibold mb-2">
                        Follow Us
                    </h4>

                    <div class="flex space-x-4 text-xl">

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-facebook"></i>
                        </a>

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-instagram"></i>
                        </a>

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-x-twitter"></i>
                        </a>

                        <a href="#" class="text-white hover:text-yellow-300">
                            <i class="fab fa-linkedin"></i>
                        </a>

                    </div>

                </div>

            </div>

        </div>

        <!-- Bottom Footer -->

        <div class="border-t border-gray-700 mt-10 pt-6">

            <p class="text-center text-gray-400 text-sm">

                © 2026 <span class="text-yellow-300 font-semibold">
                    Beyond Celebrations
                </span>.
                All Rights Reserved.

            </p>

        </div>

    </div>

</footer>

</body>
</html>
</body>
</html>