<html>
<body>
<%
	String snilai=request.getParameter("txtnilai");
	int inilai;
	inilai=Integer.parseInt(snilai);
	if(inilai>=80 && inilai<=100)
	{
		out.println("A");
	} 
	else if(inilai>=70 && inilai<=79))
	{
		out.println("B");
	} 
	else if(inilai>=60 && inilai<=69))
	{
		out.println("C");
	} 
	else if(inilai>=50 && inilai<=59))
	{
		out.println("D");
	} 
	else if(inilai>=0 && inilai<=49))
	{
		out.println("E");
	}
	else
	{
		out.println("Salah Input");
	}
%>
</body>
</html>