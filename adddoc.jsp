<%-- 
    Document   : adddoc
    Created on : Sep 22, 2024, 7:50:47 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body
            {
               background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZfx72hh6YNfPmuCZzc-ckjVfwb84fiKncZA&s");
               background-size:1400px 800px;
               background-position:top;
            }
     
  
            .error {
                color: red;
                font-size: 12px;
            }
            .error-border {
                border: 2px solid red;
            }
            .mandatory {
                color: red;
            }
        </style>
        </center>

        <script>
            function validate() {
                var form = document.forms["form"];
                var isValid = true;
                var fields = [
                    { name: "name", message: "Please enter name" },
                    { name: "uname", message: "Please enter username" },
                    { name: "pwd", message: "Please enter password" },
                    { name: "address", message: "Please enter address" },
                    { name: "phone", message: "Please enter a valid phone number", pattern: /^[6-9]\d{9}$/ },
                    { name: "email", message: "Please enter a valid email", pattern: /^[^\s@]+@[^\s@]+\.[^\s@]+$/ },
                    { name: "city", message: "Please enter city" },
                    { name: "gender", message: "Please enter gender" },
                    { name: "blood_group", message: "Please enter blood group" },
                    { name: "age", message: "Please enter valid age", pattern: /^[1-9][0-9]?$/ }
                ];

                // Remove previous error messages
                var errors = document.getElementsByClassName("error");
                while (errors.length > 0) {
                    errors[0].parentNode.removeChild(errors[0]);
                }

                var inputs = document.getElementsByTagName("input");
                for (var i = 0; i < inputs.length; i++) {
                    inputs[i].classList.remove("error-border");
                }

                // Check all fields
                for (var i = 0; i < fields.length; i++) {
                    var field = fields[i];
                    var input = form[field.name];
                    var value = input.value.trim();
                    var error = document.createElement("div");
                    error.className = "error";

                    // Validate field
                    if (value === "") {
                        error.innerHTML = field.message;
                        input.classList.add("error-border");
                        input.parentNode.appendChild(error);
                        isValid = false;
                    } else if (field.pattern && !field.pattern.test(value)) {
                        error.innerHTML = "Please enter a valid " + field.name;
                        input.classList.add("error-border");
                        input.parentNode.appendChild(error);
                        isValid = false;
                    }
                }

                return isValid;
            }
        </script>
</head>
        <body>
        <center>
            <h1>Add Doctor Details</h1>
            <form action="adddoccon.jsp" method="post" onsubmit="return validate()" name="form">
                <table>
                    <tr>
                        <td>Name: <span class="mandatory">*</span></td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td>UserName: <span class="mandatory">*</span></td>
                        <td><input type="text" name="uname"></td>
                    </tr>
                    <tr>
                        <td>Password: <span class="mandatory">*</span></td>
                        <td><input type="password" name="pwd"></td>
                    </tr>
                    <tr>
                        <td>Date Of Birth:</td>
                        <td><input type="date" name="dob"></td>
                    </tr>
                    <tr>
                        <td>Address: <span class="mandatory">*</span></td>
                        <td><input type="text" name="address"></td>
                    </tr>
                    <tr>
                        <td>Phone: <span class="mandatory">*</span></td>
                        <td><input type="number" name="phone"></td>
                    </tr>
                    <tr>
                        <td>Email Id: <span class="mandatory">*</span></td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    <tr>
                        <td>City: <span class="mandatory">*</span></td>
                        <td><input type="text" name="city"></td>
                    </tr>
                    <tr>
                        <td>Gender: <span class="mandatory">*</span></td>
                        <td><input type="text" name="gender"></td>
                    </tr>
                    <tr>
                        <td>Blood Group: <span class="mandatory">*</span></td>
                        <td><input type="text" name="blood_group"></td>
                    </tr>
                    <tr>
                        <td>Joining Date:</td>
                        <td><input type="date" name="joining_date"></td>
                    </tr>
                    <tr>
                        <td>Age: <span class="mandatory">*</span></td>
                        <td><input type="number" name="age"></td>
                    </tr>
                    <tr>
                        <td>Specialization:</td>
                        <td><input type="text" name="specialization"></td>
                    </tr>
                    <tr>
                        <td>Clinic Number:</td>
                        <td><input type="number" name="clinic_number"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Submit" style="background-color:green"></td>
                        <td><input type="reset" value="Cancel" style="background-color:red"></td>
                    </tr>
                </table>
    </body>
</html>
