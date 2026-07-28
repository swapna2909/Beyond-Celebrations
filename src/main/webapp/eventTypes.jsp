<%@ page import="java.util.List"%>
<%@ page import="com.dto.Event_type"%>

<!DOCTYPE html>
<html>

<head>

<meta charset="UTF-8">

<title>Event Types | Beyond Celebrations</title>


<script src="https://cdn.tailwindcss.com"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">


<link rel="preconnect" href="https://fonts.googleapis.com">

<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>

<link
	href="https://fonts.googleapis.com/css2?family=Cinzel:wght@600;700&family=Poppins:wght@300;400;500;600&display=swap"
	rel="stylesheet">


</head>



<body class="bg-gray-100" style="font-family: Poppins;">



	<!-- NAVBAR -->

	<nav class="bg-white shadow-lg">

		<div
			class="max-w-7xl mx-auto px-8 py-5 flex justify-between items-center">


			<div class="flex items-center gap-4">


				<div
					class="
w-14
h-14
rounded-full
bg-gradient-to-r
from-purple-700
to-pink-500
flex
items-center
justify-center
text-white
font-bold
text-2xl
">

					BC</div>



				<div>

					<h1 class="text-2xl text-purple-700 font-bold"
						style="font-family: Cinzel;">Beyond Celebrations</h1>


					<p class="text-yellow-600 text-sm">More than events, we create
						experiences</p>


				</div>


			</div>



			<a href="customerdashboard"
				class="
bg-purple-700
text-white
px-5
py-2
rounded-xl
hover:bg-purple-800
">

				<i class="fa-solid fa-arrow-left"></i> Dashboard

			</a>


		</div>

	</nav>





	<!-- HEADER -->


	<section
		class="
bg-gradient-to-r
from-purple-700
via-pink-600
to-orange-500
text-white
py-14
">


		<div class="max-w-7xl mx-auto px-8">


			<h1 class="text-5xl font-bold">Choose Your Perfect Event</h1>


			<p class="mt-4 text-lg">Select an event type and make your
				celebration unforgettable.</p>


		</div>


	</section>







	<!-- EVENT TYPES -->

	<div class="max-w-7xl mx-auto px-8 py-12">



		<div class="grid md:grid-cols-3 gap-8">



			<%
			List<Event_type> eventList = (List<Event_type>) request.getAttribute("eventList");

			if (eventList != null && !eventList.isEmpty()) {

				for (Event_type event : eventList) {
			%>





			<div
				class="
bg-white
rounded-3xl
shadow-xl
overflow-hidden
hover:-translate-y-3
hover:shadow-2xl
transition-all
duration-300
">


<%
String image = "";

if(event.getEvent_name().equalsIgnoreCase("Royal Wedding")) {

    image = "images/royal-wedding.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Traditional Wedding")) {

    image = "images/traditional-wedding.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Destination Wedding")) {

    image = "images/destination-wedding.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Kids Birthday Party")) {

    image = "images/kids-birthday.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Grand Birthday Celebration")) {

    image = "images/grand-birthday.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Corporate Meeting")) {

    image = "images/corporate-meeting.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Product Launch Event")) {

    image = "images/product-launch.jpg";

}
else if(event.getEvent_name().equalsIgnoreCase("Romantic Anniversary")) {

    image = "images/anniversary.jpg";

}
else {

    image = "images/default-event.jpg";

}

%>


				<!-- CARD HEADER -->


				<div
					class="
h-36
bg-gradient-to-r
from-purple-700
via-pink-500
to-orange-500
flex
items-center
justify-center
">


					<i class="
fa-solid
fa-champagne-glasses
text-white
text-6xl
"></i>


				</div>





				<div class="p-7">





					<h2 class="
text-2xl
font-bold
text-gray-800
">

						<%=event.getEvent_name()%>

					</h2>






					<p class="text-gray-500 mt-3 leading-7">

						<%=event.getDescription()%>

					</p>






					<hr class="my-5">





					<!-- EVENT DETAILS -->


					<div class="space-y-3">



						<p class="text-gray-700">

							<i class="fa-solid fa-hashtag text-purple-700 mr-2"></i> <b>Event
								ID:</b>

							<%=event.getEvent_type_id()%>


						</p>




						<p class="text-gray-700">


							<i class="fa-solid fa-wallet text-purple-700 mr-2"></i> <b>Starting
								Budget:</b> 
							<%=event.getMin_budget()%>


						</p>




						<p class="text-gray-700">


							<i class="fa-solid fa-calendar-check text-purple-700 mr-2"></i> <b>Status:</b>


							Available


						</p>




					</div>







					<!-- BUTTON -->


					<a href="bookevent.jsp?eventTypeId=<%=event.getEvent_type_id()%>"
						class="
mt-7
block
text-center
bg-gradient-to-r
from-purple-700
to-pink-500
text-white
py-3
rounded-xl
font-semibold
shadow-lg
hover:scale-105
transition
">


						<i class="fa-solid fa-calendar-plus mr-2"></i> Book Now


					</a>




				</div>



			</div>





			<%
			}

			}

			else {
			%>



			<div
				class="
col-span-3
bg-white
rounded-3xl
shadow-lg
p-12
text-center
">


				<i class="fa-solid fa-calendar-xmark text-5xl text-gray-300"></i>


				<h2 class="text-xl text-gray-500 mt-5">No Event Types Available

				</h2>


			</div>



			<%
			}
			%>





		</div>


	</div>





	<footer class="bg-[#1b0f1d] text-white text-center py-6"> ©
		2026 Beyond Celebrations. All Rights Reserved. </footer>




</body>

</html>