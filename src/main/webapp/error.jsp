<%@page pageEncoding="UTF-8"%>
<%@page language="java" isErrorPage="true" %>
<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="Kaesaru Error Page" />
	<tiles:put name="content" type="string">
		
		<p>システムエラーが発生しました。</p>

		<Div Align="left">
			<p><s:link href="/inputName">TopPageに戻る</s:link></p>
		</Div>

	</tiles:put>
</tiles:insert>