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

<%Set rs= conn.Execute("UPDATE tblKullanici SET kad='" & kad & "', sifre=" & sifre & ", ad='" & ad & "', soyad='" & sad & "', mail='" & mail & "' WHERE kad='" & kad & "'")
session("userName")=kad
session("sifre")=sifre
session("ad")=ad
session("soyad")=sad
session("mail")=mail%>
<script>alert("Kayýt güncellendi.")
window.location = 'index.asp'</script>
</body>
</html>
