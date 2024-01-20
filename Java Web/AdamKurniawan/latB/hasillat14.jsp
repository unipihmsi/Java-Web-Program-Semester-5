<html>
<body>
	Contoh loop/perulangan/repetition dengan Pangkat
	<p>
		<%
			//---Deklarasi String---
			String sbil=request.getParameter("txtbil");
			String spang=request.getParameter("txtpang");

			//---Deklarasi Integer---
			int ibil, ipang, a, ihasil;

			//---Convert String ke Integer---
			ibil=Integer.parseInt(sbil);
			ipang=Integer.parseInt(spang);

			//---LOOP---
			a=1;
			ihasil=1;
			while(a<=ipang)
			{
				ihasil=ihasil*ibil;
				a=a+1;
			}

			//---Print---
			out.println("Hasil Perpangkatan="+ihasil);
		%>
</body>
</html>