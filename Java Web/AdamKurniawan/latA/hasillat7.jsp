<html>
<body>
<%
	//---Deklarasi String---
	String sberat=request.getParameter("txtberat");
	String slokasi=request.getParameter("rdlok");
	String sasuransi=request.getParameter("cbasuransi");

	
	//---Deklarasi Integer---
	int iberat, iongkir, ilokasi, ibayar, iasuransi, ihasuransi;

	iongkir=0;
	ihasuransi=0;

	//---Convert String ke Integer---
	iberat=Integer.parseInt(sberat);
	ilokasi=Integer.parseInt(slokasi);
	iasuransi=Integer.parseInt(sasuransi);


	//---IF---
		if(ilokasi==1)
		{
			out.println("Lokasi = <h1>JAWA</h1><br>");
			iongkir=9999999;
		}
		if(ilokasi==2)
		{
			out.println("Lokasi = Sumatra<br>");
			iongkir=20000;
		}
		if(ilokasi==3)
		{
			out.println("Lokasi = Bali<br>");
			iongkir=30000;
		}
		if(iasuransi==4)
		{
			ihasuransi=5000;
		}
		if(iasuransi==5)
		{
			ihasuransi=0;
		}
		
		//---Math---
		ibayar=iberat*iongkir+ihasuransi;

		//---Print---
		out.println("Berat = "+iberat+" kg"+"<br>");
		out.println("Ongkir = Rp."+iongkir+"<br>");
		out.println("Asuransi = Rp."+ihasuransi+"<br>");
		out.println("Total Bayar = Rp."+ibayar);
%>
</body>
</html>