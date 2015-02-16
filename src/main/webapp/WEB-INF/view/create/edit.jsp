<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
<s:form>
<div class="section normal">
	<div class="heading">
		<h2>基本情報<h2>
	</div>
	<table>
		<tr><td>キャラクター名(必須)</td><td>：<html:text property="characterName" value="${f:h(cs.characterName)}"></html:text></td></tr>
		<tr><td>プレイヤー名</td><td>：<html:text property="playerName" value=""></html:text></td></tr>
		<tr><td>種族</td><td>：<html:text property="race" value=""></html:text></td></tr>
		<tr><td>性別</td><td>：<html:text property="sex" value=""></html:text></td></tr>
		<tr><td>年齢</td><td>：<html:text property="age" value=""></html:text></td></tr>
		<tr><td>生まれ</td><td>：<html:text property="history" value=""></html:text></td></tr>
		<tr><td>種族特徴</td><td>：<html:text property="raceSpecial" value=""></html:text></td></tr>
	</table>
</div>

<div class="section normal">
	<div class="heading">
		<h2>能力値</h2>
	</div>
	<table>
		<tr><td>器用度</td><td>：<html:text property="dex" value=""></html:text></td></tr>
		<tr><td>敏捷度</td><td>：<html:text property="agi" value=""></html:text></td></tr>
		<tr><td>筋力</td><td>：<html:text property="str" value=""></html:text></td></tr>
		<tr><td>生命力</td><td>：<html:text property="vit" value=""></html:text></td></tr>
		<tr><td>知力</td><td>：<html:text property="itl" value=""></html:text></td></tr>
		<tr><td>精神力</td><td>：<html:text property="men" value=""></html:text></td></tr>
		<tr><td>生命抵抗力</td><td>：<html:text property="lifeRegist" value=""></html:text></td></tr>
		<tr><td>精神抵抗力</td><td>：<html:text property="mentalRegist" value=""></html:text></td></tr>
		<tr><td>HP</td><td>：<html:text property="hp" value=""></html:text></td></tr>
		<tr><td>MP</td><td>：<html:text property="mp" value=""></html:text></td></tr>
		<tr><td>冒険者レベル</td><td>：<html:text property="advLevel" value=""></html:text></td></tr>
	</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>技能</h2>
	</div>
	<table border="1">
		<tr align="center">
			<td>技能</td>
			<td width="50">レベル</td>
		</tr>
		<tr>
			<td><html:select property="class1" value="技能">
				<html:option value=""></html:option>
				<html:option value="1">ファイター(戦士)</html:option>
				<html:option value="2">グラップラー(拳闘士)</html:option>
				<html:option value="3">フェンサー(軽戦士)</html:option>
				<html:option value="4">シューター(射手)</html:option>
				<html:option value="5">ソーサラー(魔術師)</html:option>
				<html:option value="6">コンジャラー(操霊術士)</html:option>
				<html:option value="7">プリースト(神官)</html:option>
				<html:option value="8">フェアリーテイマー(妖精使い)</html:option>
				<html:option value="9">マギテック(魔動機師)</html:option>
				<html:option value="10">スカウト(斥候)</html:option>
				<html:option value="11">レンジャー(野伏)</html:option>
				<html:option value="12">セージ(学者)</html:option>
				<html:option value="13">エンハンサー(練体士)</html:option>
				<html:option value="14">バード(吟遊詩人)</html:option>
				<html:option value="15">ライダー(騎手)</html:option>
				</html:select>
			</td>
			<td><html:text property="c1level" value="" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class2" value="技能">
				<html:option value=""></html:option>
				<html:option value="1">ファイター(戦士)</html:option>
				<html:option value="2">グラップラー(拳闘士)</html:option>
				<html:option value="3">フェンサー(軽戦士)</html:option>
				<html:option value="4">シューター(射手)</html:option>
				<html:option value="5">ソーサラー(魔術師)</html:option>
				<html:option value="6">コンジャラー(操霊術士)</html:option>
				<html:option value="7">プリースト(神官)</html:option>
				<html:option value="8">フェアリーテイマー(妖精使い)</html:option>
				<html:option value="9">マギテック(魔動機師)</html:option>
				<html:option value="10">スカウト(斥候)</html:option>
				<html:option value="11">レンジャー(野伏)</html:option>
				<html:option value="12">セージ(学者)</html:option>
				<html:option value="13">エンハンサー(練体士)</html:option>
				<html:option value="14">バード(吟遊詩人)</html:option>
				<html:option value="15">ライダー(騎手)</html:option>
				</html:select>
			</td>
			<td><html:text property="c2level" value="" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class3" value="技能">
				<html:option value=""></html:option>
				<html:option value="1">ファイター(戦士)</html:option>
				<html:option value="2">グラップラー(拳闘士)</html:option>
				<html:option value="3">フェンサー(軽戦士)</html:option>
				<html:option value="4">シューター(射手)</html:option>
				<html:option value="5">ソーサラー(魔術師)</html:option>
				<html:option value="6">コンジャラー(操霊術士)</html:option>
				<html:option value="7">プリースト(神官)</html:option>
				<html:option value="8">フェアリーテイマー(妖精使い)</html:option>
				<html:option value="9">マギテック(魔動機師)</html:option>
				<html:option value="10">スカウト(斥候)</html:option>
				<html:option value="11">レンジャー(野伏)</html:option>
				<html:option value="12">セージ(学者)</html:option>
				<html:option value="13">エンハンサー(練体士)</html:option>
				<html:option value="14">バード(吟遊詩人)</html:option>
				<html:option value="15">ライダー(騎手)</html:option>
				</html:select>
			</td>
			<td><html:text property="c3level" value="" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class4" value="技能">
				<html:option value=""></html:option>
				<html:option value="1">ファイター(戦士)</html:option>
				<html:option value="2">グラップラー(拳闘士)</html:option>
				<html:option value="3">フェンサー(軽戦士)</html:option>
				<html:option value="4">シューター(射手)</html:option>
				<html:option value="5">ソーサラー(魔術師)</html:option>
				<html:option value="6">コンジャラー(操霊術士)</html:option>
				<html:option value="7">プリースト(神官)</html:option>
				<html:option value="8">フェアリーテイマー(妖精使い)</html:option>
				<html:option value="9">マギテック(魔動機師)</html:option>
				<html:option value="10">スカウト(斥候)</html:option>
				<html:option value="11">レンジャー(野伏)</html:option>
				<html:option value="12">セージ(学者)</html:option>
				<html:option value="13">エンハンサー(練体士)</html:option>
				<html:option value="14">バード(吟遊詩人)</html:option>
				<html:option value="15">ライダー(騎手)</html:option>
				</html:select>
			</td>
			<td><html:text property="c4level" value="" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class5" value="技能">
				<html:option value=""></html:option>
				<html:option value="1">ファイター(戦士)</html:option>
				<html:option value="2">グラップラー(拳闘士)</html:option>
				<html:option value="3">フェンサー(軽戦士)</html:option>
				<html:option value="4">シューター(射手)</html:option>
				<html:option value="5">ソーサラー(魔術師)</html:option>
				<html:option value="6">コンジャラー(操霊術士)</html:option>
				<html:option value="7">プリースト(神官)</html:option>
				<html:option value="8">フェアリーテイマー(妖精使い)</html:option>
				<html:option value="9">マギテック(魔動機師)</html:option>
				<html:option value="10">スカウト(斥候)</html:option>
				<html:option value="11">レンジャー(野伏)</html:option>
				<html:option value="12">セージ(学者)</html:option>
				<html:option value="13">エンハンサー(練体士)</html:option>
				<html:option value="14">バード(吟遊詩人)</html:option>
				<html:option value="15">ライダー(騎手)</html:option>
				</html:select>
			</td>
			<td><html:text property="c5level" value="" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class6" value="技能">
				<html:option value=""></html:option>
				<html:option value="1">ファイター(戦士)</html:option>
				<html:option value="2">グラップラー(拳闘士)</html:option>
				<html:option value="3">フェンサー(軽戦士)</html:option>
				<html:option value="4">シューター(射手)</html:option>
				<html:option value="5">ソーサラー(魔術師)</html:option>
				<html:option value="6">コンジャラー(操霊術士)</html:option>
				<html:option value="7">プリースト(神官)</html:option>
				<html:option value="8">フェアリーテイマー(妖精使い)</html:option>
				<html:option value="9">マギテック(魔動機師)</html:option>
				<html:option value="10">スカウト(斥候)</html:option>
				<html:option value="11">レンジャー(野伏)</html:option>
				<html:option value="12">セージ(学者)</html:option>
				<html:option value="13">エンハンサー(練体士)</html:option>
				<html:option value="14">バード(吟遊詩人)</html:option>
				<html:option value="15">ライダー(騎手)</html:option>
				</html:select>
			</td>
			<td><html:text property="c6level" value="" size="2"></html:text></td>
		</tr>
	</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>戦闘特技</h2>
	</div>
	<p>チェックボックス</p>
