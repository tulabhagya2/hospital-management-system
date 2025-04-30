<%-- 
    Document   : delete
    Created on : Apr 10, 2025, 10:27:18 AM
    Author     : lenovo
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
try
               {
    String email=request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("delete from doctor where email='"+email+"'");
    if(a!=0)
               {
        response.sendRedirect("view doctor details.jsp?msg=deleted successfully");
    }
       else{
        response.sendRedirect("delete.jsp?msg=fail");
               }
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
     %>