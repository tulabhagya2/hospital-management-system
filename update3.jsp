<%-- 
    Document   : update3
    Created on : Apr 10, 2025, 8:43:45 PM
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
            String disease=request.getParameter("disease");
            String apd=request.getParameter("apd");
            String doctor=request.getParameter("doctor");
            String time=request.getParameter("time");
            
            
             %>  
             <form action="updatecon3.jsp" method="post">
                 <table>
                     <tr>
                         <td>
                             <input type="text" value="<%=id%>" name="id"/> <br>
                             <input type="text" value="<%=name%>" name="name"/> <br>
                             <input type="text" value="<%=uname%>" name="uname"/> <br>
                             <input type="text" value="<%=disease%>" name="disease"/> <br>
                             <input type="text" value="<%=apd%>" name="apd"/> <br>
                             <input type="text" value="<%=doctor%>" name="doctor"/> <br>
                             <input type="text" value="<%=time%>" name="time"/> <br>
                             <input type="submit" value="update">
                         </td>
                     </tr>
                 </table>
             </form>
    </body>
</html>
