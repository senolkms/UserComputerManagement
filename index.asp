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
			alert("Kullan�c� Ad� Alan� Bo� Olamaz!");
			document.getElementById('kad1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre1').value=='' || isNaN(document.getElementById('sifre1').value))
			{
			alert("�ifre Alan� Bo� Olamaz ve Say�sal Olmayan �fade ��eremez!");
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
			alert("Kullan�c� Ad� Alan� Bo� Olamaz!");
			document.getElementById('kad2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre2_1').value=='' || isNaN(document.getElementById('sifre2_1').value))
			{
			alert("�ifre Alan� Bo� Olamaz ve Say�sal Olmayan �fade ��eremez!");
			document.getElementById('sifre2_1').value="";
			document.getElementById('sifre2_1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre2_2').value=='' || isNaN(document.getElementById('sifre2_2').value))
			{
			alert("�ifre (Tekrar) Alan� Bo� Olamaz ve Say�sal Olmayan �fade ��eremez!");
			document.getElementById('sifre2_2').value="";
			document.getElementById('sifre2_2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sifre2_1').value!=document.getElementById('sifre2_2').value)
			{
			alert("�ifreler E�le�miyor!");
			document.getElementById('sifre2_1').value="";
			document.getElementById('sifre2_2').value="";
			document.getElementById('sifre2_1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ad2').value=='')
			{
			alert("Ad� Alan� Bo� Olamaz!");
			document.getElementById('ad2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('sad2').value=='')
			{
			alert("Soyad� Alan� Bo� Olamaz!");
			document.getElementById('sad2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('mail2').value=='')
			{
			alert("Mail Alan� Bo� Olamaz!");
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
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Login ��lemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Kullan�c� Ad�</td>
					<td><input type="Text" id="kad1" name="kad1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>�ifre</td>
					<td><input type="Password" id="sifre1" name="sifre1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Giri� Yap"></td>
				</tr>
			</table>
			</form>
		</td>
		<td>
			<form name="register"  method="post" onsubmit="return registerKontrol()" action="register.asp">
			<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Register ��lemleri</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Kullan�c� Ad�</td>
					<td><input type="Text" id="kad2" name="kad2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>�ifre</td>
					<td><input type="Password" id="sifre2_1" name="sifre2_1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>�ifre (Tekrar)</td>
					<td><input type="Password" id="sifre2_2" name="sifre2_2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ad�n�z</td>
					<td><input type="Text" id="ad2" name="ad2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Soyad�n�z</td>
					<td><input type="Text" id="sad2" name="sad2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>e-Mail</td>
					<td><input type="Text" id="mail2" name="mail2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="Kay�t Ol"></td>
				</tr>
			</table>
			</form>
		</td>
	</tr>
</table>
<%else%>
	Oturum Bilgileri<br>
	Kullan�c� Ad: <%=session("userName")%><br>
	Ad: <%=session("ad")%><br>
	Soyad: <%=session("soyad")%><br>
	Mail: <%=session("mail")%><br>
	<a href="cikis.asp">��kmak i�in t�klay�n�z.</a><br>	
	<a href="registerUpdate.asp?kad=<%=session("userName")%>">Bilgilerini g�ncellemek i�in t�klay�n�z.</a>
<script type="text/javascript">	
	function laptopKontrol()
		{
		var returnVAL = true;
		if (document.getElementById('id1').value==''|| isNaN(document.getElementById('id1').value))
			{
			alert("Id alan� bo� olamaz ve say�sal olmayan ifade i�eremez.");
			document.getElementById('id1').value="";
			document.getElementById('id1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('marka1').value=='')
			{
			alert("Marka alan� bo� olamaz");
			document.getElementById('marka1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('model1').value=='')
			{
			alert("Model alan� bo� olamaz");
			document.getElementById('model1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('islemci1').value=='')
			{
			alert("�slemci alan� bo� olamaz");
			document.getElementById('islemci1').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ram1').value=='')
			{
			alert("Ram alan� bo� olamaz");
			document.getElementById('ram1').focus();
			returnVAL =false;
			}
			else if (document.getElementById('kart1').value=='')
			{
			alert("Ekran kart� alan� bo� olamaz");
			document.getElementById('kart1').focus();
			returnVAL =false;
			}
			else if (document.getElementById('depolama1').value=='')
			{
			alert("Depolama alan� bo� olamaz");
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
			alert("ID alan� bo� olamaz ve say�sal olmayan ifade i�eremez.");
			document.getElementById('id2').value="";
			document.getElementById('id2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('marka2').value=='')
			{
			alert("Marka alan� bo� olamaz");
			document.getElementById('marka2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('model2').value=='')
			{
			alert("Model alan� bo� olamaz");
			document.getElementById('model2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('islemci2').value=='')
			{
			alert("�slemci alan� bo� olamaz");
			document.getElementById('islemci2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('ram2').value=='')
			{
			alert("Ram alan� bo� olamaz");
			document.getElementById('ram2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('kart2').value=='')
			{
			alert("Ekran kart� alan� bo� olamaz");
			document.getElementById('kart2').focus();
			returnVAL =false;
			}
		else if (document.getElementById('depolama2').value=='')
			{
			alert("Depolama alan� bo� olamaz");
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
					<td>��lemci</td>
					<td><input type="Text" id="islemci1" name="islemci1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ram</td>
					<td><input type="Text" id="ram1" name="ram1"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ekran Kart�</td>
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
					<td><b>��lemci</b></td>
					<td><b>Ram</b></td>
					<td><b>Ekran Kart�</b></td>
					<td><b>Depolama</b></td>
					<td><b>��lemler</b></td>
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
					<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Masa�st� Bilgisayarlar</font></td>
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
					<td>��lemci</td>
					<td><input type="Text" id="islemci2" name="islemci2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ram</td>
					<td><input type="Text" id="ram2" name="ram2"></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td>Ekran Kart�</td>
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
					<td colspan="8"><font color="#ff0000" style="font-weight: bold;">Masa�st�ler</font></td>
				</tr>
				<tr height="40px" bgcolor="#ffffff" align="center">
					<td><b>ID</b></td>
					<td><b>Marka</b></td>
					<td><b>Model</b></td>
					<td><b>��lemci</b></td>
					<td><b>Ram</b></td>
					<td><b>Ekran Kart�</b></td>
					<td><b>Depolama</b></td>
					<td><b>��lemler</b></td>
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
