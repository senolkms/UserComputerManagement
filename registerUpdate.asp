<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
	<script type="text/javascript">
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
			document.getElementById('sad2').focus();
			returnVAL =false;
			}
		return returnVAL;
		}
	</script>
</head>

<body>
<%kad=request.querystring("kad")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblKullanici WHERE kad='" & kad & "'")%>
<form name="register"  method="post" onsubmit="return registerKontrol()" action="registerUpdate2.asp">
<table width="300px" align="center" bgcolor="#ff0000" cellpadding="0" cellspacing="1">
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><font color="#ff0000" style="font-weight: bold;">Kay�t G�ncelleme</font></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Kullan�c� Ad�</td>
		<td><input type="Text" id="kad2" name="kad2" value="<%=rs("kad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>�ifre</td>
		<td><input type="Text" id="sifre2_1" name="sifre2_1" value="<%=rs("sifre")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Ad�n�z</td>
		<td><input type="Text" id="ad2" name="ad2" value="<%=rs("ad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>Soyad�n�z</td>
		<td><input type="Text" id="sad2" name="sad2" value="<%=rs("soyad")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td>e-Mail</td>
		<td><input type="Text" id="mail2" name="mail2" value="<%=rs("mail")%>"></td>
	</tr>
	<tr height="40px" bgcolor="#ffffff" align="center">
		<td colspan="2"><input type="Reset" value="Temizle">&nbsp;&nbsp;&nbsp;&nbsp;<input type="Submit" value="G�ncelle"></td>
	</tr>
</table>
</form>
</body>
</html>
