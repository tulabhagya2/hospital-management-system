<%-- 
    Document   : view receptionist details
    Created on : Apr 10, 2025, 10:36:22 AM
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
               background-color: #52595D;
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
            <center><h1>Receptionist Details
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
                <th>joining_date</th>
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
ResultSet rs=st.executeQuery("select *from receiptionist"); 
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
    String joining_date=rs.getString("joining_date");
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
     <td><%=marital_status%></td>
    <td><%=city%>
    <td><%=gender%></td>
    <td><%=blood_group%></td>
     <td><%=joining_date%></td>
     <td><%=age%></td>
     <td><%=address%></td>
     <td><%=dob%></td>
     <td><a href="delete2.jsp?email=<%=email%>">delete</a></td>
     <td><a href="update2.jsp?id=<%=id%>&name=<%=name%>&uname=<%=uname%>&pwd=<%=pwd%>&email=<%=email%>&fathername=<%=fathername%>&marital_status=<%=marital_status%>&city=<%=city%>&gender=<%=gender%>&blood_group=<%=blood_group%>&joining_date=<%=joining_date%>&age=<%=age%>&address=<%=address%>&dob=<%=dob%>">update</a></td>                
</tr>
<%
}
}catch(Exception e)
               {
    e.printStackTrace();
}
%>

               