<html>
<body>
<%
	//---Deklarasi String---
	String sjum=request.getParameter("txtjumlah");
	String skelas=request.getParameter("cbtiket");
	String sasuransi=request.getParameter("cbasuransi");
	
	//---Deklarasi Integer---
	int ijum, iharga, ikelas, ibayar, iasuransi, ihasuransi;

	iharga=0;
	ihasuransi=0;

	//---Convert String ke Integer---
	ijum=Integer.parseInt(sjum);
	ikelas=Integer.parseInt(skelas);
	iasuransi=Integer.parseInt(sasuransi);

	//---IF---
	if(ijum>0)
	{
		if(ikelas==0)
		{
			out.println("Kelas = VIP<br>");
			iharga=100000;
		}
		if(ikelas==1)
		{
			out.println("Kelas = VVIP<br>");
			iharga=200000;
		}
		if(ikelas==2)
		{
			out.println("Kelas = Eksekutif<br>");
			iharga=300000;
		}
		if(iasuransi==3)
		{
			ihasuransi=50000;
		}
		if(iasuransi==4)
		{
			ihasuransi=0;
		}
		
		//---Math---
		ibayar=ijum*iharga+ihasuransi;

		//---Print---
		out.println("Jumlah Tiket ="+ijum+"<br>");
		out.println("Harga Tiket ="+iharga+"<br>");
		out.println("Asuransi ="+ihasuransi+"<br>");
		out.println("Total Bayar ="+ibayar);
	}
	else
	{
		out.println("Tidak Valid");
	}
%>
</body>
</html>