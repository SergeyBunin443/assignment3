<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Login Page</title>
    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;
            
            var usernameRegex = /^[a-zA-Z0-9]{5}$/;  // Exactly 5 alphanumeric chars
            var passwordRegex = /^[0-9$_]+$/; // Only numbers, $, _

            if (!usernameRegex.test(username)) {
                alert("Username must be exactly 5 characters long and alphanumeric.");
                return false;
            }
            if (!passwordRegex.test(password)) {
                alert("Password can only contain numbers, $, _");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>Login</h2>
    <form action="LoginServlet" method="POST" onsubmit="return validateForm()">
        <table>
            <tr><td>Username:</td><td><input type="text" id="username" name="username" required></td></tr>
            <tr><td>Password:</td><td><input type="password" id="password" name="password" required></td></tr>
            <tr><td colspan="2"><button type="submit">Login</button></td></tr>
        </table>
    </form>
</body>
</html>
