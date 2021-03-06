<tiles:insert template="/WEB-INF/view/common/layout.jsp" flush="true">
	<tiles:put name="title" value="TRPG Character Sheets" />
	<tiles:put name="content" type="string">
		<div id="content">
			<div id="main">
<s:form>
<div class="section normal">
	<div class="heading">
		<h2>基本情報</h2>
	</div>
	<html:hidden property="characterId"/>
	<table>
		<tr><td>キャラクター名(必須)</td><td>：<html:text property="characterName" value="${f:h(cs.characterName)}"></html:text></td></tr>
		<tr><td>プレイヤー名</td><td>：<html:text property="playerName" value="${f:h(cs.playerName)}"></html:text></td></tr>
		<tr><td>種族</td><td>：<html:text property="race" value="${f:h(cs.race)}"></html:text></td></tr>
		<tr><td>性別</td><td>：<html:text property="sex" value="${f:h(cs.sex)}"></html:text></td></tr>
		<tr><td>年齢</td><td>：<html:text property="age" value="${f:h(cs.age)}"></html:text></td></tr>
		<tr><td>生まれ</td><td>：<html:text property="history" value="${f:h(cs.history)}"></html:text></td></tr>
		<tr><td>種族特徴</td><td>：<html:text property="raceSpecial" value="${f:h(cs.raceSpecial)}"></html:text></td></tr>
		<tr valign="top"><td>経歴</td><td>：<html:textarea rows="4" cols="50" property="note" value="${f:h(cs.note)}"/></td></tr>
	</table>
</div>

