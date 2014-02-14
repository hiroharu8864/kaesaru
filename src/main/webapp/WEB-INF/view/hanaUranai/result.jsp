<%@page pageEncoding="UTF-8"%>
<% String username = (String) request.getSession().getAttribute("username"); %>
<% String girlfriend = (String) request.getSession().getAttribute("girlfriend"); %>
<% String item1Message = (String) request.getSession().getAttribute("item1Message"); %>
<% String itemAllMessage = (String) request.getSession().getAttribute("itemAllMessage"); %>
<% Integer item1Point = (Integer) request.getSession().getAttribute("item1Point"); %>
<% String item2Message = (String) request.getSession().getAttribute("item2Message"); %>
<% Integer item2Point = (Integer) request.getSession().getAttribute("item2Point"); %>
<% String item3Message = (String) request.getSession().getAttribute("item3Message"); %>
<% Integer item3Point = (Integer) request.getSession().getAttribute("item3Point"); %>
<% String item4Message = (String) request.getSession().getAttribute("item4Message"); %>
<% Integer item4Point = (Integer) request.getSession().getAttribute("item4Point"); %>
<% String item5Message = (String) request.getSession().getAttribute("item5Message"); %>
<% Integer item5Point = (Integer) request.getSession().getAttribute("item5Point"); %>
<% String item6Message = (String) request.getSession().getAttribute("item6Message"); %>
<% Integer item6Point = (Integer) request.getSession().getAttribute("item6Point"); %>
<tiles:insert template="/WEB-INF/view/common/layout3.jsp" flush="true">
	<tiles:put name="title" value="HanaUranai Page" />
	<tiles:put name="content" type="string">

	<s:form  method="POST">
	<Div Align="center">
		<b><% out.println(username); %>さん</b>と<b><% out.println(girlfriend); %>さん</b>の恋占い。
	</Div>
	<Div Align="center" style="margin-top: 50px; margin-bottom: 40px;">
		<b class="result"><% out.println(itemAllMessage); %></b>
	</Div>
	
	<table class="name" align="center">
		<tr>
			<th class="name">恋人になる可能性</th>
			<td class="name"><% out.println(item1Point + "%"); %></td>
			<td class="name"><% out.println(item1Message); %></td>
			<td class="name">
			<% if (item1Message.equals("絶好調！！")) {
					out.println("積極的にアプローチしてみてはいかがでしょう？");
				} else if (item1Message.equals("好調！")) {
					out.println("おそらく問題ないですが、油断せずに関係を築きましょう。");
				} else if (item1Message.equals("普通")){
					out.println("もしかしたら、うまくいくかも？");
				} else if (item1Message.equals("不調..")){
					out.println("可能性は低いでしょう。");
				} else {
					out.println("負の恋愛オーラがお互い出てます。");
				}
			%>
			</td>
		</tr>
		<tr>
			<th class="name">ゴールイン度</th>
			<td class="name"><% out.println(item2Point + "%"); %></td>
			<td class="name"><% out.println(item2Message); %></td>
			<td class="name">
			<% if (item2Message.equals("絶好調！！")) {
					out.println("ゴールイン間違いなしです。");
				} else if (item2Message.equals("好調！")) {
					out.println("おそらく問題ないですが、油断せずに関係を築きましょう。");
				} else if (item2Message.equals("普通")){
					out.println("可能性は五分五分です。");
				} else if (item2Message.equals("不調..")){
					out.println("難しいかもしれません。");
				} else {
					out.println("負の恋愛オーラがお互い出てます。相性が悪いかもしれません。");
				}
			%>
			</td>
		</tr>
		<tr>
			<th class="name">相性度</th>
			<td class="name"><% out.println(item3Point + "%"); %></td>
			<td class="name"><% out.println(item3Message); %></td>
			<td class="name">
			<% if (item3Message.equals("絶好調！！")) {
					out.println("相性抜群！お互いを高め合うことができるパートナーです。");
				} else if (item3Message.equals("好調！")) {
					out.println("お互いを高め合うことができるパートナーです。");
				} else if (item3Message.equals("普通")){
					out.println("可もなく、不可もなくです。");
				} else if (item3Message.equals("不調..")){
					out.println("お互いの思いやりがマイナスに作用するかもしれません。");
				} else {
					out.println("相性は良く無いです。趣味など、共通点を見つけましょう。");
				}
			%>
			</td>
		</tr>
		<tr>
			<th class="name">人生安定度</th>
			<td class="name"><% out.println(item4Point + "%"); %></td>
			<td class="name"><% out.println(item4Message); %></td>
			<td class="name">
			<% if (item4Message.equals("絶好調！！")) {
					out.println("安定した幸せな生活が送れるでしょう。");
				} else if (item4Message.equals("好調！")) {
					out.println("比較的、安定した幸せな生活が送れるでしょう。");
				} else if (item4Message.equals("普通")){
					out.println("可もなく不可もなく、安定した暮らしが送れるでしょう。");
				} else if (item4Message.equals("不調..")){
					out.println("少し苦労するかも");
				} else {
					out.println("波乱、激動の人生が待っております。");
				}
			%>
			</td>
		</tr>
		<tr>
			<th class="name">浮気度</th>
			<td class="name"><% out.println(item5Point + "%"); %></td>
			<td class="name"><% out.println(item5Message); %></td>
			<td class="name">
			<% if (item5Message.equals("絶好調！！")) {
					out.println("相手一筋です！");
				} else if (item5Message.equals("好調！")) {
					out.println("いつまでたってもラブラブです。");
				} else if (item5Message.equals("普通")){
					out.println("若い人に惹かれるかもしれませんが、大丈夫です。");
				} else if (item5Message.equals("不調..")){
					out.println("若い人に惹かれがちです。");
				} else {
					out.println("The 浮気マン！");
				}
			%>
			</td>
		</tr>
		<tr>
			<th class="name">遺伝子度</th>
			<td class="name"><% out.println(item6Point + "%"); %></td>
			<td class="name"><% out.println(item6Message); %></td>
			<td class="name">
			<% if (item6Message.equals("絶好調！！")) {
					out.println("歴史に名を残す子供が生まれるかもしれません。");
				} else if (item6Message.equals("好調！")) {
					out.println("優秀な子供が生まれます。");
				} else if (item6Message.equals("普通")){
					out.println("まじめな子供が生まれます。");
				} else if (item6Message.equals("不調..")){
					out.println("わんぱくな子供が生まれます。");
				} else {
					out.println("くそガキが生まれます。");
				}
			%>
			</td>
		</tr>
	</table>

	</s:form>

	<s:form method="POST">
		<Div Align="center" style="margin-top: 10px;">
			<s:submit property="index" value="最初から占う"/>
		</Div>
	</s:form>

	</tiles:put>
</tiles:insert>