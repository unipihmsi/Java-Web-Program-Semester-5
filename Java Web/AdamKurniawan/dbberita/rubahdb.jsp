<%@ page import="java.sql.*" %>
<%
String kunci=request.getQueryString();
String sql="SELECT * FROM berita WHERE berita.no="+ kunci;
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnnews5a","","");
Statement statement = connection.createStatement();
ResultSet rs = statement.executeQuery(sql);
rs.next();
%>
<form method="post" action="simpandb.jsp">
	<input type="hidden" name="kunci" value="<% out.println(""+kunci);%>"><p> Headline<br>
	<textarea rows="5" name="TextGanti" cols="42">
		<%= rs.getString("berita")%>
	</textarea><p> Penulis <br>
		<input type="text" name="txtpenulis" value="<%= rs.getString("penulis")%>"><p>
			<p> Sumber <br>
		<input type="text" name="txtsumber" value="<%= rs.getString("sumber")%>"><p>
		<input type="submit" value="submit">
</form>
<%
statement.close();
connection.close();
%>