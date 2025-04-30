<%-- 
    Document   : receplogcon
    Created on : Sep 25, 2024, 9:01:44 AM
    Author     : lenovo
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
 <%@page import="java.sql.Connection"%>
 <%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String Email=request.getParameter("Email");
String pwd=request.getParameter("pwd");
%>
<%
try
               {
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select * from receiptionist where Email='"+Email+"' and pwd='"+pwd+"'");
    if(rs.next())
           {
        response.sendRedirect("viewreceptionist.jsp");
        }
    else
     {
      response.sendRedirect("receptionist.jsp");
       }
       }catch(Exception e)
                             {
           e.printStackTrace();
                     }
%>
  
