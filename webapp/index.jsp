<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Sign In</title>
    <link rel="stylesheet" href="css/styles.css" />
</head>
<body>
    <div class="loginWindow">
        <div class="loginHeader">Sign In</div>
        <div class="loginContent">
            <div style="display:block;padding-top:20px">Username*</div>
            <input type="text" id="T1" required />
            <div style="display:block;padding-top:20px">Password*</div>
            <input type="password" id="T2" required />
            <div style="display:block;padding-top:10px;padding-bottom:10px;text-align:right">
                Forgot <label style="color:blue;cursor:pointer;">Password</label>
            </div>
            <button class="signinButton" onclick="signIn()">Sign In</button>
            <div style="display:block;height:80px;line-height:50px"></div>
            <label id="ack"></label>
            <div style="display:block;text-align:center">Don't have an account?</div>
            <label class="signuplabel" onclick="signUp()">SIGN UP NOW</label>
        </div>
    </div>

    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript">
        function signIn() {
            // Validate fields are not empty
            const username = document.getElementById('T1').value;
            const password = document.getElementById('T2').value;

            if (username === '' || password === '') {
                document.getElementById('ack').innerHTML = "Please fill all fields";
                document.getElementById('ack').style.color = 'red';
                return;
            }

            // Create data payload
            const data = JSON.stringify({
                username: username,
                password: password
            });

            // Call API
            const url = "http://localhost:8080/user/login";
            callApi("POST", url, data, getResponse);
        }

        function getResponse(res) {
            if (res === 401) {
                document.getElementById('ack').style.color = "red";
                document.getElementById('ack').innerHTML = "Invalid Credentials!";
            } else {
                document.getElementById('ack').innerHTML = "";
                window.location.href = "/home"; // Redirect to home page
            }
        }

        function signUp() {
            window.location.href = "/signup";
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