</div>
<div class="section normal">
	<div class="heading">
		<h2>練技/呪歌</h2>
	</div>
</div>
<div class="section normal">
	<div class="heading">
		<h2>言語</h2>
	</div>
</div>
<div class="section normal">
	<div class="heading">
		<h2>武器</h2>
	</div>
<table border="1">

	<tr align="center">
		<td rowspan="2">名称</td>
		<td rowspan="2">用法</td>
		<td>必筋</td>
		<td>命中修正</td>
		<td>命中力</td>
		<td rowspan="2">備考</td>
	</tr>
	<tr align="center">
		<td>威力</td>
		<td>C値</td>
		<td>追加値</td>
	</tr>
<c:forEach begin="0" end="5" var="i">
	<tr>
		<td rowspan="2"><html:text property="weaponList[i].weaponName" value=""></html:text></td>
		<td rowspan="2">
			<html:select property="weaponList[i].hands" value="片両">
			<html:option value=""></html:option>
			<html:option value="1">１Ｈ</html:option>
			<html:option value="2">２Ｈ</html:option>
			</html:select>
		</td>
		<td><html:text property="weaponList[i].needStr" value="" size="2"></html:text></td>
		<td><html:text property="weaponList[i].hitCorrect" value="" size="2"></html:text></td>
		<td><html:text property="weaponList[i].hit" value="" size="2"></html:text></td>
		<td rowspan="2"><html:textarea property="weaponList[i].memo" value=""></html:textarea></td>
	</tr>
	<tr>
		<td><html:text property="weaponList[i].power" value="" size="3"></html:text></td>
		<td><html:text property="weaponList[i].critical" value="" size="2"></html:text></td>
		<td><html:text property="weaponList[i].chaseDamage" value="" size="2"></html:text></td>
	</tr>
