Oturum Bilgileri<br>
Kullan�c� Ad: <%=session("userName")%><br>
Ad: <%=session("ad")%><br>
Soyad: <%=session("soyad")%>

<%session.Abandon%>
<script>
	alert("��k�� ��leminiz Ba�ar�yla Ger�ekle�mi�tir!");
	window.location = 'index.asp'
</script>"