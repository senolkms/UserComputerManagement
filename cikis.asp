Oturum Bilgileri<br>
Kullanıcı Ad: <%=session("userName")%><br>
Ad: <%=session("ad")%><br>
Soyad: <%=session("soyad")%>

<%session.Abandon%>
<script>
	alert("Çıkış İşleminiz Başarıyla Gerçekleşmiştir!");
	window.location = 'index.asp'
</script>"