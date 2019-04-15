<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<html>

<head>
  <title>Welcome Farmers!</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  <link rel="stylesheet" type="text/css" href="style/style.css" title="style" />
</head>

<body>
  <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <h1><a href="index.html">Welcome<span class="logo_colour"> Farmers!</span></a></h1>
          <h2>FarmerVarmer at your Service!</h2>
        </div>
      </div>
      <div id="menubar">
        <ul id="menu">
          <li class="selected"><a href="profile.html">Home</a></li>
          <li><a href="crop.html">Crops</a></li>
          <li><a href="tools.html">Request a Tool</a></li>
          <li><a href="orders.jsp">Orders and Earnings</a></li>
        </ul>
      </div>
    </div>
    <div id="site_content">
      <div class="sidebar">
        <h3>Latest News</h3>
        <h4>FarmerVarmer now supports 10 Lac Farmers in India</h4>
        <h5>March 1st, 2018</h5>
        <p>FV proudly announces that it has become a community of 1 Lac families accross India; serving their daily agricultural needs. <br /><a href="#">Read more</a></p>
        <p></p>
        <h4>FarmerVarmer has been awarded as the best startup of 2018</h4>
        <h5>April 11th, 2018</h5>
        <p>Owing to the loyalty of our customers, FV has been awarded as the fastest growing startup of the year.<br /><a href="#">Read more</a></p>
        <h3>Useful Links</h3>
        <ul>
          <li><a href="http://rural.nic.in/">Ministry of Rural Development</a></li>
          <li><a href="http://www.mca.gov.in/">Ministry of Corporate Affairs</a></li>
          <li><a href="http://pmkvyofficial.org/">PMKVY</a></li>
          <li><a href="http://agriculture.gov.in/">Ministry of Agriculture</a></li>
        </ul>
        <h3>Search</h3>
        <form method="post" action="search.jsp" id="search_form">
          <p>
            <input class="search" type="text" name="search_field" value="Enter keywords....." />
            <input name="search" type="image" style="border: 0; margin: 0 0 -9px 5px;" src="style/search.png" alt="Search" title="Search" />
          </p>
        </form>
      </div>
      <div id="content">

<head>
<style>
table {
    border-collapse: collapse;
    width: 100%;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}
</style>

<h2>My Orders!</h2>

<%
    try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","qwerty");
                PreparedStatement stmt=con.prepareStatement("select * from tools");
                ResultSet rs=stmt.executeQuery();
                out.println("<table>"+
 "<tr>"+
    "<th>Tools</th>"+
    "<th>Address</th>"+
    "<th>Cost</th>"+
  "</tr>");
                while(rs.next())
                {
                    
                    out.println(""+


  "<tr>"+
    "<td>"+rs.getString(1)+"</td>"+
    "<td>"+rs.getString(3)+"</td>"+
    "<td>"+rs.getString(4)+"</td>"+
  "</tr>"+
  

"");
                }
                out.println("</table>");
            }catch(Exception e){}

%>    

<h2>My Earnings!</h2>

<%
    try
            {
                Class.forName("oracle.jdbc.driver.OracleDriver");
                Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
                PreparedStatement stmt=con.prepareStatement("select * from crops");
                ResultSet rs=stmt.executeQuery();
                out.println("<table>"+
 "<tr>"+
    "<th>Name</th>"+
    "<th>Description</th>"+
    "<th>Sold in Kgs</th>"+
  "</tr>");
                while(rs.next())
                {
                    
                    out.println(""+


  "<tr>"+
    "<td>"+rs.getString(1)+"</td>"+
    "<td>"+rs.getString(3)+"</td>"+
    "<td>"+rs.getString(2)+"</td>"+
  "</tr>"+
  

"");
                }
                out.println("</table>");
            }catch(Exception e){}

%>    


      </div>
    </div>ss
  </div>
</body>
</html>
