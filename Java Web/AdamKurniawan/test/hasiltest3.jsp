<html>
<body>
<%
	//---Deklarasi String---
	String sgol=request.getParameter("rdlok");
	String sanak=request.getParameter("rda");

	//---Deklarasi Integer---
	int igol, igapok, ianak, itunjangan, igaji;

	igapok=0;
	itunjangan=0;

	//---Convert String ke Integer---
	igol=Integer.parseInt(sgol);
	ianak=Integer.parseInt(sanak);


	//---IF---
		if(igol==1)
		{
			out.println("Golongan = 1<br>");
			igapok=1000000;
		}
		if(igol==2)
		{
			out.println("Golongan = 2<br>");
			igapok=2000000;
		}
		if(igol==3)
		{
			out.println("Golongan = 3<br>");
			igapok=3000000;
		}
		if(ianak==4)
		{
			out.println("Jumlah Anak = 0<br>");
			itunjangan=0;
		}
		if(ianak==5)
		{
			out.println("Jumlah Anak = 1<br>");
			itunjangan=300000;
		}
		if(ianak==6)
		{
			out.println("Jumlah Anak = 2<br>");
			itunjangan=600000;
		}

		//---Math---
		igaji=igapok+itunjangan;

		//---Print---
		out.println("Gaji Pokok = Rp."+igapok+"<br>");
		out.println("Tunjangan = Rp."+itunjangan+"<br>");
		out.println("Gaji Bersih = Rp."+igaji);
%>
</body>
</html>