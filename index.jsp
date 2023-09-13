<%@page import="com.cslc.MainPackage.Connect"%>

<html>
<body>
<h2>Hello World!</h2>

<%
  Connect con= new Connect();
  con.getConnection();
  con.executeSelectQuery("select user from mysql.user");
  while (con.rs.next()) {
    out.print("<br>"+con.rs.getString("user"));

}

  con.closeConnection();

%>



</body>
</html>
