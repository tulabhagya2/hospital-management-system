<%-- 
    Document   : view appointment details
    Created on : Apr 10, 2025, 8:29:47 PM
    Author     : lenovo
--%>


<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <style>
            body
            {
               background-color:pink; 
               background-repeat:no-repeat;
               background-size:1500px 200px;
               background-position:top;
            }
        </style>
        <title>JSP Page</title>
    </head>
    <body>
    
        <table border="1"
               width="1200px" height="50px" style="margin-top:50px">
            <center><h1>Appointment Details
              </h1></center>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>uname</th>
                <th>disease</th>
                <th>apd</th>
                <th>doctor</th>
                <th>time</th>
            </tr>
 
 </body>
</html>

            <%
            try
                                       {
          
            Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from appointment"); 
while(rs.next())
{
   int id=rs.getInt("id");
    String name=rs.getString("name");
    String uname=rs.getString("uname");
    String disease=rs.getString("disease");
    String apd=rs.getString("apd");
    String doctor=rs.getString("doctor");
    String time=rs.getString("time"); 
%>
<tr>
    
    <td><%=id%>
    <td><%=name%></td>
    <td><%=uname%></td>
     <td><%=disease%></td>
     <td><%=apd%></td>
     <td><%=doctor%></td>
     <td><%=time%></td>
     <td><a href="delete3.jsp?id=<%=id%>">delete</a></td>
     <td><a href="update3.jsp?id=<%=id%>&name=<%=name%>&uname=<%=uname%>&disease=<%=disease%>&apd=<%=apd%>&doctor=<%=doctor%>&time=<%=time%>">update</a>
</tr>
<%
}
}catch(Exception e)
               {
    e.printStackTrace();
}
%>

                