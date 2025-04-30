<%-- 
    Document   : adddoccon
    Created on : Apr 9, 2025, 11:51:20 AM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
<%
        try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    PreparedStatement ps=con.prepareStatement("insert into doctor values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,id);
    ps.setString(2,name);
    ps.setString(3,uname);
    ps.setString(4,pwd);
    ps.setString(5,dob);
    ps.setString(6,address);
    ps.setString(7,phone);
    ps.setString(8,email);
    ps.setString(9,city);
    ps.setString(10,gender);
    ps.setString(11,blood_group);
    ps.setString(12,joining_date);
    ps.setString(13,age);
    ps.setString(14,specialization);
    ps.setString(15,clinic_number);
    ps.executeUpdate();
    response.sendRedirect("success.jsp?msg=success");
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
%>
       
