<%-- 
    Document   : updatecon2
    Created on : Apr 10, 2025, 8:22:17 PM
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
   String address=request.getParameter("address");
   String phone=request.getParameter("phone");
   String age=request.getParameter("age");
   
%>
<%
  try{
       Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/hospital","root","root");
    Statement st=con.createStatement();
    int a=st.executeUpdate("update receiptionist set address='"+address+"',phone="+phone+",age="+age+" where id="+id+"");
    if(a!=0)
               {
        response.sendRedirect("view receptionist details.jsp?msg=update success");
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
 
     

               