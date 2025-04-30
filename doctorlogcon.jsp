<%-- 
    Document   : doctorlogcon
    Created on : Sep 15, 2024, 7:19:58 PM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String Email=request.getParameter("Email");
String pwd=request.getParameter("pwd");
String specialization=request.getParameter("specialization");
%>
<%
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from doctor where Email='"+Email+"' and pwd='"+pwd+"' and specialization='"+specialization+"'");
    if(rs.next())
           {
        response.sendRedirect("docview.jsp");
        }
    else
     {
      response.sendRedirect("doctor.jsp");
       }
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
%>
  
