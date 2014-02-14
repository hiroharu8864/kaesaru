<%@page pageEncoding="UTF-8"%>
<% String username = (String) request.getSession().getAttribute("username"); %>
<% String displayGraph = (String) request.getSession().getAttribute("displayGraph"); %>
<% String romaName = (String) request.getSession().getAttribute("romaName"); %>
<% String romaFace = (String) request.getSession().getAttribute("romaFace"); %>
<% String message = (String) request.getSession().getAttribute("message"); %>
<% Integer persentage = (Integer) request.getSession().getAttribute("persentage"); %>
<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="Check Kaesaru Page" />
	<tiles:put name="content" type="string">
	
	<s:form method="POST">
	<table class="name" align="center">
		<tr>
			<th class="name">Input Your Name:</th>
				<td class="name">
					<html:text property="username" maxlength="30" size="40" />
				</td>
		</tr>
	</table>

		<% if (displayGraph != null) {
				out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><b>" + username + "さんの才能分析です。</b></Div>");
				out.println("<Div Align=\"center\" style=\"margin-bottom: 20px;\"><img src='" + displayGraph + "' align=\"middle\"></Div>");
				out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><b>あなたは" + romaName + "です。</b></Div>");
				out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><b>才能活かし度" + persentage + "％</b></Div>");
				out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\">" + message + "</Div>");

				if (romaName.equals("ガイウス・ユリウス・カエサル (カエサル)")) {
					out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><img src='" + romaFace + "' align=\"middle\"></Div>");
				}
				if (romaName.equals("ネロ・クラウディウス・カエサル・アウグストゥス・ゲルマニクス (ネロ)")) {
					out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><img src='" + romaFace + "' align=\"middle\"></Div>");
				}
				if (romaName.equals("ガイウス・ユリウス・カエサル・アウグストゥス・ゲルマニクス (カリグラ)")) {
					out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><img src='" + romaFace + "' align=\"middle\"></Div>");
				}
				if (romaName.equals("ティベリウス・ユリウス・カエサル (ティベリウス)")) {
					out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><img src='" + romaFace + "' align=\"middle\"></Div>");
				}
				if (romaName.equals("ティベリウス・センプロニウス・グラックス (グラックス)")) {
					out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><img src='" + romaFace + "' align=\"middle\"></Div>");
				}
				if (romaName.equals("グナエウス・ポンペイウス・マグヌス (ポンペイウス)")) {
					out.println("<Div Align=\"center\" style=\"margin-top: 20px; margin-bottom: 20px;\"><img src='" + romaFace + "' align=\"middle\"></Div>");
				}
				out.println("<table class=\"name\" align=\"center\">" +
							"<tr><th class=\"name\">カエサル</th><td class=\"name\">活かされている才能</td></tr>" +
							"<tr><th class=\"name\">ネロ</th><td class=\"name\">目立つ才能</td></tr>" +
							"<tr><th class=\"name\">カリグラ</th><td class=\"name\">お調子モノ才能</td></tr>" +
							"<tr><th class=\"name\">ティベリウス</th><td class=\"name\">引きこもり才能</td></tr>" +
							"<tr><th class=\"name\">グラックス兄弟</th><td class=\"name\">厄介なことに巻き込まれ才能</td></tr>" +
							"<tr><th class=\"name\">ポンペイウス</th><td class=\"name\">異性に溺れる才能</td><tr/>" +
							"</table>");
			} else {
				out.println("");
			}
		%>

		<html:errors property="username" />

		<Div Align="center" style="margin-top: 5px;">
			<s:submit property="checkResult" value="木村る"/>
		</Div>

	</s:form>
	</tiles:put>
</tiles:insert>
