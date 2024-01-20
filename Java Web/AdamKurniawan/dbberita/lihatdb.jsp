
<%@ page import="java.sql.*" %>
<html>
<head>
<title>Manajemen Database</title>
</head>
</body>
<table border="1" cellpadding="5" cellspacing="0" bordercolor="#000000">
<tr><td>Index</td><td>Headline</td><td>Penulis</td><td>Sumber</td><td>Action</td></tr>
<%
String sql="select * from berita";
int no=0;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnnews5a","","");
Statement statement = connection.createStatement();
ResultSet rs = statement.executeQuery(sql);
while(rs.next())
{
no=rs.getInt("no");
out.print("<tr><td>"+no+"</td><td>");
out.print(rs.getString("berita")+"</td><td>");
out.print(rs.getString("penulis")+"</td><td>");
out.print(rs.getString("sumber")+"</td>");
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