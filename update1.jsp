<%-- 
    Document   : update1
    Created on : Apr 10, 2025, 10:32:20 AM
    Author     : lenovo
--%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>update page</title>  
    </head>
    <body>
        <%
         String id=request.getParameter("id");
            String name=request.getParameter("name");
            String uname=request.getParameter("uname");
            String pwd=request.getParameter("pwd");
            String email=request.getParameter("email");
            String fathername=request.getParameter("fathername");
            String phone=request.getParameter("phone");
            String marital_status=request.getParameter("marital_status");
            String city=request.getParameter("city");
            String gender=request.getParameter("gender");
            String blood_group=request.getParameter("blood_group");
            String disease=request.getParameter("disease");
            String age=request.getParameter("age");
            String address=request.getParameter("address");
            String dob=request.getParameter("dob");
            
             %>  
             <form action="updatecon1.jsp" method="post">
                 <table>
                     <tr>
                         <td>
                             <input type="text" value="<%=id%>" name="id"/> <br>
                             <input type="text" value="<%=name%>" name="name"/> <br>
                             <input type="text" value="<%=uname%>" name="uname"/> <br>
                             <input type="text" value="<%=pwd%>" name="pwd"/> <br>
                             <input type="text" value="<%=email%>" name="email"/> <br>
                             <input type="text" value="<%=fathername%>" name="fathername"/> <br>
                             <input type="text" value="<%=phone%>" name="phone"/> <br>
                             <input type="text" value="<%=marital_status%>" name="marital_status"/><br>
                             <input type="text" value="<%=city%>" name="city"/> <br>
                             <input type="text" value="<%=gender%>" name="gender"/> <br>
                             <input type="text" value="<%=blood_group%>" name="blood_group"/> <br>
                             <input type="text" value="<%=disease%>" name="disease"/> <br>
                             <input type="text" value="<%=age%>" name="age"/> <br>
                             <input type="text" value="<%=address%>" name="address"/> <br>
                              <input type="text" value="<%=dob%>" name="dob"/> <br>
               
               
                             <input type="submit" value="update">
                         </td>
                     </tr>
                 </table>
             </form>
    </body>
</html>
