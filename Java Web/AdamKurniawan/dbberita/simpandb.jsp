<%@ page import="java.sql.*" %>
<%
String kunci=request.getParameter("kunci");
String sberita=request.getParameter("TextGanti");
String spenulis=request.getParameter("txtpenulis");
String ssumber=request.getParameter("txtsumber");

String sql="UPDATE berita SET berita.berita='"+sberita+"',berita.penulis='"+spenulis+"',berita.sumber='"+ssumber+"' WHERE berita.no="+ kunci;

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnnews5a","","");
Statement statement = connection.createStatement();
statement.executeUpdate(sql);

statement.close();
connection.close();
%>
<jsp:forward page="lihatdb.jsp"/>