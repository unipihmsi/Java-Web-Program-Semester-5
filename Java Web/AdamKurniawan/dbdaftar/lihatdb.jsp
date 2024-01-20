
<%@ page import="java.sql.*" %>
<html>
<body>
<table border="1" cellpadding="5" cellspacing="0" bordercolor="#000000">
<tr><td>NPM</td><td>NAMA</td><td>JURUSAN</td><td>KOTA</td><td>KELAS</td><td>ALAMAT</td><td>Action</td></tr>
<%
String sql="select * from mahasiswa";
int no=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsndbdaftar","","");
Statement statement = connection.createStatement();
ResultSet rs = statement.executeQuery(sql);
while(rs.next())
{
no=rs.getInt("npm");
out.print("<tr><td>"+no+"</td><td>");
out.print(rs.getString("nama")+"</td><td>");
out.print(rs.getString("jurusan")+"</td><td>");
out.print(rs.getString("kota")+"</td><td>");
out.print(rs.getString("kelas")+"</td><td>");
out.print(rs.getString("alamat")+"</td>");
out.print("<td><a href=rubahdb.jsp?" + no + ">Rubah Data");
out.print("</a> | <a href=hapusdb.jsp?" + no + ">Hapus Data</a>");
out.println("</td></tr>");
}
statement.close();
connection.close();
%>
</table>
<br>
<a href="formdaftar.jsp">Tambah Data</a>
</body>
</html>