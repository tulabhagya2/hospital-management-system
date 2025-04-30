<%-- 
    Document   : updatecon3
    Created on : Apr 10, 2025, 8:39:00 PM
    Author     : lenovo
--%>
 
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% 
   String id=request.getParameter("id");
   String apd=request.getParameter("apd");
   String time=request.getParameter("time");
   
   
%>
<%
  try{
       Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update appointment set apd='"+apd+"',time='"+time+"' where id="+id+"");
    if(a!=0)
               {
        response.sendRedirect("view appointment details.jsp?msg=update success");
       }
    else
       {
        response.sendRedirect("failure.jsp?msg=update failed");
       }
  }catch(Exception w)
                   {
      w.printStackTrace();
           }
   %>
 
     

               