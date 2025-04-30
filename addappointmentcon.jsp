<%-- 
    Document   : addappointmentcon
    Created on : Apr 9, 2025, 5:09:59 PM
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
   String disease=request.getParameter("disease");
   String apd=request.getParameter("apd");
   String doctor=request.getParameter("doctor");
   String time=request.getParameter("Time");
  
  %>
<%
        try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    PreparedStatement ps=con.prepareStatement("insert into appointment values(?,?,?,?,?,?,?)");
    ps.setString(1,id);
    ps.setString(2,name);
    ps.setString(3,uname);
    ps.setString(4,disease);
    ps.setString(5,apd);
    ps.setString(6,doctor);
    ps.setString(7,time);
    ps.executeUpdate();
    response.sendRedirect("success.jsp?msg=success");
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
%>
       
