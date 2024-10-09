<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Extracurricular Portal</title>
    <link rel="stylesheet" href="css/home.css" />
</head>
<body>
    <div class="container">
        <aside class="sidebar">
            <div class="logo">
                <img src="images/logo.png" alt="Logo" />
            </div>
            <ul class="menu">
                <li><a href="/home.jsp">Dashboard</a></li>
                <li><a href="/clubs">Clubs</a></li>
                <li><a href="/registration.jsp">Registration</a></li>
                <li><a href="/awards">Awards</a></li>
                <li><a href="/notice">Notice</a></li>
                <li><a href="/schedule">Schedule</a></li>
            </ul>
            <div class="logout">
                <a href="/index.jsp">Logout</a>
            </div>
        </aside>
        
        <main class="main-content">
            <header class="header">
                <div class="date"></div>
                <div class="user-info">
                    <div class="user-name">....</div>
                    <div class="user-year"> year</div>
                    <div class="user-avatar">
                        <img src="images/avatar.png" alt="User Avatar" />
                    </div>
                </div>
            </header>

            <section class="welcome">
                <h1>Welcome</h1>
                <p>Always stay updated in your extracurricular portal</p>
                <div class="welcome-image">
                    <img src="images/welcome.png" alt="Welcome Image" />
                </div>
            </section>

            <section class="instructors">
                <h2>Event Instructors</h2>
                <div class="instructor-list">
                    <div class="instructor">
                        <img src="images/instruct1.jpg" alt="Instructor 1" />
                    </div>
                    <div class="instructor">
                        <img src="images/instruct2.webp" alt="Instructor 2" />
                    </div>
                    <div class="instructor">
                        <img src="images/instruct3.jpg" alt="Instructor 3" />
                    </div>
                </div>
            </section>

            <section class="statistics">
                <div class="stat-box">
                    <img src="images/avalievents.png" alt="Events Icon" />
                    <div>Available Events</div>
                    <div class="stat-value">5</div>
                </div>
                <div class="stat-box">
                    <img src="images/enrolled.png" alt="Clubs Icon" />
                    <div>Enrolled Clubs</div>
                    <div class="stat-value">2</div>
                </div>
                <div class="stat-box">
                    <img src="images/awards.png" alt="Awards Icon" />
                    <div>Archived Awards</div>
                    <div class="stat-value">2</div>
                </div>
            </section>
        </main>
    </div>
  </body>
</html>
