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
						<html:select property="race">
							<html:option value="1">人間</html:option>
							<html:option value="2">エルフ</html:option>
							<html:option value="3">ドワーフ</html:option>
							<html:option value="4">タビット</html:option>
							<html:option value="5">ルーンフォーク</html:option>
							<html:option value="6">ナイトメア</html:option>
							<html:option value="7">シャドウ</html:option>
							<html:option value="8">リルドラケン</html:option>
							<html:option value="9">グラスランナー</html:option>
						</html:select>
						<BR><BR>
						<s:submit property="showSelectHistory" value="決定"></s:submit>
					</s:form>
					<BR><BR>
					<s:link href="/index">TOPへ</s:link>
					<BR><BR>
				</div>
			</div>
	</tiles:put>
</tiles:insert>