
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Manajemen Database</title>
</head>
</body>
<table border="1" cellpadding="5" cellspacing="0" bordercolor="#000000" bgcolor="lavender">
<tr><td>Kode</td><td>Nama Barang</td><td>Kategori</td><td>Action</td></tr>
<%
String sql="select * from barang";
int no=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnbarang","","");
Statement statement = connection.createStatement();
ResultSet rs = statement.executeQuery(sql);
while(rs.next())
{
no=rs.getInt("kode");
out.print("<tr><td>"+no+"</td><td>");
out.print(rs.getString("namabarang")+"</td><td>");
out.print(rs.getString("kategori")+"</td>");
out.print("<td><a href=rubahdb.jsp?" + no + ">Rubah Data");
out.print("</a> | <a href=hapusdb.jsp?" + no + ">Hapus Data</a>");
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