<div class="section normal">
	<div class="heading">
		<h2>能力値</h2>
	</div>
	<table border="1">
		<tr align="center"><td>能力値</td><td>個体値</td><td>種族値</td><td>成長</td><td>合計</td><td>ボーナス</td></tr>
		<tr align="center">
			<td>器用度</td>
			<td>A：<html:text property="sta" value="${f:h(cs.sta)}" size="2" /></td>
			<td rowspan="2">技：<html:text property="rtech" value="${f:h(cs.rtech)}" size="2" /></td>
			<td><html:text property="upDex" value="${f:h(cs.upDex)}" size="2" /></td>
			<td><html:text property="dex" value="${f:h(cs.dex)}" size="2" /></td>
			<td><html:text property="bonusDex" value="${f:h(cs.bonusDex)}" size="2" /></td>
		</tr>
		<tr align="center">
			<td>敏捷度</td>
			<td>B：<html:text property="stb" value="${f:h(cs.stb)}" size="2" /></td>
			<td><html:text property="upAgi" value="${f:h(cs.upAgi)}" size="2" /></td>
			<td><html:text property="agi" value="${f:h(cs.agi)}" size="2" /></td>
			<td><html:text property="bonusAgi" value="${f:h(cs.bonusAgi)}" size="2" /></td>
		</tr>
		<tr align="center">
			<td>筋　力</td>
			<td>C：<html:text property="stc" value="${f:h(cs.stc)}" size="2" /></td>
			<td rowspan="2">体：<html:text property="rvit" value="${f:h(cs.rvit)}" size="2" /></td>
			<td><html:text property="upStr" value="${f:h(cs.upStr)}" size="2" /></td>
			<td><html:text property="str" value="${f:h(cs.str)}" size="2" /></td>
			<td><html:text property="bonusStr" value="${f:h(cs.bonusStr)}" size="2" /></td>
		</tr>
		<tr align="center">
			<td>生命力</td>
			<td>D：<html:text property="std" value="${f:h(cs.std)}" size="2" /></td>
			<td><html:text property="upVit" value="${f:h(cs.upVit)}" size="2" /></td>
			<td><html:text property="vit" value="${f:h(cs.vit)}" size="2" /></td>
			<td><html:text property="bonusVit" value="${f:h(cs.bonusVit)}" size="2" /></td>
		</tr>
		<tr align="center">
			<td>知　力</td>
			<td>E：<html:text property="ste" value="${f:h(cs.ste)}" size="2" /></td>
			<td rowspan="2">心：<html:text property="rmen" value="${f:h(cs.rmen)}" size="2" /></td>
			<td><html:text property="upItl" value="${f:h(cs.upItl)}" size="2" /></td>
			<td><html:text property="itl" value="${f:h(cs.itl)}" size="2" /></td>
			<td><html:text property="bonusItl" value="${f:h(cs.bonusItl)}" size="2" /></td>
		</tr>
		<tr align="center">
			<td>精神力</td>
			<td>F：<html:text property="stf" value="${f:h(cs.stf)}" size="2" /></td>
			<td><html:text property="upMen" value="${f:h(cs.upMen)}" size="2" /></td>
			<td><html:text property="men" value="${f:h(cs.men)}" size="2" /></td>
			<td><html:text property="bonusMen" value="${f:h(cs.bonusMen)}" size="2" /></td>
		</tr>
	</table>
	<BR>
	<table>
		<tr><td>冒険者レベル</td><td>：<html:text property="advLevel" value="${f:h(cs.advLevel)}" size="2"></html:text></td></tr>
		<tr><td>生命抵抗力</td><td>：<html:text property="lifeRegist" value="${f:h(cs.lifeRegist)}" size="2"></html:text></td><td>※生命力ボーナス＋冒険者レベル</td></tr>
		<tr><td>精神抵抗力</td><td>：<html:text property="mentalRegist" value="${f:h(cs.mentalRegist)}" size="2"></html:text></td><td>※精神力ボーナス＋冒険者レベル</td></tr>
		<tr><td>HP</td><td>：<html:text property="hp" value="${f:h(cs.hp)}" size="2"></html:text></td><td>※生命力＋冒険者レベルｘ３</td></tr>
		<tr><td>MP</td><td>：<html:text property="mp" value="${f:h(cs.mp)}" size="2"></html:text></td><td>※精神力＋魔法使い系技能レベル合計ｘ３</td></tr>
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
			<td><html:select property="class1" value="${f:h(cs.class1)}">
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
			<td><html:text property="c1level" value="${f:h(cs.c1level)}" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class2" value="${f:h(cs.class2)}">
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
			<td><html:text property="c2level" value="${f:h(cs.c2level)}" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class3" value="${f:h(cs.class3)}">
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
			<td><html:text property="c3level" value="${f:h(cs.c3level)}" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class4" value="${f:h(cs.class4)}">
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
			<td><html:text property="c4level" value="${f:h(cs.c4level)}" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class5" value="${f:h(cs.class5)}">
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
			<td><html:text property="c5level" value="${f:h(cs.c5level)}" size="2"></html:text></td>
		</tr>
		<tr>
			<td><html:select property="class6" value="${f:h(cs.class6)}">
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
			<td><html:text property="c6level" value="${f:h(cs.c6level)}" size="2"></html:text></td>
		</tr>
	</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>戦闘特技</h2>
	</div>
	<p>選択取得</p>
	<table border="1">
		<tr align="center">
			<td>回避行動</td><td><html:checkbox property="Skill01"/></td>
			<td>頑強</td><td><html:checkbox property="Skill02"/></td>
			<td>精密射撃</td><td><html:checkbox property="Skill03"/></td>
		</tr>
		<tr align="center">
			<td>双撃</td><td><html:checkbox property="Skill04"/></td>
			<td>狙撃</td><td><html:checkbox property="Skill05"/></td>
			<td>鷹の目</td><td><html:checkbox property="Skill06"/></td>
		</tr>
		<tr align="center">
			<td>鉄壁</td><td><html:checkbox property="Skill07"/></td>
			<td>投げ強化</td><td><html:checkbox property="Skill08"/></td>
			<td>二刀流</td><td><html:checkbox property="Skill09"/></td>
		</tr>
		<tr align="center">
			<td>武器習熟</td><td><html:checkbox property="Skill10"/></td>
			<td>武器習熟Ⅱ</td><td><html:checkbox property="Skill11"/></td>
			<td>踏みつけ</td><td><html:checkbox property="Skill12"/></td>
		</tr>
		<tr align="center">
			<td>ブロッキング</td><td><html:checkbox property="Skill13"/></td>
			<td>防具習熟</td><td><html:checkbox property="Skill14"/></td>
			<td>防具習熟Ⅱ</td><td><html:checkbox property="Skill15"/></td>
		</tr>
		<tr align="center">
			<td>魔法制御</td><td><html:checkbox property="Skill16"/></td>
			<td>魔法誘導</td><td><html:checkbox property="Skill17"/></td>
			<td>両手利き</td><td><html:checkbox property="Skill18"/></td>
		</tr>
		<tr align="center">
			<td>MP軽減</td><td><html:checkbox property="Skill19"/></td>
			<td>かばう</td><td><html:checkbox property="Skill20"/></td>
			<td>牽制攻撃</td><td><html:checkbox property="Skill21"/></td>
		</tr>
		<tr align="center">
			<td>牽制攻撃Ⅱ</td><td><html:checkbox property="Skill22"/></td>
			<td>全力攻撃</td><td><html:checkbox property="Skill23"/></td>
			<td>挑発攻撃</td><td><html:checkbox property="Skill24"/></td>
		</tr>
		<tr align="center">
			<td>必殺攻撃</td><td><html:checkbox property="Skill25"/></td>
			<td>魔法拡大/確実化</td><td><html:checkbox property="Skill26"/></td>
			<td>魔法拡大/数</td><td><html:checkbox property="Skill27"/></td>
		</tr>
		<tr align="center">
			<td>魔法拡大/距離</td><td><html:checkbox property="Skill28"/></td>
			<td>魔法拡大/時間</td><td><html:checkbox property="Skill29"/></td>
			<td>魔法拡大/範囲</td><td><html:checkbox property="Skill30"/></td>
		</tr>
		<tr align="center">
			<td>魔法収束</td><td><html:checkbox property="Skill31"/></td>
			<td>魔力撃</td><td><html:checkbox property="Skill32"/></td>
			<td>足さばき</td><td><html:checkbox property="Skill33"/></td>
		</tr>
		<tr align="center">
			<td>頑強Ⅱ</td><td><html:checkbox property="Skill34"/></td>
			<td>射手の体術</td><td><html:checkbox property="Skill35"/></td>
			<td>鋭い目</td><td><html:checkbox property="Skill36"/></td>
		</tr>
		<tr align="center">
			<td>ハーモニー</td><td><html:checkbox property="Skill37"/></td>
			<td>魔力強化</td><td><html:checkbox property="Skill38"/></td>
			<td>命中強化</td><td><html:checkbox property="Skill39"/></td>
		</tr>
		<tr align="center">
			<td>練体の極意</td><td><html:checkbox property="Skill40"/></td>
			<td>ワードブレイク</td><td><html:checkbox property="Skill41"/></td>
			<td>牽制攻撃Ⅲ</td><td><html:checkbox property="Skill42"/></td>
		</tr>
		<tr align="center">
			<td>全力攻撃Ⅱ</td><td><html:checkbox property="Skill43"/></td>
			<td>テイルスイング</td><td><html:checkbox property="Skill44"/></td>
			<td>マルチアクション</td><td><html:checkbox property="Skill45"/></td>
		</tr>
		<tr align="center">
			<td>ガーディアン</td><td><html:checkbox property="Skill46"/></td>
			<td>キャパシティ</td><td><html:checkbox property="Skill47"/></td>
			<td>武器の達人</td><td><html:checkbox property="Skill48"/></td>
		</tr>
		<tr align="center">
			<td>防具の達人</td><td><html:checkbox property="Skill49"/></td>
			<td>魔力撃強化</td><td><html:checkbox property="Skill50"/></td>
			<td>命中強化Ⅱ</td><td><html:checkbox property="Skill51"/></td>
		</tr>
		<tr align="center">
			<td>インファイト</td><td><html:checkbox property="Skill52"/></td>
			<td>影矢</td><td><html:checkbox property="Skill53"/></td>
			<td>牙折り</td><td><html:checkbox property="Skill54"/></td>
		</tr>
		<tr align="center">
			<td>飛び蹴り</td><td><html:checkbox property="Skill55"/></td>
			<td>薙ぎ払い</td><td><html:checkbox property="Skill56"/></td>
		</tr>
	</table>
	<br>
	<p>自動取得</p>
		<table border="1">
			<tr align="center">
				<td colspan="12">グラップラー</td>
			</tr>
			<tr align="center">
				<td>Lv.1</td><td colspan="4">追加攻撃</td><td><html:checkbox property="Skill57"/></td>
				<td>Lv.1</td><td colspan="4">投げ攻撃</td><td><html:checkbox property="Skill58"/></td>
			</tr>
			<tr align="center">
				<td>Lv.7</td><td colspan="4">カウンター</td><td><html:checkbox property="Skill59"/></td>
				<td>Lv.13</td><td colspan="4">バトルマスター</td><td><html:checkbox property="Skill60"/></td>
			</tr>
			<tr align="center">
				<td colspan="12">ファイター</td>
			</tr>
			<tr align="center">
				<td>Lv.7</td><td colspan="4">タフネス</td><td><html:checkbox property="Skill61"/></td>
				<td>Lv.13</td><td colspan="4">バトルマスター</td><td><html:checkbox property="Skill62"/></td>
			</tr>
			<tr align="center">
				<td colspan="12">スカウト</td>
			</tr>
			<tr align="center">
				<td>Lv.5</td><td colspan="4">トレジャーハント</td><td><html:checkbox property="Skill63"/></td>
				<td>Lv.7</td><td colspan="4">ファストアクション</td><td><html:checkbox property="Skill64"/></td>
			</tr>
			<tr align="center">
				<td>Lv.9</td><td colspan="4">影走り</td><td><html:checkbox property="Skill65"/></td>
				<td>Lv.12</td><td colspan="4">トレジャーマスター</td><td><html:checkbox property="Skill66"/></td>
			</tr>
			<tr align="center">
				<td>Lv.15</td><td colspan="4">匠の技</td><td><html:checkbox property="Skill67"/></td>
			</tr>
			<tr align="center">
				<td colspan="12">レンジャー</td>
			</tr>
			<tr align="center">
				<td>Lv.5</td><td colspan="4">治癒適正</td><td><html:checkbox property="Skill68"/></td>
				<td>Lv.7</td><td colspan="4">不屈</td><td><html:checkbox property="Skill69"/></td>
			</tr>
			<tr align="center">
				<td>Lv.9</td><td colspan="4">ポーションマスター</td><td><html:checkbox property="Skill70"/></td>
				<td>Lv.12</td><td colspan="4">韋駄天</td><td><html:checkbox property="Skill71"/></td>
			</tr>
			<tr align="center">
				<td>Lv.15</td><td colspan="4">縮地</td><td><html:checkbox property="Skill72"/></td>
			</tr>
			<tr align="center">
				<td colspan="12">セージ</td>
			</tr>
			<tr align="center">
				<td>Lv.5</td><td colspan="4">鋭い目</td><td><html:checkbox property="Skill73"/></td>
				<td>Lv.7</td><td colspan="4">弱点看破</td><td><html:checkbox property="Skill74"/></td>
			</tr>
			<tr align="center">
				<td>Lv.9</td><td colspan="4">マナセーブ</td><td><html:checkbox property="Skill75"/></td>
				<td>Lv.12</td><td colspan="4">マナ耐性</td><td><html:checkbox property="Skill76"/></td>
			</tr>
			<tr align="center">
				<td>Lv.15</td><td colspan="4">賢人の知恵</td><td><html:checkbox property="Skill77"/></td>
			</tr>
		</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>練技/呪歌/騎芸</h2>
	</div>
	<h3><a href="javascript:void(0)" id="category_Enhance" onclick="show('Enhance');">練技</a></h3>
	<div id="layer_Enhance" style="display: none;position:relative;margin-left:15pt" class="close">
	<table border="1">
		<tr align="center">
			<td>練技名</td>
			<td>習得</td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル１から習得可能</td>
		</tr>
		<tr>
			<td>アンチボディ</td>
			<td><html:checkbox property="Enhance01"/></td>
		</tr>
		<tr>
			<td>オウルビジョン</td>
			<td><html:checkbox property="Enhance02"/></td>
		</tr>
		<tr>
			<td>ガゼルフット</td>
			<td><html:checkbox property="Enhance03"/></td>
		</tr>
		<tr>
			<td>キャッツアイ</td>
			<td><html:checkbox property="Enhance04"/></td>
		</tr>
		<tr>
			<td>スケイルレギンス</td>
			<td><html:checkbox property="Enhance05"/></td>
		</tr>
		<tr>
			<td>ストロングブラッド</td>
			<td><html:checkbox property="Enhance06"/></td>
		</tr>
		<tr>
			<td>チックチック</td>
			<td><html:checkbox property="Enhance07"/></td>
		</tr>
		<tr>
			<td>ドラゴンテイル</td>
			<td><html:checkbox property="Enhance08"/></td>
		</tr>
		<tr>
			<td>ビートルスキン</td>
			<td><html:checkbox property="Enhance09"/></td>
		</tr>
		<tr>
			<td>マッスルベアー</td>
			<td><html:checkbox property="Enhance10"/></td>
		</tr>
		<tr>
			<td>メディテーション</td>
			<td><html:checkbox property="Enhance11"/></td>
		</tr>
		<tr>
			<td>ラビットイヤー</td>
			<td><html:checkbox property="Enhance12"/></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル５から習得可能</td>
		</tr>
		<tr>
			<td>ケンタウロスレッグ</td>
			<td><html:checkbox property="Enhance13"/></td>
		</tr>
		<tr>
			<td>シェイプアニマル</td>
			<td><html:checkbox property="Enhance14"/></td>
		</tr>
		<tr>
			<td>ジャイアントアーム</td>
			<td><html:checkbox property="Enhance15"/></td>
		</tr>
		<tr>
			<td>スフィンクスノレッジ</td>
			<td><html:checkbox property="Enhance16"/></td>
		</tr>
		<tr>
			<td>デーモンフィンガー</td>
			<td><html:checkbox property="Enhance17"/></td>
		</tr>
		<tr>
			<td>ファイアブレス</td>
			<td><html:checkbox property="Enhance18"/></td>
		</tr>
		<tr>
			<td>リカバリィ</td>
			<td><html:checkbox property="Enhance19"/></td>
		</tr>
		<tr>
			<td>ワイドウィング</td>
			<td><html:checkbox property="Enhance20"/></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル10から習得可能</td>
		</tr>
		<tr>
			<td>カメレオンカムフラージュ</td>
			<td><html:checkbox property="Enhance21"/></td>
		</tr>
		<tr>
			<td>クラーケンスタビリティ</td>
			<td><html:checkbox property="Enhance22"/></td>
		</tr>
		<tr>
			<td>ジィプロフェシー</td>
			<td><html:checkbox property="Enhance23"/></td>
		</tr>
		<tr>
			<td>ストライダーウォーク</td>
			<td><html:checkbox property="Enhance24"/></td>
		</tr>
		<tr>
			<td>スパイダーウェブ</td>
			<td><html:checkbox property="Enhance25"/></td>
		</tr>
		<tr>
			<td>タイタンフット</td>
			<td><html:checkbox property="Enhance26"/></td>
		</tr>
		<tr>
			<td>トロールバイタル</td>
			<td><html:checkbox property="Enhance27"/></td>
		</tr>
		<tr>
			<td>バルーンシードショット</td>
			<td><html:checkbox property="Enhance28"/></td>
		</tr>
		<tr>
			<td>フェンリルバイト</td>
			<td><html:checkbox property="Enhance29"/></td>
		</tr>
		<tr>
			<td>ヘルシーボディ</td>
			<td><html:checkbox property="Enhance30"/></td>
		</tr>
	</table>
	</div>
	<BR>
	<h3><a href="javascript:void(0)" id="category_Song" onclick="show('Song');">呪歌</a></h3>
	<div id="layer_Song" style="display: none;position:relative;margin-left:15pt" class="close">
		<table border="1">
		<tr align="center">
			<td>呪歌名</td>
			<td>習得</td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル１から習得可能</td>
		</tr>
		<tr>
			<td>アーリーバード</td>
			<td><html:checkbox property="Song01"/></td>
		</tr>
		<tr>
			<td>アンビエント</td>
			<td><html:checkbox property="Song02"/></td>
		</tr>
		<tr>
			<td>サモン・スモールアニマル</td>
			<td><html:checkbox property="Song03"/></td>
		</tr>
		<tr>
			<td>サモン・フィッシュ</td>
			<td><html:checkbox property="Song04"/></td>
		</tr>
		<tr>
			<td>ノイズ</td>
			<td><html:checkbox property="Song05"/></td>
		</tr>
		<tr>
			<td>バラード</td>
			<td><html:checkbox property="Song06"/></td>
		</tr>
		<tr>
			<td>ヒーリング</td>
			<td><html:checkbox property="Song07"/></td>
		</tr>
		<tr>
			<td>ビビッド</td>
			<td><html:checkbox property="Song08"/></td>
		</tr>
		<tr>
			<td>モラル</td>
			<td><html:checkbox property="Song09"/></td>
		</tr>
		<tr>
			<td>ララバイ</td>
			<td><html:checkbox property="Song10"/></td>
		</tr>
		<tr>
			<td>レクイエム</td>
			<td><html:checkbox property="Song11"/></td>
		</tr>
		<tr>
			<td>レジスタンス</td>
			<td><html:checkbox property="Song12"/></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル５から習得可能</td>
		</tr>
		<tr>
			<td>アトリビュート</td>
			<td><html:checkbox property="Song13"/></td>
		</tr>
		<tr>
			<td>キュアリオスティ</td>
			<td><html:checkbox property="Song14"/></td>
		</tr>
		<tr>
			<td>チャーミング</td>
			<td><html:checkbox property="Song15"/></td>
		</tr>
		<tr>
			<td>チョーク</td>
			<td><html:checkbox property="Song16"/></td>
		</tr>
		<tr>
			<td>ヌーディ</td>
			<td><html:checkbox property="Song17"/></td>
		</tr>
		<tr>
			<td>ノスタルジィ</td>
			<td><html:checkbox property="Song18"/></td>
		</tr>
		<tr>
			<td>ビター</td>
			<td><html:checkbox property="Song19"/></td>
		</tr>
		<tr>
			<td>ラブソング</td>
			<td><html:checkbox property="Song20"/></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル10から習得可能</td>
		</tr>
		<tr>
			<td>アメージング</td>
			<td><html:checkbox property="Song21"/></td>
		</tr>
		<tr>
			<td>クラップ</td>
			<td><html:checkbox property="Song22"/></td>
		</tr>
		<tr>
			<td>コーラス</td>
			<td><html:checkbox property="Song23"/></td>
		</tr>
		<tr>
			<td>ソニックヴォイス</td>
			<td><html:checkbox property="Song24"/></td>
		</tr>
		<tr>
			<td>ダル</td>
			<td><html:checkbox property="Song25"/></td>
		</tr>
		<tr>
			<td>ダンス</td>
			<td><html:checkbox property="Song26"/></td>
		</tr>
		<tr>
			<td>フォール</td>
			<td><html:checkbox property="Song27"/></td>
		</tr>
		<tr>
			<td>マーチ</td>
			<td><html:checkbox property="Song28"/></td>
		</tr>
		<tr>
			<td>リダクション</td>
			<td><html:checkbox property="Song29"/></td>
		</tr>
		<tr>
			<td>レイジィ</td>
			<td><html:checkbox property="Song30"/></td>
		</tr>
	</table>
	</div>
		<BR>
	<h3><a href="javascript:void(0)" id="category_Ride" onclick="show('Ride');">騎芸</a></h3>
	<div id="layer_Ride" style="display: none;position:relative;margin-left:15pt" class="close">
		<table border="1">
		<tr align="center">
			<td>騎芸名</td>
			<td>習得</td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル１から習得可能</td>
		</tr>
		<tr>
			<td>大型制御</td>
			<td><html:checkbox property="Rider01"/></td>
		</tr>
		<tr>
			<td>騎獣回避</td>
			<td><html:checkbox property="Rider02"/></td>
		</tr>
		<tr>
			<td>騎獣の献身</td>
			<td><html:checkbox property="Rider03"/></td>
		</tr>
		<tr>
			<td>攻撃指令</td>
			<td><html:checkbox property="Rider04"/></td>
		</tr>
		<tr>
			<td>水中騎乗</td>
			<td><html:checkbox property="Rider05"/></td>
		</tr>
		<tr>
			<td>探索指令/td>
			<td><html:checkbox property="Rider06"/></td>
		</tr>
		<tr>
			<td>タンデム</td>
			<td><html:checkbox property="Rider07"/></td>
		</tr>
		<tr>
			<td>チャージ</td>
			<td><html:checkbox property="Rider08"/></td>
		</tr>
		<tr>
			<td>特殊攻撃指令</td>
			<td><html:checkbox property="Rider09"/></td>
		</tr>
		<tr>
			<td>振り下ろし</td>
			<td><html:checkbox property="Rider10"/></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル５から習得可能</td>
		</tr>
		<tr>
			<td>遠隔指示</td>
			<td><html:checkbox property="Rider11"/></td>
		</tr>
		<tr>
			<td>騎獣回避Ⅱ</td>
			<td><html:checkbox property="Rider12"/></td>
		</tr>
		<tr>
			<td>空中騎乗</td>
			<td><html:checkbox property="Rider13"/></td>
		</tr>
		<tr>
			<td>人馬一体</td>
			<td><html:checkbox property="Rider14"/></td>
		</tr>
		<tr>
			<td>トランプル</td>
			<td><html:checkbox property="Rider15"/></td>
		</tr>
		<tr>
			<td>振り下ろしⅡ</td>
			<td><html:checkbox property="Rider16"/></td>
		</tr>
		<tr>
			<td>呼び笛</td>
			<td><html:checkbox property="Rider17"/></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル10から習得可能</td>
		</tr>
		<tr>
			<td>威圧</td>
			<td><html:checkbox property="Rider18"/></td>
		</tr>
		<tr>
			<td>騎乗指揮</td>
			<td><html:checkbox property="Rider19"/></td>
		</tr>
		<tr>
			<td>スーパーチャージ</td>
			<td><html:checkbox property="Rider20"/></td>
		</tr>
		<tr>
			<td>縦横無尽</td>
			<td><html:checkbox property="Rider21"/></td>
		</tr>
		<tr>
			<td>八面六臂</td>
			<td><html:checkbox property="Rider22"/></td>
		</tr>
		<tr>
			<td>バランス</td>
			<td><html:checkbox property="Rider23"/></td>
		</tr>
		<tr>
			<td>振り下ろしⅢ</td>
			<td><html:checkbox property="Rider24"/></td>
		</tr>
	</table>
	</div>
