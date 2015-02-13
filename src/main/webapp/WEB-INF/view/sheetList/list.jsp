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
						<tr>
							<td>ID</td>
							<td>Name</td>
							<td>Player</td>
							<td>Race</td>
						</tr>
						<c:forEach items="${csList}" var="list" varStatus="status">
						<tr>
							<td><s:link href="/create/edit/${list.characterId}"><c:out value="${list.characterId}" /></s:link></td>
							<td><c:out value="${list.characterName}" /></td>
							<td><c:out value="${list.playerName}" /></td>
							<td>testRace</td>
						</tr>
						</c:forEach>
					</table>
				</div>
			</div>
		</tiles:put>
</tiles:insert>