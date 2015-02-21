<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
				<div class="section emphasis">
					<div class="heading">
						<p>生まれを選択して下さい。</p>
					</div>
					<s:form>
						<html:hidden property="race" value="${f:h(race)}"/>
						<html:select property="history">
							<html:options collection="rhmList" property="history" labelProperty="historyName"/>
						</html:select>
						<BR><BR>
						<s:submit property="rollDice" value="決定"></s:submit> / <s:link href="showSelectRace"><html:button property="toRace" value="種族選択に戻る" /></s:link>
					</s:form>
					<BR><BR>
				</div>
			</div>
	</tiles:put>
</tiles:insert>