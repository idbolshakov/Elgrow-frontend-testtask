(function() {

var msg = ''
+'<div class="oldie">'
+'	<img class="oldie--warning" alt="Предупреждение об устаревшем браузере" src="static/png/oldie--warning.png" >'
+'		<h1>'
+'			Вы используете устаревшую версию браузера Internet Explorer'
+'		</h1>'
+'		<p class="oldie--about">'
+'			К сожалению, Ваша версия браузера является устаревшей и более не поддерживается. <br>'
+'		</p>'
+'		<p class="old_IE--recommend">'
+'			Чтобы продолжить работу установите <br>'
+'			один из современных браузеров: '
+'		</p>'
+'		<table class="oldie--browserTable" align="center">'
+'			<tr>'
+'				<td> <img class="oldie--browserIcon" alt="Логотип браузера Firefox" src="static/png/oldie--browserIcon-Firefox.png"> </td>'
+'				<td> <img class="oldie--browserIcon" alt="Логотип браузера Chrome"  src="static/png/oldie--browserIcon-Chrome.png"> </td>'
+'				<td> <img class="oldie--browserIcon" alt="Логотип браузера Opera"   src="static/png/oldie--browserIcon-Opera.png"> </td>'
+'			</tr>'
+'			<tr>'
+'				<td><a href="https://www.mozilla.org/ru/firefox/new/">Firefox</a></td>'
+'				<td><a href="https://www.google.ru/chrome/browser/desktop/">Chrome</a></td>'
+'				<td><a href="http://www.opera.com/ru">Opera</a></td>'
+'			</tr>'	
+'		</table>'
+'</div>'

document.write(msg);

})();
