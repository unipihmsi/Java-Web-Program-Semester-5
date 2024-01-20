<%@ page import="java.sql.*" %>
<html>
<head>
<title>Manajemen Database</title>
</head>
</body>
<%
String sjudul=request.getParameter("txtjudul");
String spenulis=request.getParameter("txtpenulis");
String sql="insert into berita(berita,penulis) values('"+sjudul+"','"+spenulis+"')";

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnnews5a","","");
Statement statement = connection.createStatement();
statement.executeUpdate(sql);
statement.close();
connection.close();
%>
<jsp:forward page="lihatdb.jsp"/>
</body>
</html>