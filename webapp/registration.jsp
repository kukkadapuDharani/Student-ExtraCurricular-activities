<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Club Registration</title>
    <link rel="stylesheet" href="css/registration.css" />
</head>
<body>
    <div class="registration-container">
        <div class="sidebar">
            <a href="home.jsp" class="back-btn">← Back To Dashboard</a>
        </div>
        <div class="content">
            <h2>Club Registration Form</h2>
            <form action="register" method="POST">
                <table class="registration-table">
                    <tr>
                        <td><label for="fullName">Full Name:</label></td>
                        <td><input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required></td>
                    </tr>
                    <tr>
                        <td><label for="rollNo">University Roll Number:</label></td>
                        <td><input type="text" id="rollNo" name="rollNo" placeholder="Enter your roll number" required></td>
                    </tr>
                    <tr>
                        <td><label for="department">Department:</label></td>
                        <td>
                            <select id="department" name="department" required>
                                <option value="CSE">Computer Science</option>
                                <option value="ECE">Electronics</option>
                                <option value="EEE">Electrical</option>
                                <option value="MECH">Mechanical</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="year">Year of Study:</label></td>
                        <td>
                            <select id="year" name="year" required>
                                <option value="1">1st Year</option>
                                <option value="2">2nd Year</option>
                                <option value="3">3rd Year</option>
                                <option value="4">4th Year</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="email">Email Address:</label></td>
                        <td><input type="email" id="email" name="email" placeholder="Enter your email address" required></td>
                    </tr>
                    <tr>
                        <td><label for="mobile">Contact Number:</label></td>
                        <td><input type="tel" id="mobile" name="mobile" placeholder="Enter your mobile number" required></td>
                    </tr>
                    <tr>
                        <td><label for="dob">Date of Birth:</label></td>
                        <td><input type="date" id="dob" name="dob" required></td>
                    </tr>
                    <tr>
                        <td><label for="event">Event Name:</label></td>
                        <td><input type="text" id="event" name="event" placeholder="Enter event name" required></td>
                    </tr>
                    <tr>
                        <td><label for="category">Event Category:</label></td>
                        <td>
                            <select id="category" name="category" required>
                                <option value="sports">Sports</option>
                                <option value="arts">Arts</option>
                                <option value="technology">Technology</option>
                                <option value="culture">Cultural</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="club">Club:</label></td>
                        <td>
                            <select id="club" name="club" required>
                                <option value="drama">Drama Club</option>
                                <option value="tech">Tech Club</option>
                                <option value="music">Music Club</option>
                                <option value="sports">Sports Club</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="team">Team/Individual:</label></td>
                        <td>
                            <select id="team" name="team" required>
                                <option value="team">Team</option>
                                <option value="individual">Individual</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="teamName">Team Name (if applicable):</label></td>
                        <td><input type="text" id="teamName" name="teamName" placeholder="Enter your team name"></td>
                    </tr>
                    <tr>
                        <td><label for="teamMembers">Number of Team Members:</label></td>
                        <td><input type="number" id="teamMembers" name="teamMembers" placeholder="Enter number of team members"></td>
                    </tr>
                    <tr>
                        <td><label for="eventDate">Event Date:</label></td>
                        <td><input type="date" id="eventDate" name="eventDate" required></td>
                    </tr>
                    <tr>
                        <td><label for="timeSlot">Preferred Time Slot:</label></td>
                        <td>
                            <select id="timeSlot" name="timeSlot" required>
                                <option value="morning">Morning</option>
                                <option value="afternoon">Afternoon</option>
                                <option value="evening">Evening</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td><label for="participationType">Participation Type:</label></td>
                        <td>
                            <select id="participationType" name="participationType" required>
                                <option value="volunteer">Volunteer</option>
                                <option value="participant">Participant</option>
                            </select>
                        </td>
                    </tr>
                </table>
                <div class="form-actions">
                    <button type="submit" class="submit-btn">Submit Registration</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
