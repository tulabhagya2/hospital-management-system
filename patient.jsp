<%-- 
    Document   : patient
    Created on : Apr 11, 2025, 3:45:32 PM
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
        
                <script>
function validateForm() {
    const email = document.getElementById("email").value.trim();
    const pwd = document.getElementById("pwd").value.trim();
    let emailError = document.getElementById("emailError");
    let pwdError = document.getElementById("pwdError");

    let isValid = true;

    // Clear previous errors
    emailError.textContent = "";
    pwdError.textContent = "";

    if (email === "") {
        emailError.textContent = "Please enter email";
        isValid = false;
    }

    if (pwd === "") {
        pwdError.textContent = "Please enter password";
        isValid = false;
    }

    // Prevent form submission if any field is invalid
    return isValid;
}
</script>

    </head>
    <body><center><h2>Patient Login</h2></center>
    <center><form action="patientlogcon.jsp" method="post" onsubmit="return validateForm();">
    <table>
        <tr>
            <td>Email:</td>
            <td>
                <input type="text" name="Email" id="email">
                <br><span id="emailError" class="error"></span>
            </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td>
                <input type="password" name="pwd" id="pwd">
                <br><span id="pwdError" class="error"></span>
            </td>
        </tr>
        <tr>
            <td><input type="submit" value="Login" style="background-color:green"></td>
            <td><input type="reset" value="Cancel" style="background-color:red"></td>
        </tr>
    </table>
        </form></center>
    </body>
</html>