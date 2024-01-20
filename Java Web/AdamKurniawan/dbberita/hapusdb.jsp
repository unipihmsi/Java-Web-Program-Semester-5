<%@ page import="java.sql.*" %>
<%
String kunci=request.getQueryString();

String sql="DELETE FROM berita WHERE berita.no="+ kunci;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnnews5a","","");
Statement statement = connection.createStatement();
statement.executeUpdate(sql);

statement.close();
connection.close();
%>
<jsp:forward page="lihatdb.jsp"/>