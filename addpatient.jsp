<%-- 
    Document   : addpatient
    Created on : Sep 22, 2024, 8:19:12 PM
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
        </style>
    <script>
        function validate() {
            var form = document.forms["form"];

            if (form["name"].value.trim() === "") {
                alert("Name is required.");
                form["name"].focus();
                return false;
            }

            if (form["uname"].value.trim() === "") {
                alert("Username is required.");
                form["uname"].focus();
                return false;
            }

            if (form["pwd"].value.trim() === "") {
                alert("Password is required.");
                form["pwd"].focus();
                return false;
            }

            var email = form["email"].value.trim();
            if (email === "" || !email.match(/^\S+@\S+\.\S+$/)) {
                alert("Valid email is required.");
                form["email"].focus();
                return false;
            }

            if (form["fathername"].value.trim() === "") {
                alert("Father Name is required.");
                form["fathername"].focus();
                return false;
            }

            if (form["phone"].value.trim() === "" || isNaN(form["phone"].value)) {
                alert("Valid phone number is required.");
                form["phone"].focus();
                return false;
            }

            if (form["marital_status"].value.trim() === "") {
                alert("Marital Status is required.");
                form["marital_status"].focus();
                return false;
            }

            if (form["city"].value.trim() === "") {
                alert("City is required.");
                form["city"].focus();
                return false;
            }

            if (form["gender"].value.trim() === "") {
                alert("Gender is required.");
                form["gender"].focus();
                return false;
            }

            if (form["blood_group"].value.trim() === "") {
                alert("Blood Group is required.");
                form["blood_group"].focus();
                return false;
            }

            if (form["disease"].value.trim() === "") {
                alert("Disease is required.");
                form["disease"].focus();
                return false;
            }

            if (form["age"].value.trim() === "" || isNaN(form["age"].value)) {
                alert("Valid age is required.");
                form["age"].focus();
                return false;
            }

            if (form["address"].value.trim() === "") {
                alert("Address is required.");
                form["address"].focus();
                return false;
            }

            if (form["dob"].value.trim() === "") {
                alert("Date of Birth is required.");
                form["dob"].focus();
                return false;
            }

            return true;
        }
    </script>
</head>
<body>
    <center>
        <h3>Add Patient Details</h3>
        <form action="addpatientcon.jsp" method="post" onsubmit="return validate()" name="form">
            <table>
                <tr>
                    <td>Name:</td>
                    <td><input type="text" name="name"></td>
                    <td>UserName:</td>
                    <td><input type="text" name="uname"></td>
                </tr>
                <tr>
                    <td>Password:</td>
                    <td><input type="password" name="pwd"></td>
                    <td>Email:</td>
                    <td><input type="text" name="email"></td>
                </tr>
                <tr>
                    <td>Father Name:</td>
                    <td><input type="text" name="fathername"></td>
                    <td>Phone:</td>
                    <td><input type="number" name="phone"></td>
                </tr>
                <tr>
                    <td>Marital Status:</td>
                    <td><input type="text" name="marital_status"></td>
                    <td>City:</td>
                    <td><input type="text" name="city"></td>
                </tr>
                <tr>
                    <td>Gender:</td>
                    <td><input type="text" name="gender"></td>
                    <td>Blood Group:</td>
                    <td><input type="text" name="blood_group"></td>
                </tr>
                <tr>
                    <td>Disease:</td>
                    <td><input type="text" name="disease"></td>
                    <td>Age:</td>
                    <td><input type="number" name="age"></td>
                </tr>
                <tr>
                    <td>Address:</td>
                    <td><input type="text" name="address"></td>
                    <td>Date Of Birth:</td>
                    <td><input type="date" name="dob"></td>
                </tr>
                <tr>
                    <td align="center"><input type="submit" value="submit"></td>
                    <td align="center"><input type="reset" value="cancel"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
