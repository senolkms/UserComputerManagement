<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%kad=request.form("kad1")
sifre=request.form("sifre1")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblKullanici WHERE kad='" & kad & "' AND sifre=" & sifre)
if rs.EOF then%>
	<script>alert("B�yle bir kullan�c� kay�tl� de�ildir.")
	window.location = 'index.asp'</script>
<%else
	session("userName")=rs("kad")
	session("sifre")=rs("sifre")
	session("ad")=rs("ad")
	session("soyad")=rs("soyad")
	session("mail")=rs("mail")%>
	<script>alert("Giri� ba�ar�l� �ekilde ger�ekle�mi�tir.")
	window.location = 'index.asp'</script>
<%end if%>

</body>
</html>
