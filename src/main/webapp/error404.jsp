<%@page pageEncoding="UTF-8"%>
<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="Kaesaru 404 Error Page" />
	<tiles:put name="content" type="string">

		<p>404 Not Found<br/>
		指定されたURLは存在しません。URLをご確認ください。</p>

		<Div Align="left">
			<p><s:link href="/inputName">TopPageに戻る</s:link></p>
		</Div>

	</tiles:put>
</tiles:insert>