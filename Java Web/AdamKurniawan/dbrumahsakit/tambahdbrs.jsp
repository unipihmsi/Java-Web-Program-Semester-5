<%@ page import="java.sql.*" %>
<html>
<head>
<title>Manajemen Database</title>
</head>
</body>
<%
String skodeobat=request.getParameter("txtkodeobat");
String snamaobat=request.getParameter("txtnamaobat");
String sharga=request.getParameter("txtharga");
int iharga;
iharga=Integer.parseInt(sharga);
String sql="insert into obat(kodeobat,namaobat,harga) values('"+skodeobat+"','"+snamaobat+"','"+iharga+"')";
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
Connection connection = DriverManager.getConnection("jdbc:odbc:dsnrumahsakit","","");
Statement statement = connection.createStatement();
statement.executeUpdate(sql);
statement.close();
connection.close();
%>
Data Sudah Diinput
</body>
</html>