<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
	function loginKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('kad1').value=='')
			{
			alert("Kullanýcý Adý Alaný Boþ Olamaz!");
			document.getElementById('kad1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre1').value=='' || isNaN(document.getElementById('sifre1').value))
			{
			alert("Þifre Alaný Boþ Olamaz ve Sayýsal Olmayan Ýfade Ýçeremez!");
			document.getElementById('sifre1').value="";
			document.getElementById('sifre1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	function registerKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('kad2').value=='')
			{
			alert("Kullanýcý Adý Alaný Boþ Olamaz!");
			document.getElementById('kad2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre2_1').value=='' || isNaN(document.getElementById('sifre2_1').value))
			{
			alert("Þifre Alaný Boþ Olamaz ve Sayýsal Olmayan Ýfade Ýçeremez!");
			document.getElementById('sifre2_1').value="";
			document.getElementById('sifre2_1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre2_2').value=='' || isNaN(document.getElementById('sifre2_2').value))
			{
			alert("Þifre (Tekrar) Alaný Boþ Olamaz ve Sayýsal Olmayan Ýfade Ýçeremez!");
			document.getElementById('sifre2_2').value="";
			document.getElementById('sifre2_2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre2_1').value!=document.getElementById('sifre2_2').value)
			{
			alert("Þifreler Eþleþmiyor!");
			document.getElementById('sifre2_1').value="";
			document.getElementById('sifre2_2').value="";
			document.getElementById('sifre2_1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ad2').value=='')
			{
			alert("Adý Alaný Boþ Olamaz!");
			document.getElementById('ad2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sad2').value=='')
			{
			alert("Soyadý Alaný Boþ Olamaz!");
			document.getElementById('sad2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('mail2').value=='')
			{
			alert("Mail Alaný Boþ Olamaz!");
			document.getElementById('mail2').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>
<%if session("userName")="" then%>
<table width="650" align="center">
	<tr>
		<td valign="top">
			<form name="login" method="post" onsubmit="return loginKontrol()" action="login.asp">
			<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Login Ýþlemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Kullanýcý Adý</td>
					<td><input type="Text" id="kad1" name="kad1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Þifre</td>
					<td><input type="Password" id="sifre1" name="sifre1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Giriþ Yap"></td>
				</tr>
			</table>
			</form>
		</td>
		<td>
			<form name="register"  method="post" onsubmit="return registerKontrol()" action="register.asp">
			<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Register Ýþlemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Kullanýcý Adý</td>
					<td><input type="Text" id="kad2" name="kad2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Þifre</td>
					<td><input type="Password" id="sifre2_1" name="sifre2_1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Þifre (Tekrar)</td>
					<td><input type="Password" id="sifre2_2" name="sifre2_2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Adýnýz</td>
					<td><input type="Text" id="ad2" name="ad2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Soyadýnýz</td>
					<td><input type="Text" id="sad2" name="sad2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>e-Mail</td>
					<td><input type="Text" id="mail2" name="mail2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kayýt Ol"></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
</table>
<%else%>
	Oturum Bilgileri<br>
	Kullanýcý Ad: <%=session("userName")%><br>
	Ad: <%=session("ad")%><br>
	Soyad: <%=session("soyad")%><br>
	Mail: <%=session("mail")%><br>
	<a href="cikis.asp">Çýkmak için týklayýnýz.</a><br>	
	<a href="registerUpdate.asp?kad=<%=session("userName")%>">Bilgilerini güncellemek için týklayýnýz.</a>
<script type="text/javascript">	
	function laptopKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('id1').value==''|| isNaN(document.getElementById('id1').value))
			{
			alert("Id alaný boþ olamaz ve sayýsal olmayan ifade içeremez.");
			document.getElementById('id1').value="";
			document.getElementById('id1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('marka1').value=='')
			{
			alert("Marka alaný boþ olamaz");
			document.getElementById('marka1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('model1').value=='')
			{
			alert("Model alaný boþ olamaz");
			document.getElementById('model1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('islemci1').value=='')
			{
			alert("Ýslemci alaný boþ olamaz");
			document.getElementById('islemci1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ram1').value=='')
			{
			alert("Ram alaný boþ olamaz");
			document.getElementById('ram1').focus();
			returnVAL =false;
			}
			else if (document.getElementById('kart1').value=='')
			{
			alert("Ekran kartý alaný boþ olamaz");
			document.getElementById('kart1').focus();
			returnVAL =false;
			}
			else if (document.getElementById('depolama1').value=='')
			{
			alert("Depolama alaný boþ olamaz");
			document.getElementById('depolama1').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	function masaustuKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('id2').value==''|| isNaN(document.getElementById('id2').value))
			{
			alert("ID alaný boþ olamaz ve sayýsal olmayan ifade içeremez.");
			document.getElementById('id2').value="";
			document.getElementById('id2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('marka2').value=='')
			{
			alert("Marka alaný boþ olamaz");
			document.getElementById('marka2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('model2').value=='')
			{
			alert("Model alaný boþ olamaz");
			document.getElementById('model2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('islemci2').value=='')
			{
			alert("Ýslemci alaný boþ olamaz");
			document.getElementById('islemci2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ram2').value=='')
			{
			alert("Ram alaný boþ olamaz");
			document.getElementById('ram2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('kart2').value=='')
			{
			alert("Ekran kartý alaný boþ olamaz");
			document.getElementById('kart2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('depolama2').value=='')
			{
			alert("Depolama alaný boþ olamaz");
			document.getElementById('depolama2').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
</script>
</head>

<body>
<table width="950px" align="center">
	<tr>
		<td valign="top">
	<form name="laptop" method="post" onsubmit="return laptopKontrol()" action="laptopRegister.asp">
			<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Laptoplar</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>ID</td>
					<td><input type="Text" id="id1" name="id1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Marka</td>
					<td><input type="Text" id="marka1" name="marka1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Model</td>
					<td><input type="Text" id="model1" name="model1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ýþlemci</td>
					<td><input type="Text" id="islemci1" name="islemci1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ram</td>
					<td><input type="Text" id="ram1" name="ram1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ekran Kartý</td>
					<td><input type="Text" id="kart1" name="kart1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Depolama</td>
					<td><input type="Text" id="depolama1" name="depolama1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Ekle"></td>
				</tr>
			</table>
	</form><br>
			<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="8"><font color="#ff0000" style="font-weight: bold;">Laptoplar</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>ID</b></td>
					<td><b>Marka</b></td>
					<td><b>Model</b></td>
					<td><b>Ýþlemci</b></td>
					<td><b>Ram</b></td>
					<td><b>Ekran Kartý</b></td>
					<td><b>Depolama</b></td>
					<td><b>Ýþlemler</b></td>
				</tr>					
				<%Set conn = Server.CreateObject("ADODB.Connection")
				conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
				<%Set rs= conn.Execute("SELECT * FROM tblLaptop ORDER BY id")%>
				<%Do while Not rs.eof%>
					<tr height="40px" bgcolor="#ffffff" align="center">
						<td><%=rs("id")%></td>
						<td><%=rs("marka")%></td>
						<td><%=rs("model")%></td>
						<td><%=rs("islemci")%></td>
						<td><%=rs("ram")%></td>
						<td><%=rs("ekrankarti")%></td>
						<td><%=rs("depolama")%></td>
						<td><a href="laptopDelete.asp?id=<%=rs("id")%>">Sil</a></td>
					</tr>
				<%rs.MoveNext
				Loop%>
				</tr>
			</table>
		</td>
		<td valign="top">
	<form name="masaustu" method="post" onsubmit="return masaustuKontrol()" action="masaustuRegister.asp">
			<table align="center" bgcolor="#ff0000" cellpadding="5" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Masaüstü Bilgisayarlar</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>ID</td>
					<td><input type="Text" id="id2" name="id2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Marka</td>
					<td><input type="Text" id="marka2" name="marka2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Model</td>
					<td><input type="Text" id="model2" name="model2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ýþlemci</td>
					<td><input type="Text" id="islemci2" name="islemci2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ram</td>
					<td><input type="Text" id="ram2" name="ram2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ekran Kartý</td>
					<td><input type="Text" id="kart2" name="kart2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Depolama</td>
					<td><input type="Text" id="depolama2" name="depolama2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Ekle"></td>
				</tr>
			</table>
</form><br>
			<table align="center" bgcolor="#ff0000" cellpadding="1" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="8"><font color="#ff0000" style="font-weight: bold;">Masaüstüler</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>ID</b></td>
					<td><b>Marka</b></td>
					<td><b>Model</b></td>
					<td><b>Ýþlemci</b></td>
					<td><b>Ram</b></td>
					<td><b>Ekran Kartý</b></td>
					<td><b>Depolama</b></td>
					<td><b>Ýþlemler</b></td>
				</tr>					
				<%Set conn = Server.CreateObject("ADODB.Connection")
				conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>
				
				<%Set rs= conn.Execute("SELECT * FROM tblMasaustu ORDER BY id")%>
				<%Do while Not rs.eof%>
					<tr height="40px" bgcolor="#ffffff" align="center">
						<td><%=rs("id")%></td>
						<td><%=rs("marka")%></td>
						<td><%=rs("model")%></td>
						<td><%=rs("islemci")%></td>
						<td><%=rs("ram")%></td>
						<td><%=rs("ekrankarti")%></td>
						<td><%=rs("depolama")%></td>
						<td><a href="masaustuDelete.asp?id=<%=rs("id")%>">Sil</a></td>
					</tr>
				<%rs.MoveNext
				Loop%>
				</tr>
			</table>
		</td>
		</td>
	</tr>
</table>
<%end if%>
</body>
</html>
