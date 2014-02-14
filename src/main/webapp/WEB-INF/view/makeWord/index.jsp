<%@page pageEncoding="UTF-8"%>
<% String word1 = (String) request.getSession().getAttribute("word1"); %>
<% String word2 = (String) request.getSession().getAttribute("word2"); %>
<% String word3 = (String) request.getSession().getAttribute("word3"); %>
<% String word4 = (String) request.getSession().getAttribute("word4"); %>
<% String word5 = (String) request.getSession().getAttribute("word5"); %>
<% String word6 = (String) request.getSession().getAttribute("word6"); %>
<tiles:insert template="/WEB-INF/view/common/layout2.jsp" flush="true">
	<tiles:put name="title" value="Word Maker Page" />
	<tiles:put name="content" type="string">

	<s:form method="POST">
	<table class="name" align="center">
		<tr>
			<th class="name">名付対象文字数:</th>
				<td class="name">
					<html:select property="objectname">
						<html:option value="3">3</html:option>
						<html:option value="4">4</html:option>
						<html:option value="5">5</html:option>
						<html:option value="6">6</html:option>
					</html:select>
				</td>
		</tr>
	</table>

	<% 	out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\">");	
		if (word1 != null) {
			out.println("<img src='/kaesaru/images/sanae.png'>");
			out.println("名前は「");
			out.println("<img src='/kaesaru/imagewords/" + word1 + ".png'>");
		}
		if (word2 != null) {
			out.println("<img src='/kaesaru/imagewords/" + word2 + ".png'>");
		}
		if (word3 != null) {
			out.println("<img src='/kaesaru/imagewords/" + word3 + ".png'>");
		}
		if (word4 != null) {
			out.println("<img src='/kaesaru/imagewords/" + word4 + ".png'>");
		}
		if (word5 != null) {
			out.println("<img src='/kaesaru/imagewords/" + word5 + ".png'>");
		}
		if (word6 != null) {
			out.println("<img src='/kaesaru/imagewords/" + word6 + ".png'>");
		}
		if (word1 != null) {
			out.println("」よ。");
		}
		out.println("</Div>"); %>


		<Div Align="center" style="margin-top: 5px;">
			<s:submit property="makeName1" value="名付ける"/>
		</Div>

	</s:form>

	</tiles:put>
</tiles:insert>