</div>
<div class="section normal">
	<div class="heading">
		<h2>言語</h2>
	</div>
		<table border="1">
			<tr align="center">
				<td>言語名</td>
				<td>会話</td>
				<td>読文</td>
			</tr>
			<tr align="center">
				<td>交易共通語</td>
				<td><html:checkbox property="lang01Re"/></td>
				<td><html:checkbox property="lang01Wr"/></td>
			</tr>
			<tr align="center">
				<td>汎用蛮族語</td>
				<td><html:checkbox property="lang02Re"/></td>
				<td><html:checkbox property="lang02Wr"/></td>
			</tr>
			<tr align="center">
				<td>魔法文明語</td>
				<td><html:checkbox property="lang03Re"/></td>
				<td><html:checkbox property="lang03Wr"/></td>
			</tr>
			<tr align="center">
				<td>魔動機文明語</td>
				<td><html:checkbox property="lang04Re"/></td>
				<td><html:checkbox property="lang04Wr"/></td>
			</tr>
			<tr align="center">
				<td>エルフ語</td>
				<td><html:checkbox property="lang05Re"/></td>
				<td><html:checkbox property="lang05Wr"/></td>
			</tr>
			<tr align="center">
				<td>ドワーフ語</td>
				<td><html:checkbox property="lang06Re"/></td>
				<td><html:checkbox property="lang06Wr"/></td>
			</tr>
			<tr align="center">
				<td>シャドウ語</td>
				<td><html:checkbox property="lang07Re"/></td>
				<td><html:checkbox property="lang07Wr"/></td>
			</tr>
			<tr align="center">
				<td>神紀文明語</td>
				<td><html:checkbox property="lang08Re"/></td>
				<td><html:checkbox property="lang08Wr"/></td>
			</tr>
			<tr align="center">
				<td>妖精語</td>
				<td><html:checkbox property="lang09Re"/></td>
				<td><html:checkbox property="lang09Wr"/></td>
			</tr>
			<tr align="center">
				<td>巨人語</td>
				<td><html:checkbox property="lang10Re"/></td>
				<td><html:checkbox property="lang10Wr"/></td>
			</tr>
			<tr align="center">
				<td>ドラゴン語</td>
				<td><html:checkbox property="lang11Re"/></td>
				<td><html:checkbox property="lang11Wr"/></td>
			</tr>
			<tr align="center">
				<td>ドレイク語</td>
				<td><html:checkbox property="lang12Re"/></td>
				<td><html:checkbox property="lang12Wr"/></td>
			</tr>
			<tr align="center">
				<td>魔神語</td>
				<td><html:checkbox property="lang13Re"/></td>
				<td><html:checkbox property="lang13Wr"/></td>
			</tr>
			<tr align="center">
				<td>妖魔語</td>
				<td><html:checkbox property="lang14Re"/></td>
				<td><html:checkbox property="lang14Wr"/></td>
			</tr>
			<tr align="center">
				<td>その他</td>
				<td><html:checkbox property="lang15Re"/></td>
				<td><html:checkbox property="lang15Wr"/></td>
			</tr>
		</table>
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
	<tr align="center">
		<td rowspan="2"><html:text property="wp1name" value="${f:h(cs.wp1name)}"></html:text></td>
		<td rowspan="2">
			<html:select property="wp1hands" value="片両">
			<html:option value="${f:h(cs.wp1hands)}"></html:option>
			<html:option value="1">１Ｈ</html:option>
			<html:option value="2">２Ｈ</html:option>
			</html:select>
		</td>
		<td><html:text property="wp1needStr" value="${f:h(cs.wp1needStr)}" size="2"></html:text></td>
		<td><html:text property="wp1hitCorrect" value="${f:h(cs.wp1hitCorrect)}" size="2"></html:text></td>
		<td><html:text property="wp1hit" value="${f:h(cs.wp1hit)}" size="2"></html:text></td>
		<td rowspan="2"><html:textarea property="wp1memo" value="${f:h(cs.wp1memo)}"></html:textarea></td>
	</tr>
	<tr align="center">
		<td><html:text property="wp1power" value="${f:h(cs.wp1power)}" size="3"></html:text></td>
		<td><html:text property="wp1critical" value="${f:h(cs.wp1critical)}" size="2"></html:text></td>
		<td><html:text property="wp1chaseDamage" value="${f:h(cs.wp1chaseDamage)}" size="2"></html:text></td>
	</tr>
	<tr align="center">
		<td rowspan="2"><html:text property="wp2name" value="${f:h(cs.wp2name)}"></html:text></td>
		<td rowspan="2">
			<html:select property="wp2hands" value="片両">
			<html:option value="${f:h(cs.wp2hands)}"></html:option>
			<html:option value="1">１Ｈ</html:option>
			<html:option value="2">２Ｈ</html:option>
			</html:select>
		</td>
		<td><html:text property="wp2needStr" value="${f:h(cs.wp2needStr)}" size="2"></html:text></td>
		<td><html:text property="wp2hitCorrect" value="${f:h(cs.wp2hitCorrect)}" size="2"></html:text></td>
		<td><html:text property="wp2hit" value="${f:h(cs.wp2hit)}" size="2"></html:text></td>
		<td rowspan="2"><html:textarea property="wp2memo" value="${f:h(cs.wp2memo)}"></html:textarea></td>
	</tr>
	<tr align="center">
		<td><html:text property="wp2power" value="${f:h(cs.wp2power)}" size="3"></html:text></td>
		<td><html:text property="wp2critical" value="${f:h(cs.wp2critical)}" size="2"></html:text></td>
		<td><html:text property="wp2chaseDamage" value="${f:h(cs.wp2chaseDamage)}" size="2"></html:text></td>
	</tr>
	<tr align="center">
		<td rowspan="2"><html:text property="wp3name" value="${f:h(cs.wp3name)}"></html:text></td>
		<td rowspan="2">
			<html:select property="wp3hands" value="片両">
			<html:option value="${f:h(cs.wp3hands)}"></html:option>
			<html:option value="1">１Ｈ</html:option>
			<html:option value="2">２Ｈ</html:option>
			</html:select>
		</td>
		<td><html:text property="wp3needStr" value="${f:h(cs.wp3needStr)}" size="2"></html:text></td>
		<td><html:text property="wp3hitCorrect" value="${f:h(cs.wp3hitCorrect)}" size="2"></html:text></td>
		<td><html:text property="wp3hit" value="${f:h(cs.wp3hit)}" size="2"></html:text></td>
		<td rowspan="2"><html:textarea property="wp3memo" value="${f:h(cs.wp3memo)}"></html:textarea></td>
	</tr>
	<tr align="center">
		<td><html:text property="wp3power" value="${f:h(cs.wp3power)}" size="3"></html:text></td>
		<td><html:text property="wp3critical" value="${f:h(cs.wp3critical)}" size="2"></html:text></td>
		<td><html:text property="wp3chaseDamage" value="${f:h(cs.wp3chaseDamage)}" size="2"></html:text></td>
	</tr>
