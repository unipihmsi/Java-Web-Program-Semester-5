<html>
<body>
	PENDAFTARAN ONLINE
	<form action="hasildaftar.jsp" method="post">
		<pre>
			Nama	: <input type="text" name="txtnama">

			Jurusan	: <select name="cbjurusan">
						<option value="TI">TI
						<option value="SI">SI
						<option value="RPL">RPL
					  </select>

			Kota	: 
			<select name="cbkota" size="2">
				<option value="JAKARTA">JAKARTA
				<option value="BANDUNG">BANDUNG
				<option value="BOGOR">BOGOR
				<option value="TANGERANG">TANGERANG
			</select>

			Kelas	: <input type="radio" name="rdk" value="pagi">pagi
			          <input type="radio" name="rdk" value="malam">malam

			Alamat	:
			<textarea name="txtalamat" rows="4" cols="40">
			</textarea>

				     <input type="submit" value="Daftar"><input type="reset" value="Batal">

		</pre>
	</form>
</body>