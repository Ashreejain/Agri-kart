
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>tools!</title>
    </head>
    <body>
        
        <%
            String name=request.getParameter("name");
            String duration=request.getParameter("duration");
            String delivery=request.getParameter("delivery");
        %>
        
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                PreparedStatement stmt=con.prepareStatement("insert into tools values(name,duration,delivery)values('"+name+"','"+ duration+"','"+delivery+"')");
                stmt.setString(1, name);
                stmt.setString(2, duration);
                stmt.setString(3, delivery);
                int i=stmt.executeUpdate();
                System.out.println(i+" records inserted");
            }
            catch(Exception e){}
        %>
        
        <h2>We have received your request! You will soon receive the delivery details!</h2>
        <jsp:include page="tools.html"></jsp:include>
    </body>
</html>
