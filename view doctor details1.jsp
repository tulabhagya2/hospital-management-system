<%-- 
    Document   : view doctor details1
    Created on : Apr 23, 2025, 7:59:02 PM
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
               background-color:#BCC6CC;
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
            <center><h1>Doctor Details
              </h1></center>
            <tr>
                <th>id</th>
                <th>name</th>
                <th>uname</th>
                <th>pwd</th>
                <th>dob</th>
                <th>address</th>
                <th>phone</th>
                <th>email</th>
                <th>city</th>
                <th>gender</th>
                <th>blood_group</th>
                <th>joining_date</th>
                <th>age</th>
                <th>specialization</th>
                <th>clinic_number</th>
            </tr>
 
 </body>
</html>

            <%
            try
                                       {
          
            Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
 Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from doctor"); 
while(rs.next())
{
   int id=rs.getInt("id");
    String name=rs.getString("name");
    String uname=rs.getString("uname");
    String pwd=rs.getString("pwd");
    String dob=rs.getString("dob");
    String address=rs.getString("address");
    String phone=rs.getString("phone");
    String email=rs.getString("email");
    String city=rs.getString("city");
    String gender=rs.getString("gender");
    String blood_group=rs.getString("blood_group");
    String joining_date=rs.getString("joining_date");
    String age=rs.getString("age");
    String specialization=rs.getString("specialization");
    String clinic_number=rs.getString("clinic_number");   
%>
<tr>
    
    <td><%=id%>
    <td><%=name%></td>
    <td><%=uname%></td>
     <td><%=pwd%></td>
     <td><%=dob%></td>
     <td><%=address%></td>
     <td><%=phone%></td>
    <td><%=email%>
    <td><%=city%></td>
    <td><%=gender%></td>
     <td><%=blood_group%></td>
     <td><%=joining_date%></td>
     <td><%=age%></td>
     <td><%=specialization%></td>
      <td><%=clinic_number%></td>
</tr>
<%
}
}catch(Exception e)
               {
    e.printStackTrace();
}
%>

                