<html>
<body>
<%
	//---Deklarasi String---
	String sanak=request.getParameter("rdanak");
	String sgol=request.getParameter("cbgol");
	String strans=request.getParameter("txttrans");

	
	//---Deklarasi Integer---
	int itrans, ipokok, itun, ibersih, igol, ianak;

	ibersih=0;
	ipokok=0;
	itun=0;

	//---Convert String ke Integer---
	ianak=Integer.parseInt(sanak);
	igol=Integer.parseInt(sgol);
	itrans=Integer.parseInt(strans);


	//---IF---
		if(ianak==1)
		{
			out.println("anak = 0<br>");
			itun=0;
		}
		if(ianak==2)
		{
			out.println("anak = 1<br>");
			itun=100000;
		}
		if(ianak==3)
		{
			out.println("anak = 2<br>");
			itun=200000;
		}
		if(ianak==4)
		{
			out.println("anak = 3<br>");
			itun=300000;
		}
		if(igol==5)
		{
			out.println("golongan = 1<br>");
			ipokok=1000000;
		}
		if(igol==6)
		{
			out.println("golongan = 2<br>");
			ipokok=2000000;
		}
		if(igol==7)
		{
			out.println("golongan = 3<br>");
			ipokok=3000000;
		}
		
		//---Math---
		ibersih=ipokok+itun+itrans;

		//---Print---
		out.println("Gaji Pokok  = Rp. "+ipokok+"<br>");
		out.println("Tunjangan   = Rp."+itun+"<br>");
		out.println("Transport   = Rp."+itrans+"<br>");
		out.println("Gaji Bersih = Rp."+ibersih);
%>
</body>
</html>