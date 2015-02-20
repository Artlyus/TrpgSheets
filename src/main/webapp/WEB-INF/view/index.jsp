<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
				<div class="section emphasis">
					<div class="heading">
						<p>Welcome.<BR>
					</div>
					<p>小説家になろうクラスタ向けキャラシートサイトです。</p>
					<p>現在はソード・ワールド2.0　ルールブックⅠ～Ⅲのみ対応です。</p>
					<s:link href="/create/index"><html:button property="toCreate" value="キャラクターシート作成" /></s:link><BR><BR>
				</div>
				<div class="section normal update">
					<div class="heading">
						<h2>更新内容</h2>
					</div>
					<dl class="clearFix">
						<dt>2015/2/18</dt>
						<dd>サイト新規構築</dd>
					</dl>
				</div>
				<div class="section normal">
					<div class="heading">
						<h2>キャラクター作成済みのプレイヤーへ</h2>
					</div>
					<p>作成済みシートの検索は<s:link href="sheetList/">キャラクターシート一覧</s:link>から。</p>
				</div>
			</div>
	</tiles:put>
</tiles:insert>