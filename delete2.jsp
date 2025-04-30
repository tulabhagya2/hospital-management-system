<%-- 
    Document   : delete2
    Created on : Apr 10, 2025, 10:34:30 AM
    Author     : lenovo
--%>

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
    int a=st.executeUpdate("delete from receiptionist where email='"+email+"'");
    if(a!=0)
               {
        response.sendRedirect("view receptionist details.jsp?msg=deleted successfully");
    }
       else{
        response.sendRedirect("delete2.jsp?msg=fail");
               }
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
     %>