</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>防具</h2>
	</div>
	<table border="1">
		<tr align="center">
			<td></td>
			<td>名称</td>
			<td>必筋</td>
			<td>回避力</td>
			<td>防護点</td>
		</tr>
		<tr align="center">
			<td>鎧</td>
			<td><html:text property="armorName" value="${f:h(cs.armorName)}"/></td>
			<td><html:text property="armorStr" size="2" value="${f:h(cs.armorStr)}"/></td>
			<td><html:text property="armorAvoid" size="2" value="${f:h(cs.armorAvoid)}"/></td>
			<td><html:text property="armorDef" size="2" value="${f:h(cs.armorDef)}"/></td>
		</tr>
		<tr align="center">
			<td>盾</td>
			<td><html:text property="shieldName" value="${f:h(cs.shieldName)}"/></td>
			<td><html:text property="shieldStr" size="2" value="${f:h(cs.shieldStr)}"/></td>
			<td><html:text property="shieldAvoid" size="2" value="${f:h(cs.shieldAvoid)}"/></td>
			<td><html:text property="shieldDef" size="2" value="${f:h(cs.shieldDef)}"/></td>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr align="center">
			<td>合計</td>
			<td colspan="2">回避<html:text property="totalAvoid" size="2" value="${f:h(cs.totalDef)}"/></td>
			<td colspan="2">防護<html:text property="totalDef" size="2" value="${f:h(cs.totalAvoid)}"/></td>
		</tr>
	</table>
