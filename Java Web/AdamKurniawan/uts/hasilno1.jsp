<html>
<body>
	
<%
String sjam=request.getParameter("txtjam");
String stun=request.getParameter("txttun");

int ijam,itun,igaji,iupah;

iupah=100000;
ijam=Integer.parseInt(sjam);
itun=Integer.parseInt(stun);
igaji=itun + (ijam*iupah);


out.println("Jumlah Jam  			 ="+ijam+"<br>");
out.println("Tunjangan Transport     ="+itun+"<br>");
out.println("Upah Per jam    	     ="+iupah+"<br>");
out.println("Gaji Bersih  			 ="+igaji);
%>

</body>
</html>