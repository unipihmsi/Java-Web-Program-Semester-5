<html>
<body>
<%
	//---Deklarasi String---
	String sgol=request.getParameter("rdgol");
	String sjab=request.getParameter("cbjab");
	String strans=request.getParameter("txttrans");

	
	//---Deklarasi Integer---
	int itrans, ipokok, itun, ibersih, ijab, igol;

	ibersih=0;
	ipokok=0;
	itun=0;

	//---Convert String ke Integer---
	igol=Integer.parseInt(sgol);
	ijab=Integer.parseInt(sjab);
	itrans=Integer.parseInt(strans);


	//---IF---
		if(igol==1)
		{
			out.println("Golongan = 1<br>");
			ipokok=1000000;
		}
		if(igol==2)
		{
			out.println("Golongan = 2<br>");
			ipokok=2000000;
		}
		if(igol==3)
		{
			out.println("Golongan = 3<br>");
			ipokok=3000000;
		}
		if(ijab==4)
		{
			out.println("Jabatan = Admin<br>");
			itun=400000;
		}
		if(ijab==5)
		{
			out.println("Jabatan = Operator<br>");
			itun=500000;
		}
		if(ijab==6)
		{
			out.println("Jabatan = Manager<br>");
			itun=600000;
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