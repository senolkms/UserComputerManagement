<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
	<title>Untitled</title>
</head>

<body>
<%id=request.form("id2")
marka=request.form("marka2")
model=request.form("model2")
ram=request.form("ram2")
ekrankarti=request.form("kart2")
depolama=request.form("depolama2")%>

<%Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("vt.mdb")%>

<%Set rs= conn.Execute("SELECT * FROM tblMasaustu WHERE id=" & id )
if rs.EOF then%>
	<%Set rs= conn.Execute("INSERT INTO tblMasaustu (id, marka, model, islemci, ram, ekrankarti, depolama) VALUES(" & id & ", '" & marka & "', '" & model & "','" & islemci & "', '" & ram & "', '" & ekrankarti & "','" & depolama & "')")%>
	<script>alert("Kay�t ger�ekle�ti.")
	window.location = 'index.asp'</script>
<%else%>
	<script>alert("Bu kullan�c� ad� ba�ka biri taraf�ndan kullan�lmaktad�r.")
	window.location = 'index.asp'</script>
<%end if%>




</body>
</html>
