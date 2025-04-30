<%-- 
    Document   : update
    Created on : Apr 10, 2025, 10:31:05 AM
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
            String dob=request.getParameter("dob");
            String address=request.getParameter("address");
            String phone=request.getParameter("phone");
            String email=request.getParameter("email");
            String city=request.getParameter("city");
            String gender=request.getParameter("gender");
            String blood_group=request.getParameter("blood_group");
            String joining_date=request.getParameter("joining_date");
            String age=request.getParameter("age");
            String specialization=request.getParameter("specialization");
            String clinic_number=request.getParameter("clinic_number");
            
             %>  
             <form action="updatecon.jsp" method="post">
                 <table>
                     <tr>
                         <td>
                             <input type="text" value="<%=id%>" name="id"/> <br>
                             <input type="text" value="<%=name%>" name="name"/> <br>
                             <input type="text" value="<%=uname%>" name="uname"/> <br>
                             <input type="text" value="<%=pwd%>" name="pwd"/> <br>
                             <input type="text" value="<%=dob%>" name="dob"/> <br>
                             <input type="text" value="<%=address%>" name="address"/> <br>
                             <input type="text" value="<%=phone%>" name="phone"/> <br>
                             <input type="text" value="<%=email%>" name="email"/><br>
                             <input type="text" value="<%=city%>" name="city"/> <br>
                             <input type="text" value="<%=gender%>" name="gender"/> <br>
                             <input type="text" value="<%=blood_group%>" name="blood_group"/> <br>
                             <input type="text" value="<%=joining_date%>" name="joining_date"/> <br>
                             <input type="text" value="<%=age%>" name="age"/> <br>
                             <input type="text" value="<%=specialization%>" name="specialization"/> <br>
                              <input type="text" value="<%=clinic_number%>" name="clinic_number"/> <br>
               
               
                             <input type="submit" value="update">
                         </td>
                     </tr>
                 </table>
             </form>
    </body>
</html>
