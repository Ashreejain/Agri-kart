
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crops!</title>
    </head>
    <body>
        
        
        <%
            String name=request.getParameter("name");
            String sp=request.getParameter("sp");
            String desc=request.getParameter("description");
        %>
        
        <%
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
                PreparedStatement stmt=con.prepareStatement("insert into crops values(name,sp,description)values('"+name+"','"+ sp+"','"+description+"')");
                stmt.setString(1, name);
                stmt.setString(2, sp);
                stmt.setString(3, desc);
                int i=stmt.executeUpdate();
                System.out.println(i+" records inserted");
            }
            catch(Exception e){}
        %>
        
        <h2>Crops Entered Successfully in our Databases! Our Executives will contact you soon!</h2>
        <jsp:include page="crop.html"></jsp:include>
    </body>
</html>