</div>
<div class="section normal">
	<div class="heading">
		<h2>装飾品</h2>
	</div>
<table border="1">
	<tr align="center">
		<td>部位</td>
		<td>名称</td>
		<td>効果</td>
	</tr>
	<tr align="center">
		<td>頭</td>
		<td><html:text property="accHeadName" value="${f:h(cs.accHeadName)}"/></td>
		<td><html:text property="accHeadNote" value="${f:h(cs.accHeadNote)}"/></td>
	</tr>
	<tr align="center">
		<td>耳</td>
		<td><html:text property="accEarName" value="${f:h(cs.accEarName)}"/></td>
		<td><html:text property="accEarNote" value="${f:h(cs.accEarNote)}"/></td>
	</tr>
	<tr align="center">
		<td>顔</td>
		<td><html:text property="accFaceName" value="${f:h(cs.accFaceName)}"/></td>
		<td><html:text property="accFaceNote" value="${f:h(cs.accFaceNote)}"/></td>
	</tr>
	<tr align="center">
		<td>首</td>
		<td><html:text property="accNeckName" value="${f:h(cs.accNeckName)}"/></td>
		<td><html:text property="accNeckNote" value="${f:h(cs.accNeckNote)}"/></td>
	</tr>
	<tr align="center">
		<td>背中</td>
		<td><html:text property="accBackName" value="${f:h(cs.accBackName)}"/></td>
		<td><html:text property="accBackNote" value="${f:h(cs.accBackNote)}"/></td>
	</tr>
	<tr align="center">
		<td>右手</td>
		<td><html:text property="accRHandName" value="${f:h(cs.accRHandName)}"/></td>
		<td><html:text property="accRHandNote" value="${f:h(cs.accRHandNote)}"/></td>
	</tr>
	<tr align="center">
		<td>左手</td>
		<td><html:text property="accLHandName" value="${f:h(cs.accLHandName)}"/></td>
		<td><html:text property="accLHandNote" value="${f:h(cs.accLHandNote)}"/></td>
	</tr>
	<tr align="center">
		<td>腰</td>
		<td><html:text property="accHipName" value="${f:h(cs.accHipName)}"/></td>
		<td><html:text property="accHipNote" value="${f:h(cs.accHipNote)}"/></td>
	</tr>
	<tr align="center">
		<td>足</td>
		<td><html:text property="accFootName" value="${f:h(cs.accFootName)}"/></td>
		<td><html:text property="accFootNote" value="${f:h(cs.accFootNote)}"/></td>
	</tr>
	<tr align="center">
		<td>その他</td>
		<td><html:text property="accOtherName" value="${f:h(cs.accOtherName)}"/></td>
		<td><html:text property="accOtherNote" value="${f:h(cs.accOtherNote)}"/></td>
	</tr>
