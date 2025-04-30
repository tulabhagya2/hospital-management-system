<%-- 
    Document   : addpatientcon
    Created on : Apr 9, 2025, 4:14:24 PM
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
<%
        try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    PreparedStatement ps=con.prepareStatement("insert into patient values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
    ps.setString(1,id);
    ps.setString(2,name);
    ps.setString(3,uname);
    ps.setString(4,pwd);
    ps.setString(5,email);
    ps.setString(6,fathername);
    ps.setString(7,phone);
    ps.setString(8,marital_status);
    ps.setString(9,city);
    ps.setString(10,gender);
    ps.setString(11,blood_group);
    ps.setString(12,disease);
    ps.setString(13,age);
    ps.setString(14,address);
    ps.setString(15,dob);
    ps.executeUpdate();
    response.sendRedirect("success.jsp?msg=success");
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
%>
       
