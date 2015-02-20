<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
				<div class="section normal update">
					<div class="heading">
						<h2>検索条件</h2>
					</div>
				未実装
				</div>
				<div class="section normal">
					<div class="heading">
						<h2>検索結果</h2>
					</div>
					<table border = "1">
						<tr align="center">
							<td width = "30px">ID</td>
							<td width = "150px">Name</td>
							<td width = "150px">Player</td>
							<td width = "100px">Race</td>
						</tr>
						<c:forEach items="${csList}" var="list" varStatus="status">
						<tr>
							<td align="right"><s:link href="showSheet/${list.characterId}"><c:out value="${list.characterId}" /></s:link></td>
							<td><c:out value="${list.characterName}" /></td>
							<td><c:out value="${list.playerName}" /></td>
							<td><c:out value="${list.race}" /></td>
						</tr>
						</c:forEach>
					</table>
					<BR>
					<s:link href="/index"><html:button property="toTop" value="TOPへ戻る" /></s:link>
				</div>
			</div>
	</tiles:put>
</tiles:insert>