<%-- 
    Document   : admin1
    Created on : Sep 15, 2024, 10:03:15 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
        <style>
            body{
                background-image:url("https://i.pinimg.com/550x/be/c8/2d/bec82d8b6a97622fb651e8e775236d01.jpg");
                background-repeat:no-repeat;
                background-size:1400px 800px;
            }
            .error{
                color: red;
                font-size: 14px;
                margin-top: 5px;
            }
        </style>
        <script>
            function validateForm(){
                let isValid=true;
                const uname=document.getElementById("uname").value;
                 const pwd=document.getElementById("pwd").value;
                 document.getElementById("unameError").innerText = "";
                 document.getElementById("pwdError").innerText = "";
                 if(uname === ""){
                     document.getElementById("unameError").innerText = "please enter username";
                     isValid = false;
                     
                 }
                 if(pwd === ""){
                     document.getElementById("unameError").innerText = "please enter password";
                     isValid = false;
                 }
                  return isValid;
                  }
        
        </script>
    </head>
    <body><center><h2 style="margin-bottom: 0;">Admin Login Page</h2></center>
    <form id="loginForm" action="admincon.jsp" method="post" onsubmit="return validateForm();">
        <center><table>
                <tr><td>UserName:</td>
                    <td><input type="text" name="uname" id="uname"><br>
                        <span id="unameError" class="error"></span></td></tr>
                <tr><td>Password:</td>
                    <td><input type="text" name="pwd" id="pwd"><br>
                        <span id="pwdError" class="error"></span></td><br><br>
                </tr>
                <tr><td colspan="2"><input type="submit" value="login" style="background-color:green" width="1000px"></td></button>
                <td><input type="submit" value="cancel" style="background-color:red"></td></tr>
                
            </table></center>
        </form>
    </body>
</html>
