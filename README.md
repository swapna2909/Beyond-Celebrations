🎉 Beyond Celebrations

Beyond Celebrations is a full-stack Event Management System developed using Java, JSP, Servlets, JDBC, MySQL, HTML, CSS, Tailwind CSS, and JavaScript. The application simplifies event planning by allowing customers to browse event packages, make bookings, and track their events while enabling administrators to efficiently manage customers, event categories, event types, venues, and bookings.

📖 Project Overview

Beyond Celebrations is a web-based application designed to automate the event booking process. Customers can register, log in, browse event packages, select venues, and book events online. Administrators can manage the complete platform through a centralized dashboard, ensuring smooth event management and customer satisfaction.

The system follows the MVC (Model-View-Controller) architecture, providing clean code organization, easy maintenance, and scalability.

🏗️ System Architecture
                 +----------------------+
                 |      Client Browser  |
                 +----------+-----------+
                            |
                            |
                      HTTP Request
                            |
                            ▼
                 +----------------------+
                 |    JSP Pages (View)  |
                 +----------+-----------+
                            |
                            |
                            ▼
                +-----------------------+
                |    Servlet Controller |
                +----------+------------+
                           |
                           |
               Business Logic & Validation
                           |
                           ▼
                +-----------------------+
                |      DAO Layer        |
                +----------+------------+
                           |
                           |
                        JDBC API
                           |
                           ▼
                +-----------------------+
                |      MySQL Database   |
                +-----------------------+
