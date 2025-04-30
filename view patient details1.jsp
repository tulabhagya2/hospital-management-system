<%-- 
    Document   : view patient details1
    Created on : Apr 23, 2025, 7:54:58 PM
    Author     : lenovo
--%>
<%-- 
    Document   : view patient details
    Created on : Apr 10, 2025, 10:35:08 AM
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
               background-color: #ADD8E6;
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
            <center><h1>Patient Details
              </h1></center>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>uname</th>
                <th>pwd</th>
                <th>email</th>
                <th>fathername</th>
                <th>phone</th>
                <th>marital_status</th>
                <th>city</th>
                <th>gender</th>
                <th>blood_group</th>
                <th>disease</th>
                <th>age</th>
                <th>address</th>
                <th>dob</th>
            </tr>
 
 </body>
</html>

            <%
            try
                                       {
          
            Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from patient"); 
while(rs.next())
{
   int id=rs.getInt("id");
    String name=rs.getString("name");
    String uname=rs.getString("uname");
    String pwd=rs.getString("pwd");
    String email=rs.getString("email");
    String fathername=rs.getString("fathername");
    String phone=rs.getString("phone");
    String marital_status=rs.getString("marital_status");
    String city=rs.getString("city");
    String gender=rs.getString("gender");
    String blood_group=rs.getString("blood_group");
    String disease=rs.getString("disease");
    String age=rs.getString("age");
    String address=rs.getString("address");
    String dob=rs.getString("dob");   
%>
<tr>
    <td><%=id%>
    <td><%=name%></td>
    <td><%=uname%></td>
     <td><%=pwd%></td>
     <td><%=email%></td>
     <td><%=fathername%></td>
     <td><%=phone%></td>
    <td><%=marital_status%>
    <td><%=city%></td>
    <td><%=gender%></td>
    <td><%=blood_group%></td>
    <td><%=disease%></td>
     <td><%=age%></td>
     <td><%=address%></td>
     <td><%=dob%></td>
</tr>
<%
}
}catch(Exception e)
               {
    e.printStackTrace();
}
%>

               