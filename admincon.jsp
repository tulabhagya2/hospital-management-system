<%-- 
    Document   : admincon
    Created on : Sep 15, 2024, 10:14:08 AM
    Author     : lenovo
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String uname=request.getParameter("uname");
String pwd=request.getParameter("pwd");
%>
<%
try
{
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select *from admin1 where uname='"+uname+"' and pwd='"+pwd+"'");
if(rs.next())
{
response.sendRedirect("adminview.jsp");
}
else
{
response.sendRedirect("admin1.jsp");
}

}catch(Exception e)
{
e.printStackTrace();
}
%>
