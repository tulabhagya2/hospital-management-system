<%-- 
    Document   : patientlogcon
    Created on : Sep 15, 2024, 7:47:03 PM
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
String email=request.getParameter("Email");
String pwd=request.getParameter("pwd");
%>
<%
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from patient where Email='"+email+"' and pwd='"+pwd+"'");
    if(rs.next())
           {
        response.sendRedirect("viewpatient.jsp");
        }
    else
     {
      response.sendRedirect("patient.jsp");
       }
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
%>
  
