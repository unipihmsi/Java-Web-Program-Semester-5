<%@ page import="java.util.*,java.sql.*" %>
<html>
<%
String katakunci="";
String sql="SELECT * FROM berita WHERE penulis like '%";
katakunci=request.getParameter("txtcari");
StringTokenizer stok=new StringTokenizer(katakunci,",+");
while(stok.hasMoreTokens())
{
	String newStr=stok.nextToken();
	sql=sql+newStr+"%' or berita like '%";
}
sql=sql.substring(0,sql.length()-18);
out.println("SQL :<br>");
out.println(sql);
out.println("<p>");
out.println("Hasil:<br>");
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnnews5a","","");
Statement statement = connection.createStatement();
ResultSet rs = statement.executeQuery(sql);
while(rs.next())
{
	out.println(rs.getString("berita")+"<br>");
	out.println("Ditulis oleh :");
	out.println(rs.getString("penulis")+"<br>");
}
statement.close();
connection.close();
%>
</html>