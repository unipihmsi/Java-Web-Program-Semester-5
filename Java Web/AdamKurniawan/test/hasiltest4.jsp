<html>
<body>
	Contoh loop/perulangan/repetition dengan Faktorial
	<p>
		<%
			//---Deklarasi String---
			String sbil=request.getParameter("txtbil");

			//---Deklarasi Integer---
			int ibil, a, ihasil;

			//---Convert String ke Integer---
			ibil=Integer.parseInt(sbil);

			//---LOOP---
			a=1;
			ihasil=1;
			while(a<=ibil)
			{
				ihasil=ihasil*a;
				a=a+1;
			}

			//---Print---
			out.println("Hasil Faktorial="+ihasil);
		%>
</body>
</html>