<html>
<body>
<%
	//---Deklarasi String---
	String stoefl=request.getParameter("txttoefl");
	String stpa=request.getParameter("txttpa");
	String spsikologi=request.getParameter("txtpsikologi");
	String spengalaman=request.getParameter("txtpengalaman");
	String sumur=request.getParameter("txtumur");

	//---Deklarasi Integer---
	int itoefl, itpa, ipsikologi, ipengalaman, iumur;

	//---Convert String ke Integer---
	itoefl=Integer.parseInt(stoefl);
	itpa=Integer.parseInt(stpa);
	ipsikologi=Integer.parseInt(spsikologi);
	ipengalaman=Integer.parseInt(spengalaman);
	iumur=Integer.parseInt(sumur);

	if(itoefl>500 && itpa>400 && ipsikologi>300 && ipengalaman>2 && iumur>20 &&iumur<40)
	{
		out.println("<hr>");
		out.println("<center><h1>DITERIMA</center></h1>");
		out.println("<hr>");
	} 
	else
	{
		out.println("<hr>");
		out.println("<center><h1>DITOLAK</center></h1>");
		out.println("<hr>");
	}
%>
</body>
</html>