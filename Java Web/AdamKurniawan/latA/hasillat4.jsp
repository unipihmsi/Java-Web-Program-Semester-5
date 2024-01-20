<html>
<body>
<%
	String snilai=request.getParameter("txtnilai");
	int inilai;
	inilai=Integer.parseInt(snilai);
	if(inilai>100)
	{
		out.println("Salah Input");
	} 
	else if(inilai>=80)
	{
		out.println("A");
	} 
	else if(inilai>=70)
	{
		out.println("B");
	} 
	else if(inilai>=60)
	{
		out.println("C");
	} 
	else if(inilai>=50)
	{
		out.println("D");
	} 
	else if(inilai<=-1)
	{
		out.println("Dongo");
	} 
	else
	{
		out.println("E");
	}
%>
</body>
</html>