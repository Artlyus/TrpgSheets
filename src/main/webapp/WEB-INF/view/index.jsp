<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
				<div class="section emphasis">
					<div class="heading">
						<p>Welcome.<BR>
					</div>
					<p>This site will be used by users as wanna be writer.</p>
					<p>If you are that so, push below button and create your character.</p>
					<s:form>
						<s:submit property="login" value="Create Character" />
					</s:form>
				</div>
				<div class="section normal update">
					<div class="heading">
						<h2>更新内容</h2>
					</div>
					<dl class="clearFix">
						<dt>2014/10/25</dt>
						<dd>サイト新規構築</dd>
					</dl>
				</div>
				<div class="section normal">
					<div class="heading">
						<h2>キャラクター作成済みのプレイヤーへ</h2>
					</div>
					<p>If you already have any characters, please check character list.</p>
					<p><s:link href="sheetList/">Character List</s:link>.</p>
				</div>
			</div>
		</tiles:put>
</tiles:insert>