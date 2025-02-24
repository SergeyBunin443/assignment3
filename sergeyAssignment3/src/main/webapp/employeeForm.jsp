<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <script>
        function validateForm() {
            var inputs = document.querySelectorAll("input");
            var specialCharRegex = /[<>!@#%^&*()+=]/;  // Restrict special characters

            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].value.trim() === "") {
                    alert("All fields are required.");
                    return false;
                }
                if (specialCharRegex.test(inputs[i].value)) {
                    alert("Special characters are not allowed.");
                    return false;
                }
            }
            return true;
        }
    </script>
</head>
<body>
    <h2>Employee Registration Form</h2>
    <form action="EmployeeServlet" method="POST" onsubmit="return validateForm()">
        <table>
            <tr><td>Full Name:</td><td><input type="text" name="fullName" required></td></tr>
            <tr><td>Company:</td><td><input type="text" name="company" required></td></tr>
            <tr><td>Payroll ID:</td><td><input type="text" name="payrollId" required></td></tr>
            <tr><td>Job Title:</td><td><input type="text" name="jobTitle" required></td></tr>
            <tr><td>Department:</td><td><input type="text" name="department" required></td></tr>
            <tr><td>Contact:</td><td><input type="text" name="contact" required></td></tr>
            <tr><td colspan="2"><button type="submit">Register</button></td></tr>
        </table>
    </form>
</body>
</html>
