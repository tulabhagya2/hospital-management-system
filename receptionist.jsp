<%-- 
    Document   : receptionist.jsp
    Created on : Sep 25, 2024, 8:58:01 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-image:url("https://img.freepik.com/free-photo/medical-banner-with-stethoscope_23-2149611199.jpg?w=740&t=st=1727269401~exp=1727270001~hmac=b1289212b722cd93da330d4007c5287846b514a993ddbcabd052a69e01eeec3d");
                background-repeat:no-repeat;
                background-size:1400px 800px;
            }
            .error{
                color: red;
                font-size: 12px;
                margin-top: 5px;
            }
              input {
      display: block;
      margin-bottom: 10px;
    }
        </style>
  </style>
  <script>
            function validateForm() {
                let email = document.getElementById("email").value.trim();
                let password = document.getElementById("pwd").value.trim(); // Using 'pwd' to match your backend variable
                let emailError = document.getElementById("emailError");
                let passwordError = document.getElementById("passwordError");

                let isValid = true;

                // Reset error messages
                emailError.textContent = "";
                passwordError.textContent = "";

                // Email Validation
                let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (email === "") {
                    emailError.textContent = "Email is required.";
                    isValid = false;
                } else if (!emailPattern.test(email)) {
                    emailError.textContent = "Enter a valid email address.";
                    isValid = false;
                }

                // Password Validation (Minimum 6 characters)
                if (password === "") { // Use 'pwd' here to match the backend
                    passwordError.textContent = "Password is required.";
                    isValid = false;
                } else if (password.length < 6) {
                    passwordError.textContent = "Password must be at least 6 characters.";
                    isValid = false;
                }

                return isValid;
            }
        </script>
    </head>
    <body>
        <center>
            <h2>Receptionist Login</h2>
            <form id="LogintForm" action="receplogcon.jsp" method="post" onsubmit="return validateForm();">
                <table>
                    <tr>
                        <td>
                            <div>
                                <label for="email">Email:</label><br>
                                <input type="text" id="email" name="email">
                                <span id="emailError" class="error"></span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <div>
                                <label for="pwd">Password:</label><br>
                                <input type="password" id="pwd" name="pwd">
                                <span id="passwordError" class="error"></span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Login" style="background-color:green"></td>
                        <td><input type="reset" value="Cancel" style="background-color:red"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
