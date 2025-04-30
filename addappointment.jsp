<%-- 
    Document   : addappointment
    Created on : Sep 22, 2024, 8:32:49 PM
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
                background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaXopWUbkVB4_E3nJudi8jwdiu6dBTpzhYlg&s");
                background-repeat:no-repeat;
                background-size:1400px 800px;
               background-position:top;
                
            } 
            .error {
                color: red;
                font-size: 12px;
                margin-top: 5px;
            }
            .error-border {
                border: 2px solid red;
            }
        
            .mandatory::after {
                content: " *";
                color: red;
            }

            .error {
                color: red;
                font-size: 12px;
                margin-top: 5px;
            }

            .error-border {
                border: 2px solid red;
            }
        </style>
        <script type="text/javascript">
            function validate() {
                // Remove old errors
                var errors = document.getElementsByClassName("error");
                while (errors.length > 0) {
                    errors[0].parentNode.removeChild(errors[0]);
                }
                var inputs = document.getElementsByTagName("input");
                for (var i = 0; i < inputs.length; i++) {
                    inputs[i].classList.remove("error-border");
                }
                var selects = document.getElementsByTagName("select");
                for (var i = 0; i < selects.length; i++) {
                    selects[i].classList.remove("error-border");
                }

                var isValid = true;

                // Validate Name
                var name = document.forms["form"]["name"];
                if (name.value.trim() === "") {
                    showError(name, "Please enter name");
                    isValid = false;
                }

                // Validate UserName
                var uname = document.forms["form"]["uname"];
                if (uname.value.trim() === "") {
                    showError(uname, "Please enter username");
                    isValid = false;
                }

                // Validate Disease
                var disease = document.forms["form"]["disease"];
                if (disease.value.trim() === "") {
                    showError(disease, "Please enter disease");
                    isValid = false;
                }

                // Validate Appointment Date
                var apd = document.forms["form"]["apd"];
                if (apd.value.trim() === "") {
                    showError(apd, "Please select appointment date");
                    isValid = false;
                }

                // Validate Doctor Selection
                var doctor = document.forms["form"]["doctor"];
                if (doctor.value === "select") {
                    showError(doctor, "Please select a doctor");
                    isValid = false;
                }

                // Validate Time Selection
                var time = document.forms["form"]["Time"];
                if (time.value === "select") {
                    showError(time, "Please select time");
                    isValid = false;
                }

                return isValid;
            }

            function showError(input, message) {
                var error = document.createElement("div");
                error.className = "error";
                error.innerHTML = message;
                input.classList.add("error-border");
                input.parentNode.appendChild(error);
            }
        </script>
    </head>
    <body>
        <center>
            <h3>Add Appointment Details</h3>
            <form action="addappointmentcon.jsp" method="post" onsubmit="return validate()" name="form">
                <table>
                    <tr>
                        <td class="mandatory">Name:</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr>
                        <td class="mandatory">UserName:</td>
                        <td><input type="text" name="uname"></td>
                    </tr>
                    <tr>
                        <td class="mandatory">Disease:</td>
                        <td><input type="text" name="disease"></td>
                    </tr>
                    <tr>
                        <td class="mandatory">Appointment Date:</td>
                        <td><input type="date" name="apd"></td>
                    </tr>
                    <tr>
                        <td class="mandatory">Select Doctor:</td>
                        <td>
                            <select name="doctor">
                                <option value="select">select</option>
                                <option>Dr. Ramesh (cardiologist)</option>
                                <option>Dr. Anitha (nephrologist)</option>
                                <option>Dr. Sarala (urologist)</option>
                                <option>Dr. Santhi (neurologist)</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td class="mandatory">Select Time:</td>
                        <td>
                            <select name="Time">
                                <option value="select">select</option>
                                <option value="09.00 AM - 09.30 AM">09.00 AM - 09.30 AM</option>
                                <option value="09.30 AM - 10.00 AM">09.30 AM - 10.00 AM</option>
                                <option value="10.00 AM - 10.30 AM">10.00 AM - 10.30 AM</option>
                                <option value="10.30 AM - 11.00 AM">10.30 AM - 11.00 AM</option>
                                <option value="11.00 AM - 11.30 AM">11.00 AM - 11.30 AM</option>
                                <option value="11.30 AM - 12.00 PM">11.30 AM - 12.00 PM</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td align="center"><input type="submit" value="Submit"></td>
                        <td align="center"><input type="submit" value="Cancel"></td>
                    </tr>
                </table>
            </form>
        </center>
    </body>
</html>
