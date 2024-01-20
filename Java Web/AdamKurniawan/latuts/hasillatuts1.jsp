<html>
<body>
	
<%
String span=request.getParameter("txtpanjang");
String sleb=request.getParameter("txtlebar");

int ipan,ileb,iluas,ikeliling;

ipan=Integer.parseInt(span);
ileb=Integer.parseInt(sleb);
iluas=ipan*ileb;
ikeliling=2*(ipan+ileb);

out.println("Panjang    ="+ipan+"<br>");
out.println("Lebar      ="+ileb+"<br>");
out.println("Luas       ="+iluas+"<br>");
out.println("Keliling   ="+ikeliling);
%>

</body>
</html>