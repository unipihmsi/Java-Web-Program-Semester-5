
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Manajemen Database</title>
</head>
</body>
<table border="1" cellpadding="5" cellspacing="0" bordercolor="#000000">
<tr><td>NIP</td><td>Nama</td><td>Golongan</td><td>Jabatan</td></tr>
<%
String sql="select * from karyawan";

Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnkaryawan","","");
Statement statement = connection.createStatement();
ResultSet rs = statement.executeQuery(sql);
while(rs.next())
{

out.print("<tr><td>"+rs.getString("nip")+"</td><td>");
out.print(rs.getString("nama")+"</td><td>");
out.print(rs.getString("golongan")+"</td><td>");
out.print(rs.getString("jabatan")+"</td>");
out.println("</td></tr>");
}
statement.close();
connection.close();
%>
</table>
<br>
<a href="tambah.jsp">Tambah Data</a>
</body>
</html>