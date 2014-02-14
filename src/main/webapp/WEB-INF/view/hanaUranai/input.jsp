<%@page pageEncoding="UTF-8"%>
<tiles:insert template="/WEB-INF/view/common/layout3.jsp" flush="true">
	<tiles:put name="title" value="HanaUranai Top Page" />
	<tiles:put name="content" type="string">

	<script>
	function DisableButton(b) {
		b.disabled = true;
		b.value = 'submit';
		b.form.submit();
	}
	</script>

	<s:form  method="POST" action="uranai1">

	<p>名前を入力して、花の画像をクリックしてください。</p>

	<html:errors property="username" />
	<html:errors property="girlfriend" />

	<table class="name" align="center">
		<tr>
			<th class="name">あなたの名前:</th>
			<td class="name">
				<html:text property="username" maxlength="30" size="40" />
			</td>
		</tr>
		<tr>
			<th class="name">気になる相手の名前:</th>
			<td class="name">
				<html:text property="girlfriend" maxlength="30" size="40" />
			</td>
		</tr>
	</table>

		<Div Align="center" style="margin-top: 10px;">
			<input name="submit" type="image"
				src='<%=request.getContextPath() + "/imagehana/sakura_1.png"%>'
				alt=""
				onclick="DisableButton(this);" />
		</Div>

	</s:form>

	</tiles:put>
</tiles:insert>