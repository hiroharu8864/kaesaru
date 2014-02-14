<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
<title><tiles:getAsString name="title" /></title>
<link rel="stylesheet" href="<c:url value="/css/default.css" />"
	type="text/css" media="screen" />
</head>

<body>

	<table class="sample">
		<tr>
			<td class="sample">
				<tiles:insert page="/WEB-INF/view/common/header.jsp" /></td>
		</tr>

		<tr>
			<td class="sample">
				<tiles:insert attribute="content" /></td>
		</tr>

		<tr>
			<td class="sample">
			<tiles:insert page="/WEB-INF/view/common/footer.jsp" /></td>
		</tr>
	</table>

</body>
</html>