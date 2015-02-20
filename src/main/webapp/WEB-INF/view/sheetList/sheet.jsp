<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
				<div class="section emphasis">
					<table border="2">
						<tr>
							<td>PC名</td>
							<td>${f:h(cs.characterName)}</td>
							<td>PL名</td>
							<td>${f:h(cs.playerName)}</td>
						</tr>
						<tr>
							<td>HP</td>
							<td>${f:h(cs.hp)}</td>
							<td>MP</td>
							<td>${f:h(cs.mp)}</td>
							<td>防護</td>
							<td>${f:h(cs.totalDef)}</td>
							<td>魔物知識</td>
							<td>${f:h(knowledge)}</td>
						</tr>
						<tr>
							<td>生抵</td>
							<td>${f:h(cs.lifeRegist)}</td>
							<td>精抵</td>
							<td>${f:h(cs.mentalRegist)}</td>
							<td>回避</td>
							<td>${f:h(cs.totalDef)}</td>
							<td>先制</td>
							<td>${f:h(first)}</td>
						</tr>
					</table>
					<BR>
			<table>
				<td>
					<table border="2">
						<tr>
							<td>能力値</td>
							<td>合計</td>
							<td>ボーナス</td>
						</tr>
						<tr>
							<td>器用</td>
							<td>${f:h(cs.dex)}</td>
							<td>${f:h(cs.bonusDex)}</td>
						</tr>
						<tr>
							<td>敏捷</td>
							<td>${f:h(cs.agi)}</td>
							<td>${f:h(cs.bonusAgi)}</td>
						</tr>
						<tr>
							<td>筋力</td>
							<td>${f:h(cs.str)}</td>
							<td>${f:h(cs.bonusStr)}</td>
						</tr>
						<tr>
							<td>生命</td>
							<td>${f:h(cs.vit)}</td>
							<td>${f:h(cs.bonusVit)}</td>
						</tr>
						<tr>
							<td>知力</td>
							<td>${f:h(cs.itl)}</td>
							<td>${f:h(cs.bonusItl)}</td>
						</tr>
						<tr>
							<td>精神</td>
							<td>${f:h(cs.men)}</td>
							<td>${f:h(cs.bonusMen)}</td>
						</tr>
					</table>
					<BR>
				</td>
				<td valign="top">
					<table border="2">
						<tr>
							<td>技能名</td>
							<td>レベル</td>
						</tr>
						<c:if test="${!empty cs.c1level}">
						<tr>
							<td>
								<c:choose>
									<c:when test="${cs.class1 == 1}">ファイター</c:when>
									<c:when test="${cs.class1 == 2}">グラップラー</c:when>
									<c:when test="${cs.class1 == 3}">フェンサー</c:when>
									<c:when test="${cs.class1 == 4}">シューター</c:when>
									<c:when test="${cs.class1 == 5}">ソーサラー</c:when>
									<c:when test="${cs.class1 == 6}">コンジャラー</c:when>
									<c:when test="${cs.class1 == 7}">プリースト</c:when>
									<c:when test="${cs.class1 == 8}">フェアリーテイマー</c:when>
									<c:when test="${cs.class1 == 9}">マギテック</c:when>
									<c:when test="${cs.class1 == 10}">スカウト</c:when>
									<c:when test="${cs.class1 == 11}">レンジャー</c:when>
									<c:when test="${cs.class1 == 12}">セージ</c:when>
									<c:when test="${cs.class1 == 13}">エンハンサー</c:when>
									<c:when test="${cs.class1 == 14}">バード</c:when>
									<c:when test="${cs.class1 == 15}">ライダー</c:when>
								</c:choose>
							</td>
							<td>${f:h(cs.c1level)}</td>
						</tr>
						</c:if>
						<c:if test="${!empty cs.c2level}">
						<tr>
							<td>
								<c:choose>
									<c:when test="${cs.class2 == 1}">ファイター</c:when>
									<c:when test="${cs.class2 == 2}">グラップラー</c:when>
									<c:when test="${cs.class2 == 3}">フェンサー</c:when>
									<c:when test="${cs.class2 == 4}">シューター</c:when>
									<c:when test="${cs.class2 == 5}">ソーサラー</c:when>
									<c:when test="${cs.class2 == 6}">コンジャラー</c:when>
									<c:when test="${cs.class2 == 7}">プリースト</c:when>
									<c:when test="${cs.class2 == 8}">フェアリーテイマー</c:when>
									<c:when test="${cs.class2 == 9}">マギテック</c:when>
									<c:when test="${cs.class2 == 10}">スカウト</c:when>
									<c:when test="${cs.class2 == 11}">レンジャー</c:when>
									<c:when test="${cs.class2 == 12}">セージ</c:when>
									<c:when test="${cs.class2 == 13}">エンハンサー</c:when>
									<c:when test="${cs.class2 == 14}">バード</c:when>
									<c:when test="${cs.class2 == 15}">ライダー</c:when>
								</c:choose>
							</td>
							<td>${f:h(cs.c2level)}</td>
						</tr>
						</c:if>
						<c:if test="${!empty cs.c3level}">
						<tr>
							<td>
								<c:choose>
									<c:when test="${cs.class3 == 1}">ファイター</c:when>
									<c:when test="${cs.class3 == 2}">グラップラー</c:when>
									<c:when test="${cs.class3 == 3}">フェンサー</c:when>
									<c:when test="${cs.class3 == 4}">シューター</c:when>
									<c:when test="${cs.class3 == 5}">ソーサラー</c:when>
									<c:when test="${cs.class3 == 6}">コンジャラー</c:when>
									<c:when test="${cs.class3 == 7}">プリースト</c:when>
									<c:when test="${cs.class3 == 8}">フェアリーテイマー</c:when>
									<c:when test="${cs.class3 == 9}">マギテック</c:when>
									<c:when test="${cs.class3 == 10}">スカウト</c:when>
									<c:when test="${cs.class3 == 11}">レンジャー</c:when>
									<c:when test="${cs.class3 == 12}">セージ</c:when>
									<c:when test="${cs.class3 == 13}">エンハンサー</c:when>
									<c:when test="${cs.class3 == 14}">バード</c:when>
									<c:when test="${cs.class3 == 15}">ライダー</c:when>
								</c:choose>
							</td>
							<td>${f:h(cs.c3level)}</td>
						</tr>
						</c:if>
						<c:if test="${!empty cs.c4level}">
						<tr>
							<td>
								<c:choose>
									<c:when test="${cs.class4 == 1}">ファイター</c:when>
									<c:when test="${cs.class4 == 2}">グラップラー</c:when>
									<c:when test="${cs.class4 == 3}">フェンサー</c:when>
									<c:when test="${cs.class4 == 4}">シューター</c:when>
									<c:when test="${cs.class4 == 5}">ソーサラー</c:when>
									<c:when test="${cs.class4 == 6}">コンジャラー</c:when>
									<c:when test="${cs.class4 == 7}">プリースト</c:when>
									<c:when test="${cs.class4 == 8}">フェアリーテイマー</c:when>
									<c:when test="${cs.class4 == 9}">マギテック</c:when>
									<c:when test="${cs.class4 == 10}">スカウト</c:when>
									<c:when test="${cs.class4 == 11}">レンジャー</c:when>
									<c:when test="${cs.class4 == 12}">セージ</c:when>
									<c:when test="${cs.class4 == 13}">エンハンサー</c:when>
									<c:when test="${cs.class4 == 14}">バード</c:when>
									<c:when test="${cs.class4 == 15}">ライダー</c:when>
								</c:choose>
							</td>
							<td>${f:h(cs.c4level)}</td>
						</tr>
						</c:if>
						<c:if test="${!empty cs.c5level}">
						<tr>
							<td>
								<c:choose>
									<c:when test="${cs.class5 == 1}">ファイター</c:when>
									<c:when test="${cs.class5 == 2}">グラップラー</c:when>
									<c:when test="${cs.class5 == 3}">フェンサー</c:when>
									<c:when test="${cs.class5 == 4}">シューター</c:when>
									<c:when test="${cs.class5 == 5}">ソーサラー</c:when>
									<c:when test="${cs.class5 == 6}">コンジャラー</c:when>
									<c:when test="${cs.class5 == 7}">プリースト</c:when>
									<c:when test="${cs.class5 == 8}">フェアリーテイマー</c:when>
									<c:when test="${cs.class5 == 9}">マギテック</c:when>
									<c:when test="${cs.class5 == 10}">スカウト</c:when>
									<c:when test="${cs.class5 == 11}">レンジャー</c:when>
									<c:when test="${cs.class5 == 12}">セージ</c:when>
									<c:when test="${cs.class5 == 13}">エンハンサー</c:when>
									<c:when test="${cs.class5 == 14}">バード</c:when>
									<c:when test="${cs.class5 == 15}">ライダー</c:when>
								</c:choose>
							</td>
							<td>${f:h(cs.c5level)}</td>
						</tr>
						</c:if>
						<c:if test="${!empty cs.c6level}">
						<tr>
							<td>
								<c:choose>
									<c:when test="${cs.class6 == 1}">ファイター</c:when>
									<c:when test="${cs.class6 == 2}">グラップラー</c:when>
									<c:when test="${cs.class6 == 3}">フェンサー</c:when>
									<c:when test="${cs.class6 == 4}">シューター</c:when>
									<c:when test="${cs.class6 == 5}">ソーサラー</c:when>
									<c:when test="${cs.class6 == 6}">コンジャラー</c:when>
									<c:when test="${cs.class6 == 7}">プリースト</c:when>
									<c:when test="${cs.class6 == 8}">フェアリーテイマー</c:when>
									<c:when test="${cs.class6 == 9}">マギテック</c:when>
									<c:when test="${cs.class6 == 10}">スカウト</c:when>
									<c:when test="${cs.class6 == 11}">レンジャー</c:when>
									<c:when test="${cs.class6 == 12}">セージ</c:when>
									<c:when test="${cs.class6 == 13}">エンハンサー</c:when>
									<c:when test="${cs.class6 == 14}">バード</c:when>
									<c:when test="${cs.class6 == 15}">ライダー</c:when>
								</c:choose>
							</td>
							<td>${f:h(cs.c6level)}</td>
						</tr>
						</c:if>
					</table>
				</td>
			</table>
			<table border="3">
				<tr><td>武器名</td><td>命中</td><td>命中式</td><td>打撃</td><td>威力式</td></tr>
				<tr>
					<td>${f:h(cs.wp1name)}</td>
					<td>${f:h(cs.wp1hit)}</td>
					<td>2D6+${f:h(hit)}</td>
					<td>${f:h(damage)}</td>
					<td>K${f:h(cs.wp1power)}@${f:h(cs.wp1critical)}+${f:h(damage)}</td>
				</tr>
				<tr>
					<td>${f:h(cs.wp2name)}</td>
					<td>${f:h(cs.wp2hit)}</td>
					<td>2D6+${f:h(hit)}</td>
					<td>${f:h(damage)}</td>
					<td>K${f:h(cs.wp2power)}@${f:h(cs.wp2critical)}+${f:h(damage)}</td>
				</tr>
				<tr>
					<td>${f:h(cs.wp3name)}</td>
					<td>${f:h(cs.wp3hit)}</td>
					<td>2D6+${f:h(hit)}</td>
					<td>${f:h(damage)}</td>
					<td>K${f:h(cs.wp3power)}@${f:h(cs.wp3critical)}+${f:h(damage)}</td>
				</tr>
			</table>
					<BR>
					<s:link href="/create/edit/${cs.characterId}"><html:button property="toEdit" value="編集する"/></s:link>
					<BR><BR>
					<s:link href="/sheetList"><html:button property="toSheetList" value="キャラクターシート一覧へ" /></s:link>
					<BR><BR>
				</div>
			</div>
	</tiles:put>
</tiles:insert>