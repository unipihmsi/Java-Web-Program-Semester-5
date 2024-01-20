<html>
<body>
	
<%
String sjum=request.getParameter("txtjumlah");
String sharga=request.getParameter("txtharga");

int ijum,iharga,ibayar;

ijum=Integer.parseInt(sjum);
iharga=Integer.parseInt(sharga);
ibayar=ijum*iharga;

out.println("Jumlah Barang ="+ijum+"<br>");
out.println("Harga Barang  ="+iharga+"<br>");
out.println("Total Bayar   ="+ibayar);
%>

</body>
</html>