<%-- 
    Document   : delete3
    Created on : Apr 10, 2025, 8:48:12 PM
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
    int id=Integer.parseInt(request.getParameter("id"));
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("delete from appointment where id="+id+"");
    if(a!=0)
               {
        response.sendRedirect("view appointment details.jsp?msg=deleted successfully");
    }
       else{
        response.sendRedirect("delete.jsp?msg=fail");
               }
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
     %>