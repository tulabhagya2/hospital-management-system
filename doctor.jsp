<%-- 
    Document   : doctor
    Created on : Sep 15, 2024, 2:09:21 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title><style>
            
            body
            {
               background-image:url("https://www.shutterstock.com/image-photo/healthcare-medical-concept-medicine-doctor-260nw-1702083688.jpg");
               background-position:top;
               background-repeat:no-repeat;
               background-size:1400px 800px;
            }
            .error {
                color: red;
                font-size: 12px;
                margin-top: 5px;
            }
            input {
                display: block;
                margin-bottom: 10px;
            }
        </style>
        <script>
            function validateForm() {
                let email = document.getElementById("email").value.trim();
                let password = document.getElementById("pwd").value.trim();
                let specialization = document.getElementById("specialization").value;
                
                let emailError = document.getElementById("emailError");
                let passwordError = document.getElementById("passwordError");
                let specializationError = document.getElementById("specializationError");
                
                let isValid = true;

                // Clear previous error messages
                emailError.textContent = "";
                passwordError.textContent = "";
                specializationError.textContent = "";

                // Email validation
                let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
                if (email === "") {
                    emailError.textContent = "Email is required.";
                    isValid = false;
                } else if (!emailPattern.test(email)) {
                    emailError.textContent = "Enter a valid email address.";
                    isValid = false;
                }

                // Password validation
                if (password === "") {
                    passwordError.textContent = "Password is required.";
                    isValid = false;
                }

                // Specialization validation
                if (specialization === "select") {
                    specializationError.textContent = "Please select a specialization.";
                    isValid = false;
                }

                // Return false to prevent form submission if any validation fails
                return isValid;
            }
        </script>
    </head>
    <body>
        <center><h2>Doctor Login</h2></center>
        <center>
            <form action="doctorlogcon.jsp" method="post" onsubmit="return validateForm();">
                <table>
                    <tr>
                        <td>Email:</td>
                        <td>
                            <input type="text" id="email" name="Email">
                            <span id="emailError" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>Password:</td>
                        <td>
                            <input type="password" id="pwd" name="pwd">
                            <span id="passwordError" class="error"></span>
                        </td>
                    </tr>
                    <tr>
                        <td>Specialization:</td>
                        <td>
                            <select id="specialization" name="specialization">
                                <option value="select">Select</option>
                                <option value="cardiologist">Cardiologist</option>
                                <option value="nephrologist">Nephrologist</option>
                                <option value="urologist">Urologist</option>
                            </select>
                            <span id="specializationError" class="error"></span>
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
