<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
				<div class="section emphasis">
					<div class="heading">
						<p>能力値ダイスロールの結果を確認してください。</p>
					</div>
					<s:form>
					<html:hidden property="race" value="${f:h(race) }"/>
					<html:hidden property="history" value="${f:h(history) }"/>
					<html:hidden property="sta" value="${f:h(sta)}"/>
					<html:hidden property="stb" value="${f:h(stb)}"/>
					<html:hidden property="stc" value="${f:h(stc)}"/>
					<html:hidden property="std" value="${f:h(std)}"/>
					<html:hidden property="ste" value="${f:h(ste)}"/>
					<html:hidden property="stf" value="${f:h(stf)}"/>
						<table border="1">
							<tr align="center">
								<td colspan="2">個体値</td>
								<td colspan="2">種族値</td>
								<td colspan="2">能力値</td>
								<td>ボーナス</td>
							</tr>
							<tr align="center">
								<td>Ａ：</td>
								<td>${f:h(sta)}</td>
								<td rowspan="2">技：</td>
								<td rowspan="2">${f:h(rhm.rtech)}</td>
								<td>器用：</td>
								<td>${f:h(dex)}</td>
								<td>${f:h(bonusDex)}</td>
							</tr>
							<tr align="center">
								<td>Ｂ：</td>
								<td>${f:h(stb)}</td>
								<td>敏捷：</td>
								<td>${f:h(agi)}</td>
								<td>${f:h(bonusAgi)}</td>
							</tr>
							<tr align="center">
								<td>Ｃ：</td>
								<td>${f:h(stc)}</td>
								<td rowspan="2">体：</td>
								<td rowspan="2">${f:h(rhm.rvit)}</td>
								<td>筋力：</td>
								<td>${f:h(str)}</td>
								<td>${f:h(bonusStr)}</td>
							</tr>
							<tr align="center">
								<td>Ｄ：</td>
								<td>${f:h(std)}</td>
								<td>生命：</td>
								<td>${f:h(vit)}</td>
								<td>${f:h(bonusVit)}</td>
							</tr>
							<tr align="center">
								<td>Ｅ：</td>
								<td>${f:h(ste)}</td>
								<td rowspan="2">技：</td>
								<td rowspan="2">${f:h(rhm.rtech)}</td>
								<td>知力：</td>
								<td>${f:h(itl)}</td>
								<td>${f:h(bonusItl)}</td>
							</tr>
							<tr align="center">
								<td>Ｆ：</td>
								<td>${f:h(stf)}</td>
								<td>精神：</td>
								<td>${f:h(men)}</td>
								<td>${f:h(bonusMen)}</td>
							</tr>
						</table>
						<BR>
						<s:submit property="registSheet" value="決定"></s:submit><br>
						<br>
						<s:submit property="rollDice" value="振り直し" />
					</s:form>
					<BR><BR>
					<s:link href="/index">TOPへ</s:link>
					<BR><BR>
				</div>
			</div>
	</tiles:put>
</tiles:insert>