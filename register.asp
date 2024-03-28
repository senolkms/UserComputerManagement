<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>

<%kad=request.form("kad2")
sifre=request.form("sifre2_1")
ad=request.form("ad2")
sad=request.form("sad2")
mail=request.form("mail2")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblKullanici WHERE kad='" & kad & "'")
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblKullanici (kad, sifre, ad, soyad, mail) VALUES('" & kad & "', " & sifre & ", '" & ad & "', '" & sad & "', '" & mail & "')")%>
	<script>alert("Kayýt gerçekleþti.")
	window.location = 'index.asp'</script>
<%else%>
	<script>alert("Bu kullanýcý adý baþka biri tarafýndan kullanýlmaktadýr.")
	window.location = 'index.asp'</script>
<%end if%>
</body>
</html>
