<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Create Charactere Sheets</title>
</head>
<body>
<h1>Create Character Sheets for Sword World 2.0</h1>
<s:form>
キャラクター名(必須)：<html:text property="characterName" value=""></html:text><BR>
プレイヤー名：<html:text property="playerName" value=""></html:text><BR>
種族：<html:text property="race" value=""></html:text><BR>
性別：<html:text property="sex" value=""></html:text><BR>
年齢：<html:text property="age" value=""></html:text><BR>
生まれ：<html:text property="history" value=""></html:text><BR>
種族特徴：<html:text property="raceSpecial" value=""></html:text><BR>
<BR>
能力値<BR>
器用度：<html:text property="dex" value=""></html:text><BR>
敏捷度：<html:text property="agi" value=""></html:text><BR>
筋力：<html:text property="str" value=""></html:text><BR>
生命力：<html:text property="vit" value=""></html:text><BR>
知力：<html:text property="itl" value=""></html:text><BR>
精神力：<html:text property="men" value=""></html:text><BR>
<BR>
生命抵抗力：<html:text property="lifeRegist" value=""></html:text><BR>
精神抵抗力：<html:text property="mentalRegist" value=""></html:text><BR>
<BR>
HP：<html:text property="hp" value=""></html:text><BR>
MP：<html:text property="mp" value=""></html:text><BR>
<BR>
冒険者レベル：<html:text property="advLevel" value=""></html:text><BR>
<BR>
技能：<BR>
<table border="1">
	<tr align="center">
		<td>技能</td>
		<td>レベル</td>
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
		<td><html:text property="c1level" value=""></html:text></td>
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
		<td><html:text property="c2level" value=""></html:text></td>
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
		<td><html:text property="c3level" value=""></html:text></td>
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
		<td><html:text property="c4level" value=""></html:text></td>
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
		<td><html:text property="c5level" value=""></html:text></td>
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
		<td><html:text property="c6level" value=""></html:text></td>
	</tr>
</table>
<BR>
戦闘特技：<BR>
<BR>
練技/呪歌：<BR>
<BR>
言語：<BR>
<BR>
名誉点<BR>
所持/合計：<html:text property="currentHonor" value=""></html:text>/<html:text property="maxHonor" value=""></html:text><BR>
<BR>
<h3>アイテム</h3><BR>
武器<BR>
<table border="1">
	<tr>
		<td>名称</td>
		<td>用法</td>
		<td>必筋</td>
		<td>命中修正</td>
		<td>命中力</td>
		<td>威力</td>
		<td>②</td>
		<td>③</td>
		<td>④</td>
		<td>⑤</td>
		<td>⑥</td>
		<td>⑦</td>
		<td>⑧</td>
		<td>⑨</td>
		<td>⑩</td>
		<td>⑪</td>
		<td>⑫</td>
		<td>C値</td>
		<td>追加値</td>
		<td>備考</td>
	</tr>
	<tr>
		<td><html:text property="" value=""></html:text></td>
		<td>用法</td>
		<td>必筋<html:text property="" value=""></html:text></td>
		<td>命中修正<html:text property="" value=""></html:text></td>
		<td>命中力<html:text property="" value=""></html:text></td>
		<td>威力<html:text property="" value=""></html:text></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td><html:text property="" value=""></html:text>C</td>
		<td><html:text property="" value=""></html:text>追加値</td>
		<td><html:text property="" value=""></html:text></td>
	</tr>
	<tr></tr>
	<tr></tr>
	<tr></tr>
	<tr></tr>
	<tr></tr>
</table>


鎧：<BR>
盾：<BR>
<BR>
装飾品<BR>
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
<BR>
<BR>
所持金：<html:text property="money" value=""></html:text><BR>
<s:submit property="doCreate" value="Create" />
</s:form>
</body>
</html>