</c:forEach>
</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>防具</h2>
	</div>
鎧：<BR>
盾：<BR>
</div>
<div class="section normal">
	<div class="heading">
		<h2>装飾品</h2>
	</div>
<table border="1">
	<tr>
		<td>部位</td>
		<td>詳細</td>
	</tr>
	<tr>
		<td>頭</td>
		<td></td>
	</tr>
	<tr>
		<td>耳</td>
		<td></td>
	</tr>
	<tr>
		<td>顔</td>
		<td></td>
	</tr>
	<tr>
		<td>首</td>
		<td></td>
	</tr>
	<tr>
		<td>背中</td>
		<td></td>
	</tr>
	<tr>
		<td>右手</td>
		<td></td>
	</tr>
	<tr>
		<td>左手</td>
		<td></td>
	</tr>
	<tr>
		<td>腰</td>
		<td></td>
	</tr>
	<tr>
		<td>足</td>
		<td></td>
	</tr>
	<tr>
		<td>その他</td>
		<td></td>
	</tr>
</table>
<BR>
その他のアイテム<BR>
<html:textarea property="otherItems" value="" />
</div>
<div class="section normal">
	<div class="heading">
		<h2>その他</h2>
	</div>
<B>名誉点</B><BR>
所持/合計：<html:text property="currentHonor" value="" size="5"></html:text>/<html:text property="maxHonor" value="" size="5"></html:text><BR>
<BR>
所持金：<html:text property="money" value="" size="7"></html:text><BR>
<BR>
経験点：<html:text property="exp" value="" size="7"></html:text>
</div>
<s:submit property="doCreate" value="Edit" />
</s:form>
</div>
</tiles:put>
</tiles:insert>