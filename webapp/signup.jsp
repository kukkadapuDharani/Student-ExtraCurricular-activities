<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign Up</title>
    <link rel="stylesheet" href="css/signup.css" />
</head>
<body>
    <div class="loginWindow">
        <div class="loginHeader">Sign Up</div>
        <div class="loginContent">
            <div style="display:block;padding-top:20px">First Name*</div>
            <input type="text" id="firstName" required />
            <div style="display:block;padding-top:20px">Last Name*</div>
            <input type="text" id="lastName" required />
            <div style="display:block;padding-top:20px">Email*</div>
            <input type="text" id="email" required />
            <div style="display:block;padding-top:20px">Username*</div>
            <input type="text" id="username" required />
            <div style="display:block;padding-top:20px">Password*</div>
            <input type="password" id="password" required />
            <div style="display:block;padding-top:20px">Confirm Password*</div>
            <input type="password" id="confirmPassword" required />
            <div style="display:block;height:20px"></div>
            <button class="signinButton" onclick="signUp()">Sign Up</button>
            <div style="display:block;height:80px;line-height:50px"></div>
            <label id="ack"></label>
            <div style="display:block;text-align:center">Already have an account?</div>
            <label class="signuplabel" onclick="signIn()">SIGN IN NOW</label>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        function signUp() {
            // Validate fields are not empty
            const firstName = document.getElementById('firstName').value;
            const lastName = document.getElementById('lastName').value;
            const email = document.getElementById('email').value;
            const username = document.getElementById('username').value;
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;

            if (firstName === '' || lastName === '' || email === '' || username === '' || password === '' || confirmPassword === '') {
                document.getElementById('ack').innerHTML = "Please fill all fields";
                document.getElementById('ack').style.color = 'red';
                return;
            }

            // Validate email format
            const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
            if (!emailPattern.test(email)) {
                document.getElementById('ack').innerHTML = "Invalid email format";
                document.getElementById('ack').style.color = 'red';
                return;
            }

            // Validate password matching
            if (password !== confirmPassword) {
                document.getElementById('ack').innerHTML = "Passwords do not match";
                document.getElementById('ack').style.color = 'red';
                return;
            }

            // Create data payload
            const data = JSON.stringify({
                firstName: firstName,
                lastName: lastName,
                email: email,
                username: username,
                password: password
            });

            // Call API
            const url = "http://localhost:8080/user/signup";
            callApi("POST", url, data, getResponse);
        }

        function getResponse(res) {
            if (res === 400 || res === 409) { // Handling errors like user already exists or bad request
                document.getElementById('ack').style.color = "red";
                document.getElementById('ack').innerHTML = "Signup failed! Please try again.";
            } else {
                document.getElementById('ack').innerHTML = "";
                window.location.href = "/home"; // Redirect to home page after successful signup
            }
        }

        function signIn() {
            window.location.href = "/signin"; // Redirect to Sign In page
        }

        // Call API function
        function callApi(method, url, data, callback) {
            const xhr = new XMLHttpRequest();
            xhr.open(method, url, true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    callback(xhr.responseText);
                } else if (xhr.readyState === 4) {
                    callback(xhr.status);
                }
            };
            xhr.send(data);
        }
    </script>
</body>
</html>
