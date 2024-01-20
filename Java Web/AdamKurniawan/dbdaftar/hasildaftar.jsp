<%@ page import="java.sql.*" %>
<html>
</body>
<%
String snama=request.getParameter("txtnama");
String sjurusan=request.getParameter("cbjurusan");
String skota=request.getParameter("cbkota");
String skelas=request.getParameter("rdk");
String salamat=request.getParameter("txtalamat");
String sql="insert into mahasiswa(nama,jurusan,kota,kelas,alamat) values('"+snama+"','"+sjurusan+"','"+skota+"','"+skelas+"','"+salamat+"')";

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsndbdaftar","","");
Statement statement = connection.createStatement();
statement.executeUpdate(sql);
statement.close();
connection.close();
%>
<jsp:forward page="lihatdb.jsp"/>
</body>
</html>