</table>
<BR>
その他のアイテム<BR>
<html:textarea property="otherItems" rows="4" cols="60" value="${f:h(cs.otherItems)}" />
</div>
<div class="section normal">
	<div class="heading">
		<h2>その他</h2>
	</div>
<B>名誉点</B><BR>
所持/合計：<html:text property="currentHonor" value="${f:h(cs.currentHonor)}" size="5"></html:text>/<html:text property="maxHonor" value="${f:h(cs.maxHonor)}" size="5"></html:text><BR>
<BR>
<B>経験点</B><BR>
残/合計：<html:text property="exp" value="${f:h(cs.exp)}" size="7" />/<html:text property="totalExp" value="${f:h(cs.totalExp)}" size="7" />
<BR><BR>
所持金：<html:text property="money" value="${f:h(cs.money)}" size="7"></html:text><BR>
<BR>
<table>
	<tr valign="top">
		<td>その他：</td>
		<td><html:textarea rows="4" cols="60" property="memo" value="${f:h(cs.memo)}"/></td>
</table>
</div>
<s:submit property="update" value="更新" />
</s:form>
<a href="/TrpgSheets/sheetList/showSheet/${cs.characterId}"><html:button property="top" value="キャラシート詳細へ戻る" /></a> / <a href="/TrpgSheets/sheetList"><html:button property="top" value="キャラシート一覧へ戻る" /></a>
</div>
</tiles:put>
</tiles:insert>