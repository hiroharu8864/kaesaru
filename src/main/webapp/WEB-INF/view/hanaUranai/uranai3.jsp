<%@page pageEncoding="UTF-8"%>
<% String username = (String) request.getSession().getAttribute("username"); %>
<% String girlfriend = (String) request.getSession().getAttribute("girlfriend"); %>
<tiles:insert template="/WEB-INF/view/common/layout3.jsp" flush="true">
	<tiles:put name="title" value="HanaUranai Page" />
	<tiles:put name="content" type="string">

	<s:form  method="POST" action="uranai4">
	<Div Align="center">
		<b><% out.println(username); %>さん</b>と<b><% out.println(girlfriend); %>さん</b>の恋占い。
	</Div>

	<p align="center">願いを込めて、花の画像をクリックしてください。</p>

	<Div Align="center" style="margin-top: 10px;">
		<input name="submit" type="image"
			src='<%=request.getContextPath() + "/imagehana/sakura_3.png"%>'
			alt=""
			onclick="DisableButton(this);" />
	</Div>
	</s:form>

	<s:form method="POST">
		<Div Align="center" style="margin-top: 10px;">
			<s:submit property="index" value="最初から占う"/>
		</Div>
	</s:form>

	</tiles:put>
</tiles:insert>