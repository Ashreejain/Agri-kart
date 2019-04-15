
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>register!</title>
    </head>
    <body>
        
        
        <%
            response.sendRedirect("LOGIN.html");
            String First_name=request.getParameter("First_name");
            String Last_name=request.getParameter("Last_name");
            String Email=request.getParameter("Email");
            String Password=request.getParameter("Password");
            String Reapeat_password=request.getParameter("reapeat_password");
        %>
        
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "", "");
                 Statement st=con.createStatement();
               // st.setString(1, First_name);
                //st.setString(2, Last_name);
                //st.setString(3, Email);
                //st.setString(4, Password);
                //st.setString(5, Reapeat_password);
                int i=st.executeUpdate("insert into users (First_name,Last_name,Email,Password,Reapeat_password)values('"+First_name+"','"+ Last_name+"','"+Email+"','"+Password+"','"+Reapeat_password+"')");
                System.out.println(i+" records inserted");
            }
            catch(Exception e){}
        %>
        
        
        
    </body>
</html>
