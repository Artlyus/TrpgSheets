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
		<tr><td>キャラクター名(必須)</td><td>：<html:text property="characterName" value=""></html:text></td></tr>
		<tr><td>プレイヤー名</td><td>：<html:text property="playerName" value=""></html:text></td></tr>
		<tr><td>種族</td><td>：<html:text property="race" value=""></html:text></td></tr>
		<tr><td>性別</td><td>：<html:text property="sex" value=""></html:text></td></tr>
		<tr><td>年齢</td><td>：<html:text property="age" value=""></html:text></td></tr>
		<tr><td>生まれ</td><td>：<html:text property="history" value=""></html:text></td></tr>
		<tr><td>種族特徴</td><td>：<html:text property="raceSpecial" value=""></html:text></td></tr>
		<tr valign="top"><td>経歴</td><td>：<html:textarea rows="4" cols="50" property="note" /></td></tr>
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
			<td>A：<html:text property="sta" value="" size="2" /></td>
			<td rowspan="2">技：<html:text property="rtech" value="" size="2" /></td>
			<td><html:text property="upDex" value="" size="2" /></td>
			<td><html:text property="dex" value="" size="2" /></td>
			<td><html:text property="bonusDex" value="" size="2" /></td>
		</tr>
		<tr align="center">
			<td>敏捷度</td>
			<td>B：<html:text property="stb" value="" size="2" /></td>
			<td><html:text property="upAgi" value="" size="2" /></td>
			<td><html:text property="agi" value="" size="2" /></td>
			<td><html:text property="bonuxAgi" value="" size="2" /></td>
		</tr>
		<tr align="center">
			<td>筋　力</td>
			<td>C：<html:text property="stc" value="" size="2" /></td>
			<td rowspan="2">体：<html:text property="rvit" value="" size="2" /></td>
			<td><html:text property="upStr" value="" size="2" /></td>
			<td><html:text property="str" value="" size="2" /></td>
			<td><html:text property="bonusStr" value="" size="2" /></td>
		</tr>
		<tr align="center">
			<td>生命力</td>
			<td>D：<html:text property="std" value="" size="2" /></td>
			<td><html:text property="upVit" value="" size="2" /></td>
			<td><html:text property="vit" value="" size="2" /></td>
			<td><html:text property="bonusVit" value="" size="2" /></td>
		</tr>
		<tr align="center">
			<td>知　力</td>
			<td>E：<html:text property="ste" value="" size="2" /></td>
			<td rowspan="2">心：<html:text property="rmen" value="" size="2" /></td>
			<td><html:text property="upItl" value="" size="2" /></td>
			<td><html:text property="itl" value="" size="2" /></td>
			<td><html:text property="bonusItl" value="" size="2" /></td>
		</tr>
		<tr align="center">
			<td>精神力</td>
			<td>F：<html:text property="stf" value="" size="2" /></td>
			<td><html:text property="upMen" value="" size="2" /></td>
			<td><html:text property="men" value="" size="2" /></td>
			<td><html:text property="bonusMen" value="" size="2" /></td>
		</tr>
	</table>
	<BR>
	<table>
		<tr><td>冒険者レベル</td><td>：<html:text property="advLevel" value="" size="2"></html:text></td></tr>
		<tr><td>生命抵抗力</td><td>：<html:text property="lifeRegist" value="" size="2"></html:text></td><td>※生命力ボーナス＋冒険者レベル</td></tr>
		<tr><td>精神抵抗力</td><td>：<html:text property="mentalRegist" value="" size="2"></html:text></td><td>※精神力ボーナス＋冒険者レベル</td></tr>
		<tr><td>HP</td><td>：<html:text property="hp" value="" size="2"></html:text></td><td>※生命力＋冒険者レベルｘ３</td></tr>
		<tr><td>MP</td><td>：<html:text property="mp" value="" size="2"></html:text></td><td>※精神力＋魔法使い系技能レベル合計ｘ３</td></tr>
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
	<p>選択取得</p>
	<table border="1">
		<tr align="center">
			<td>回避行動</td><td><html:checkbox property="Skill01" /></td>
			<td>頑強</td><td><html:checkbox property="Skill02" /></td>
			<td>精密射撃</td><td><html:checkbox property="Skill03" /></td>
		</tr>
		<tr align="center">
			<td>双撃</td><td><html:checkbox property="Skill04" /></td>
			<td>狙撃</td><td><html:checkbox property="Skill05" /></td>
			<td>鷹の目</td><td><html:checkbox property="Skill06" /></td>
		</tr>
		<tr align="center">
			<td>鉄壁</td><td><html:checkbox property="Skill07" /></td>
			<td>投げ強化</td><td><html:checkbox property="Skill08" /></td>
			<td>二刀流</td><td><html:checkbox property="Skill09" /></td>
		</tr>
		<tr align="center">
			<td>武器習熟</td><td><html:checkbox property="Skill10" /></td>
			<td>武器習熟Ⅱ</td><td><html:checkbox property="Skill11" /></td>
			<td>踏みつけ</td><td><html:checkbox property="Skill12" /></td>
		</tr>
		<tr align="center">
			<td>ブロッキング</td><td><html:checkbox property="Skill13" /></td>
			<td>防具習熟</td><td><html:checkbox property="Skill14" /></td>
			<td>防具習熟Ⅱ</td><td><html:checkbox property="Skill15" /></td>
		</tr>
		<tr align="center">
			<td>魔法制御</td><td><html:checkbox property="Skill16" /></td>
			<td>魔法誘導</td><td><html:checkbox property="Skill17" /></td>
			<td>両手利き</td><td><html:checkbox property="Skill18" /></td>
		</tr>
		<tr align="center">
			<td>MP軽減</td><td><html:checkbox property="Skill19" /></td>
			<td>かばう</td><td><html:checkbox property="Skill20" /></td>
			<td>牽制攻撃</td><td><html:checkbox property="Skill21" /></td>
		</tr>
		<tr align="center">
			<td>牽制攻撃Ⅱ</td><td><html:checkbox property="Skill22" /></td>
			<td>全力攻撃</td><td><html:checkbox property="Skill23" /></td>
			<td>挑発攻撃</td><td><html:checkbox property="Skill24" /></td>
		</tr>
		<tr align="center">
			<td>必殺攻撃</td><td><html:checkbox property="Skill25" /></td>
			<td>魔法拡大/確実化</td><td><html:checkbox property="Skill26" /></td>
			<td>魔法拡大/数</td><td><html:checkbox property="Skill27" /></td>
		</tr>
		<tr align="center">
			<td>魔法拡大/距離</td><td><html:checkbox property="Skill28" /></td>
			<td>魔法拡大/時間</td><td><html:checkbox property="Skill29" /></td>
			<td>魔法拡大/範囲</td><td><html:checkbox property="Skill30" /></td>
		</tr>
		<tr align="center">
			<td>魔法収束</td><td><html:checkbox property="Skill31" /></td>
			<td>魔力撃</td><td><html:checkbox property="Skill32" /></td>
			<td>足さばき</td><td><html:checkbox property="Skill33" /></td>
		</tr>
		<tr align="center">
			<td>頑強Ⅱ</td><td><html:checkbox property="Skill34" /></td>
			<td>射手の体術</td><td><html:checkbox property="Skill35" /></td>
			<td>鋭い目</td><td><html:checkbox property="Skill36" /></td>
		</tr>
		<tr align="center">
			<td>ハーモニー</td><td><html:checkbox property="Skill37" /></td>
			<td>魔力強化</td><td><html:checkbox property="Skill38" /></td>
			<td>命中強化</td><td><html:checkbox property="Skill39" /></td>
		</tr>
		<tr align="center">
			<td>練体の極意</td><td><html:checkbox property="Skill40" /></td>
			<td>ワードブレイク</td><td><html:checkbox property="Skill41" /></td>
			<td>牽制攻撃Ⅲ</td><td><html:checkbox property="Skill42" /></td>
		</tr>
		<tr align="center">
			<td>全力攻撃Ⅱ</td><td><html:checkbox property="Skill43" /></td>
			<td>テイルスイング</td><td><html:checkbox property="Skill44" /></td>
			<td>マルチアクション</td><td><html:checkbox property="Skill45" /></td>
		</tr>
		<tr align="center">
			<td>ガーディアン</td><td><html:checkbox property="Skill46" /></td>
			<td>キャパシティ</td><td><html:checkbox property="Skill47" /></td>
			<td>武器の達人</td><td><html:checkbox property="Skill48" /></td>
		</tr>
		<tr align="center">
			<td>防具の達人</td><td><html:checkbox property="Skill49" /></td>
			<td>魔力撃強化</td><td><html:checkbox property="Skill50" /></td>
			<td>命中強化Ⅱ</td><td><html:checkbox property="Skill51" /></td>
		</tr>
		<tr align="center">
			<td>インファイト</td><td><html:checkbox property="Skill52" /></td>
			<td>影矢</td><td><html:checkbox property="Skill53" /></td>
			<td>牙折り</td><td><html:checkbox property="Skill54" /></td>
		</tr>
		<tr align="center">
			<td>飛び蹴り</td><td><html:checkbox property="Skill55" /></td>
			<td>薙ぎ払い</td><td><html:checkbox property="Skill56" /></td>
		</tr>
	</table>
	<br>
	<p>自動取得</p>
		<table border="1">
			<tr align="center">
				<td colspan="12">グラップラー</td>
			</tr>
			<tr align="center">
				<td>Lv.1</td><td colspan="4">追加攻撃</td><td><html:checkbox property="Skill57" /></td>
				<td>Lv.1</td><td colspan="4">投げ攻撃</td><td><html:checkbox property="Skill58" /></td>
			</tr>
			<tr align="center">
				<td>Lv.7</td><td colspan="4">カウンター</td><td><html:checkbox property="Skill59" /></td>
				<td>Lv.13</td><td colspan="4">バトルマスター</td><td><html:checkbox property="Skill60" /></td>
			</tr>
			<tr align="center">
				<td colspan="12">ファイター</td>
			</tr>
			<tr align="center">
				<td>Lv.7</td><td colspan="4">タフネス</td><td><html:checkbox property="Skill61" /></td>
				<td>Lv.13</td><td colspan="4">バトルマスター</td><td><html:checkbox property="Skill62" /></td>
			</tr>
			<tr align="center">
				<td colspan="12">スカウト</td>
			</tr>
			<tr align="center">
				<td>Lv.5</td><td colspan="4">トレジャーハント</td><td><html:checkbox property="Skill63" /></td>
				<td>Lv.7</td><td colspan="4">ファストアクション</td><td><html:checkbox property="Skill64" /></td>
			</tr>
			<tr align="center">
				<td>Lv.9</td><td colspan="4">影走り</td><td><html:checkbox property="Skill65" /></td>
				<td>Lv.12</td><td colspan="4">トレジャーマスター</td><td><html:checkbox property="Skill66" /></td>
			</tr>
			<tr align="center">
				<td>Lv.15</td><td colspan="4">匠の技</td><td><html:checkbox property="Skill67" /></td>
			</tr>
			<tr align="center">
				<td colspan="12">レンジャー</td>
			</tr>
			<tr align="center">
				<td>Lv.5</td><td colspan="4">治癒適正</td><td><html:checkbox property="Skill68" /></td>
				<td>Lv.7</td><td colspan="4">不屈</td><td><html:checkbox property="Skill69" /></td>
			</tr>
			<tr align="center">
				<td>Lv.9</td><td colspan="4">ポーションマスター</td><td><html:checkbox property="Skill70" /></td>
				<td>Lv.12</td><td colspan="4">韋駄天</td><td><html:checkbox property="Skill71" /></td>
			</tr>
			<tr align="center">
				<td>Lv.15</td><td colspan="4">縮地</td><td><html:checkbox property="Skill72" /></td>
			</tr>
			<tr align="center">
				<td colspan="12">セージ</td>
			</tr>
			<tr align="center">
				<td>Lv.5</td><td colspan="4">鋭い目</td><td><html:checkbox property="Skill73" /></td>
				<td>Lv.7</td><td colspan="4">弱点看破</td><td><html:checkbox property="Skill74" /></td>
			</tr>
			<tr align="center">
				<td>Lv.9</td><td colspan="4">マナセーブ</td><td><html:checkbox property="Skill75" /></td>
				<td>Lv.12</td><td colspan="4">マナ耐性</td><td><html:checkbox property="Skill76" /></td>
			</tr>
			<tr align="center">
				<td>Lv.15</td><td colspan="4">賢人の知恵</td><td><html:checkbox property="Skill77" /></td>
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
			<td><html:checkbox property="Enhance01"></html:checkbox></td>
		</tr>
		<tr>
			<td>オウルビジョン</td>
			<td><html:checkbox property="Enhance02"></html:checkbox></td>
		</tr>
		<tr>
			<td>ガゼルフット</td>
			<td><html:checkbox property="Enhance03"></html:checkbox></td>
		</tr>
		<tr>
			<td>キャッツアイ</td>
			<td><html:checkbox property="Enhance04"></html:checkbox></td>
		</tr>
		<tr>
			<td>スケイルレギンス</td>
			<td><html:checkbox property="Enhance05"></html:checkbox></td>
		</tr>
		<tr>
			<td>ストロングブラッド</td>
			<td><html:checkbox property="Enhance06"></html:checkbox></td>
		</tr>
		<tr>
			<td>チックチック</td>
			<td><html:checkbox property="Enhance07"></html:checkbox></td>
		</tr>
		<tr>
			<td>ドラゴンテイル</td>
			<td><html:checkbox property="Enhance08"></html:checkbox></td>
		</tr>
		<tr>
			<td>ビートルスキン</td>
			<td><html:checkbox property="Enhance09"></html:checkbox></td>
		</tr>
		<tr>
			<td>マッスルベアー</td>
			<td><html:checkbox property="Enhance10"></html:checkbox></td>
		</tr>
		<tr>
			<td>メディテーション</td>
			<td><html:checkbox property="Enhance11"></html:checkbox></td>
		</tr>
		<tr>
			<td>ラビットイヤー</td>
			<td><html:checkbox property="Enhance12"></html:checkbox></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル５から習得可能</td>
		</tr>
		<tr>
			<td>ケンタウロスレッグ</td>
			<td><html:checkbox property="Enhance13"></html:checkbox></td>
		</tr>
		<tr>
			<td>シェイプアニマル</td>
			<td><html:checkbox property="Enhance14"></html:checkbox></td>
		</tr>
		<tr>
			<td>ジャイアントアーム</td>
			<td><html:checkbox property="Enhance15"></html:checkbox></td>
		</tr>
		<tr>
			<td>スフィンクスノレッジ</td>
			<td><html:checkbox property="Enhance16"></html:checkbox></td>
		</tr>
		<tr>
			<td>デーモンフィンガー</td>
			<td><html:checkbox property="Enhance17"></html:checkbox></td>
		</tr>
		<tr>
			<td>ファイアブレス</td>
			<td><html:checkbox property="Enhance18"></html:checkbox></td>
		</tr>
		<tr>
			<td>リカバリィ</td>
			<td><html:checkbox property="Enhance19"></html:checkbox></td>
		</tr>
		<tr>
			<td>ワイドウィング</td>
			<td><html:checkbox property="Enhance20"></html:checkbox></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル10から習得可能</td>
		</tr>
		<tr>
			<td>カメレオンカムフラージュ</td>
			<td><html:checkbox property="Enhance21"></html:checkbox></td>
		</tr>
		<tr>
			<td>クラーケンスタビリティ</td>
			<td><html:checkbox property="Enhance22"></html:checkbox></td>
		</tr>
		<tr>
			<td>ジィプロフェシー</td>
			<td><html:checkbox property="Enhance23"></html:checkbox></td>
		</tr>
		<tr>
			<td>ストライダーウォーク</td>
			<td><html:checkbox property="Enhance24"></html:checkbox></td>
		</tr>
		<tr>
			<td>スパイダーウェブ</td>
			<td><html:checkbox property="Enhance25"></html:checkbox></td>
		</tr>
		<tr>
			<td>タイタンフット</td>
			<td><html:checkbox property="Enhance26"></html:checkbox></td>
		</tr>
		<tr>
			<td>トロールバイタル</td>
			<td><html:checkbox property="Enhance27"></html:checkbox></td>
		</tr>
		<tr>
			<td>バルーンシードショット</td>
			<td><html:checkbox property="Enhance28"></html:checkbox></td>
		</tr>
		<tr>
			<td>フェンリルバイト</td>
			<td><html:checkbox property="Enhance29"></html:checkbox></td>
		</tr>
		<tr>
			<td>ヘルシーボディ</td>
			<td><html:checkbox property="Enhance30"></html:checkbox></td>
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
			<td><html:checkbox property="Song01"></html:checkbox></td>
		</tr>
		<tr>
			<td>アンビエント</td>
			<td><html:checkbox property="Song02"></html:checkbox></td>
		</tr>
		<tr>
			<td>サモン・スモールアニマル</td>
			<td><html:checkbox property="Song03"></html:checkbox></td>
		</tr>
		<tr>
			<td>サモン・フィッシュ</td>
			<td><html:checkbox property="Song04"></html:checkbox></td>
		</tr>
		<tr>
			<td>ノイズ</td>
			<td><html:checkbox property="Song05"></html:checkbox></td>
		</tr>
		<tr>
			<td>バラード</td>
			<td><html:checkbox property="Song06"></html:checkbox></td>
		</tr>
		<tr>
			<td>ヒーリング</td>
			<td><html:checkbox property="Song07"></html:checkbox></td>
		</tr>
		<tr>
			<td>ビビッド</td>
			<td><html:checkbox property="Song08"></html:checkbox></td>
		</tr>
		<tr>
			<td>モラル</td>
			<td><html:checkbox property="Song09"></html:checkbox></td>
		</tr>
		<tr>
			<td>ララバイ</td>
			<td><html:checkbox property="Song10"></html:checkbox></td>
		</tr>
		<tr>
			<td>レクイエム</td>
			<td><html:checkbox property="Song11"></html:checkbox></td>
		</tr>
		<tr>
			<td>レジスタンス</td>
			<td><html:checkbox property="Song12"></html:checkbox></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル５から習得可能</td>
		</tr>
		<tr>
			<td>アトリビュート</td>
			<td><html:checkbox property="Song13"></html:checkbox></td>
		</tr>
		<tr>
			<td>キュアリオスティ</td>
			<td><html:checkbox property="Song14"></html:checkbox></td>
		</tr>
		<tr>
			<td>チャーミング</td>
			<td><html:checkbox property="Song15"></html:checkbox></td>
		</tr>
		<tr>
			<td>チョーク</td>
			<td><html:checkbox property="Song16"></html:checkbox></td>
		</tr>
		<tr>
			<td>ヌーディ</td>
			<td><html:checkbox property="Song17"></html:checkbox></td>
		</tr>
		<tr>
			<td>ノスタルジィ</td>
			<td><html:checkbox property="Song18"></html:checkbox></td>
		</tr>
		<tr>
			<td>ビター</td>
			<td><html:checkbox property="Song19"></html:checkbox></td>
		</tr>
		<tr>
			<td>ラブソング</td>
			<td><html:checkbox property="Song20"></html:checkbox></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル10から習得可能</td>
		</tr>
		<tr>
			<td>アメージング</td>
			<td><html:checkbox property="Song21"></html:checkbox></td>
		</tr>
		<tr>
			<td>クラップ</td>
			<td><html:checkbox property="Song22"></html:checkbox></td>
		</tr>
		<tr>
			<td>コーラス</td>
			<td><html:checkbox property="Song23"></html:checkbox></td>
		</tr>
		<tr>
			<td>ソニックヴォイス</td>
			<td><html:checkbox property="Song24"></html:checkbox></td>
		</tr>
		<tr>
			<td>ダル</td>
			<td><html:checkbox property="Song25"></html:checkbox></td>
		</tr>
		<tr>
			<td>ダンス</td>
			<td><html:checkbox property="Song26"></html:checkbox></td>
		</tr>
		<tr>
			<td>フォール</td>
			<td><html:checkbox property="Song27"></html:checkbox></td>
		</tr>
		<tr>
			<td>マーチ</td>
			<td><html:checkbox property="Song28"></html:checkbox></td>
		</tr>
		<tr>
			<td>リダクション</td>
			<td><html:checkbox property="Song29"></html:checkbox></td>
		</tr>
		<tr>
			<td>レイジィ</td>
			<td><html:checkbox property="Song30"></html:checkbox></td>
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
			<td><html:checkbox property="Rider01"></html:checkbox></td>
		</tr>
		<tr>
			<td>騎獣回避</td>
			<td><html:checkbox property="Rider02"></html:checkbox></td>
		</tr>
		<tr>
			<td>騎獣の献身</td>
			<td><html:checkbox property="Rider03"></html:checkbox></td>
		</tr>
		<tr>
			<td>攻撃指令</td>
			<td><html:checkbox property="Rider04"></html:checkbox></td>
		</tr>
		<tr>
			<td>水中騎乗</td>
			<td><html:checkbox property="Rider05"></html:checkbox></td>
		</tr>
		<tr>
			<td>探索指令/td>
			<td><html:checkbox property="Rider06"></html:checkbox></td>
		</tr>
		<tr>
			<td>タンデム</td>
			<td><html:checkbox property="Rider07"></html:checkbox></td>
		</tr>
		<tr>
			<td>チャージ</td>
			<td><html:checkbox property="Rider08"></html:checkbox></td>
		</tr>
		<tr>
			<td>特殊攻撃指令</td>
			<td><html:checkbox property="Rider09"></html:checkbox></td>
		</tr>
		<tr>
			<td>振り下ろし</td>
			<td><html:checkbox property="Rider10"></html:checkbox></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル５から習得可能</td>
		</tr>
		<tr>
			<td>遠隔指示</td>
			<td><html:checkbox property="Rider11"></html:checkbox></td>
		</tr>
		<tr>
			<td>騎獣回避Ⅱ</td>
			<td><html:checkbox property="Rider12"></html:checkbox></td>
		</tr>
		<tr>
			<td>空中騎乗</td>
			<td><html:checkbox property="Rider13"></html:checkbox></td>
		</tr>
		<tr>
			<td>人馬一体</td>
			<td><html:checkbox property="Rider14"></html:checkbox></td>
		</tr>
		<tr>
			<td>トランプル</td>
			<td><html:checkbox property="Rider15"></html:checkbox></td>
		</tr>
		<tr>
			<td>振り下ろしⅡ</td>
			<td><html:checkbox property="Rider16"></html:checkbox></td>
		</tr>
		<tr>
			<td>呼び笛</td>
			<td><html:checkbox property="Rider17"></html:checkbox></td>
		</tr>
		<tr align="center">
			<td colspan="2">レベル10から習得可能</td>
		</tr>
		<tr>
			<td>威圧</td>
			<td><html:checkbox property="Rider18"></html:checkbox></td>
		</tr>
		<tr>
			<td>騎乗指揮</td>
			<td><html:checkbox property="Rider19"></html:checkbox></td>
		</tr>
		<tr>
			<td>スーパーチャージ</td>
			<td><html:checkbox property="Rider20"></html:checkbox></td>
		</tr>
		<tr>
			<td>縦横無尽</td>
			<td><html:checkbox property="Rider21"></html:checkbox></td>
		</tr>
		<tr>
			<td>八面六臂</td>
			<td><html:checkbox property="Rider22"></html:checkbox></td>
		</tr>
		<tr>
			<td>バランス</td>
			<td><html:checkbox property="Rider23"></html:checkbox></td>
		</tr>
		<tr>
			<td>振り下ろしⅢ</td>
			<td><html:checkbox property="Rider24"></html:checkbox></td>
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
				<td><html:checkbox property="lang01Re" /></td>
				<td><html:checkbox property="lang01Wr" /></td>
			</tr>
			<tr align="center">
				<td>汎用蛮族語</td>
				<td><html:checkbox property="lang02Re" /></td>
				<td><html:checkbox property="lang02Wr" /></td>
			</tr>
			<tr align="center">
				<td>魔法文明語</td>
				<td><html:checkbox property="lang03Re" /></td>
				<td><html:checkbox property="lang03Wr" /></td>
			</tr>
			<tr align="center">
				<td>魔動機文明語</td>
				<td><html:checkbox property="lang04Re" /></td>
				<td><html:checkbox property="lang04Wr" /></td>
			</tr>
			<tr align="center">
				<td>エルフ語</td>
				<td><html:checkbox property="lang05Re" /></td>
				<td><html:checkbox property="lang05Wr" /></td>
			</tr>
			<tr align="center">
				<td>ドワーフ語</td>
				<td><html:checkbox property="lang06Re" /></td>
				<td><html:checkbox property="lang06Wr" /></td>
			</tr>
			<tr align="center">
				<td>シャドウ語</td>
				<td><html:checkbox property="lang07Re" /></td>
				<td><html:checkbox property="lang07Wr" /></td>
			</tr>
			<tr align="center">
				<td>神紀文明語</td>
				<td><html:checkbox property="lang08Re" /></td>
				<td><html:checkbox property="lang08Wr" /></td>
			</tr>
			<tr align="center">
				<td>妖精語</td>
				<td><html:checkbox property="lang09Re" /></td>
				<td><html:checkbox property="lang09Wr" /></td>
			</tr>
			<tr align="center">
				<td>巨人語</td>
				<td><html:checkbox property="lang10Re" /></td>
				<td><html:checkbox property="lang10Wr" /></td>
			</tr>
			<tr align="center">
				<td>ドラゴン語</td>
				<td><html:checkbox property="lang11Re" /></td>
				<td><html:checkbox property="lang11Wr" /></td>
			</tr>
			<tr align="center">
				<td>ドレイク語</td>
				<td><html:checkbox property="lang12Re" /></td>
				<td><html:checkbox property="lang12Wr" /></td>
			</tr>
			<tr align="center">
				<td>魔神語</td>
				<td><html:checkbox property="lang13Re" /></td>
				<td><html:checkbox property="lang13Wr" /></td>
			</tr>
			<tr align="center">
				<td>妖魔語</td>
				<td><html:checkbox property="lang14Re" /></td>
				<td><html:checkbox property="lang14Wr" /></td>
			</tr>
			<tr align="center">
				<td>その他</td>
				<td><html:checkbox property="lang15Re" /></td>
				<td><html:checkbox property="lang15Wr" /></td>
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
<c:forEach begin="0" end="5" var="i">
	<tr align="center">
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
	<tr align="center">
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
			<td><html:text property="armorName"/></td>
			<td><html:text property="armorStr" size="2"/></td>
			<td><html:text property="armorAvoid" size="2"/></td>
			<td><html:text property="armorDef" size="2"/></td>
		</tr>
		<tr align="center">
			<td>盾</td>
			<td><html:text property="shieldName"/></td>
			<td><html:text property="shieldStr" size="2"/></td>
			<td><html:text property="shieldAvoid" size="2"/></td>
			<td><html:text property="shieldDef" size="2"/></td>
		</tr>
	</table>
	<br>
	<table border="1">
		<tr align="center">
			<td>合計</td>
			<td colspan="2">回避<html:text property="totalDef" size="2"/></td>
			<td colspan="2">防護<html:text property="totalAvoid" size="2"/></td>
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
		<td><html:text property="accHeadName"/></td>
		<td><html:text property="accHeadNote"/></td>
	</tr>
	<tr align="center">
		<td>耳</td>
		<td><html:text property="accEarName"/></td>
		<td><html:text property="accEarNote"/></td>
	</tr>
	<tr align="center">
		<td>顔</td>
		<td><html:text property="accFaceName"/></td>
		<td><html:text property="accFaceNote"/></td>
	</tr>
	<tr align="center">
		<td>首</td>
		<td><html:text property="accNeckName"/></td>
		<td><html:text property="accNeckNote"/></td>
	</tr>
	<tr align="center">
		<td>背中</td>
		<td><html:text property="accBackName"/></td>
		<td><html:text property="accBackNote"/></td>
	</tr>
	<tr align="center">
		<td>右手</td>
		<td><html:text property="accRHandName"/></td>
		<td><html:text property="accRHandNote"/></td>
	</tr>
	<tr align="center">
		<td>左手</td>
		<td><html:text property="accLHandName"/></td>
		<td><html:text property="accLHandNote"/></td>
	</tr>
	<tr align="center">
		<td>腰</td>
		<td><html:text property="accHipName"/></td>
		<td><html:text property="accHipNote"/></td>
	</tr>
	<tr align="center">
		<td>足</td>
		<td><html:text property="accFootName"/></td>
		<td><html:text property="accFootNote"/></td>
	</tr>
	<tr align="center">
		<td>その他</td>
		<td><html:text property="accOtherName"/></td>
		<td><html:text property="accOtherNote"/></td>
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
<B>経験点</B><BR>
残/合計：<html:text property="exp" value="" size="7" />/<html:text property="totalExp" value="" size="7" />
<BR><BR>
所持金：<html:text property="money" value="" size="7"></html:text><BR>
<BR>
<table>
	<tr valign="top">
		<td>その他：</td>
		<td><html:textarea rows="4" cols="60" property="memo" /></td>
</table>
</div>
<s:submit property="doCreate" value="Create" />
</s:form>
</div>
</tiles:put>
</tiles:insert>