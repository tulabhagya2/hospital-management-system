<%-- 
    Document   : addreceptionist
    Created on : Sep 22, 2024, 8:27:20 PM
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
                background-image:url("https://img.freepik.com/premium-photo/empty-hospital-reception-desk-waiting-area-lobby-medical-health-center-variation-1_178416-326.jpg?w=1060");
                background-position:top;
                background-repeat:no-repeat;
                background-size:1400px 800px;
                }
                .error {
    color: red;
    font-size: 12px;
    margin-top: 4px;
}
label span {
    color: red;
    font-weight: bold;
}
 </style>
 <script>
     function validateForm() {
    // Remove old errors
    var errors = document.getElementsByClassName("error");
    for (var i = 0; i < errors.length; i++) {
        errors[i].parentNode.removeChild(errors[i]);
    }

    var inputs = document.getElementsByTagName("input");
    for (var i = 0; i < inputs.length; i++) {
        inputs[i].classList.remove("error-border");
    }

    var isValid = true;
    var fields = [
        { name: "name", message: "Please enter name" },
        { name: "uname", message: "Please enter username" },
        { name: "pwd", message: "Please enter password", minLen: 6 },
        { name: "email", message: "Please enter a valid email", pattern: /^[^\s@]+@[^\s@]+\.[^\s@]+$/ },
        { name: "fathername", message: "Please enter father's name" },
        { name: "phone", message: "Please enter valid phone number", pattern: /^[6-9]\d{9}$/ },
        { name: "marital_status", message: "Please enter qualification" },
        { name: "city", message: "Please enter city" },
        { name: "gender", message: "Please enter gender" },
        { name: "blood_group", message: "Please enter blood group" },
        { name: "joining_date", message: "Please select joining date" },
        { name: "age", message: "Please enter valid age", pattern: /^[1-9][0-9]?$/ },
        { name: "address", message: "Please enter address" },
        { name: "dob", message: "Please select date of birth" }
    ];

    // Validate each field
    for (var i = 0; i < fields.length; i++) {
        var field = fields[i];
        var input = document.forms["form"][field.name]; // Form reference
        var value = input.value.trim();
        var error = document.createElement("div");
        error.className = "error";
        
        // Check if the field is empty or invalid
        if (value === "") {
            error.textContent = field.message;
            input.classList.add("error-border");
            input.parentNode.appendChild(error);
            isValid = false;
        } else if (field.pattern && !field.pattern.test(value)) {
            error.textContent = "Invalid " + field.name;
            input.classList.add("error-border");
            input.parentNode.appendChild(error);
            isValid = false;
        } else if (field.minLen && value.length < field.minLen) {
            error.textContent = field.message + " (Min " + field.minLen + " characters)";
            input.classList.add("error-border");
            input.parentNode.appendChild(error);
            isValid = false;
        }
    }

    return isValid; // Return true if all fields are valid
}
    
    </script>
    </head>
    <body>
        <center><h3>Add Receptionist Details</h3>
            <form action="addreceptionistcon.jsp" method="post" name="form" onsubmit="return validateForm();">
                <table>
                    <tr><td>Name:</td><td><input type="text" name="name"></td></tr>
                    <tr><td>Username:</td><td><input type="text" name="uname"></td></tr>
                    <tr><td>Password:</td><td><input type="password" name="pwd"></td></tr>
                    <tr><td>Email:</td><td><input type="text" name="email"></td></tr>
                    <tr><td>Father's Name:</td><td><input type="text" name="fathername"></td></tr>
                    <tr><td>Phone:</td><td><input type="number" name="phone"></td></tr>
                    <tr><td>Qualification:</td><td><input type="text" name="marital_status"></td></tr>
                    <tr><td>City:</td><td><input type="text" name="city"></td></tr>
                    <tr><td>Gender:</td><td><input type="text" name="gender"></td></tr>
                    <tr><td>Blood Group:</td><td><input type="text" name="blood_group"></td></tr>
                    <tr><td>Joining Date:</td><td><input type="date" name="joining_date" min="1950-01-01" max="2025-12-31"></td></tr>
                    <tr><td>Age:</td><td><input type="number" name="age"></td></tr>
                    <tr><td>Address:</td><td><input type="text" name="address"></td></tr>
                    <tr><td>Date of Birth:</td><td><input type="date" name="dob" min="1950-01-01" max="2025-12-31"></td></tr>
                    <tr>
                        <td><input type="submit" value="Submit"></td>
                        <td><input type="reset" value="Cancel"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
