<%page args="item"/>
<li>
    <a href="${item.get('href', '#')}">${item.get('name', 'foo')}</a>
	% if len(item.get('children', [])) > 0:
    <ul>
	% for child in item.get('children', []):
        <%include file="recursive_menu.mak" args="item=child" />
	% endfor
	</ul>
	% endif
</li>
