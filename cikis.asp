Oturum Bilgileri<br>
Kullanýcý Ad: <%=session("userName")%><br>
Ad: <%=session("ad")%><br>
Soyad: <%=session("soyad")%>

<%session.Abandon%>
<script>
	alert("Çýkýþ Ýþleminiz Baþarýyla Gerçekleþmiþtir!");
	window.location = 'index.asp'
</script>"