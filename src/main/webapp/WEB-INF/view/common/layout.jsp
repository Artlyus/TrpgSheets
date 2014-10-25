<html>
<head>
<title><tiles:getAsString name="title" /></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="${f:url('/css/common.css')}" />
</head>
<body>
<table width="100%">
  <tr><td colspan="2"><tiles:insert page="/WEB-INF/view/common/header.jsp" /></td></tr>
  <tr>
    <td><tiles:insert attribute="content" /><tiles:insert page="/WEB-INF/view/common/menu.jsp" /><tiles:insert page="/WEB-INF/view/common/footer.jsp" /></td>
  </tr>
</table>
</body>
</html>