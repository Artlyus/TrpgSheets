package trpgsheets.entity;

import javax.persistence.Entity;

@Entity
public class CharacterSheet {

	// 基本情報
	public int characterId;
	public String characterName;
	public String playerName;
	public String race;
	public String sex;
	public String age;
	public String history;
	public String raceSpecial;
	public String note;

	// 個体値
	public String sta;
	public String stb;
	public String stc;
	public String std;
	public String ste;
	public String stf;

	// rはraceの略
	public String rtech;
	public String rvit;
	public String rmen;

	// 成長値
	public String upDex;
	public String upAgi;
	public String upStr;
	public String upVit;
	public String upItl;
	public String upMen;

	// 合計値
	public String dex;
	public String agi;
	public String str;
	public String vit;
	public String itl;
	public String men;

	// ボーナス
	public String bonusDex;
	public String bonusAgi;
	public String bonusStr;
	public String bonusVit;
	public String bonusItl;
	public String bonusMen;

	public String lifeRegist;
	public String mentalRegist;
	public String hp;
	public String mp;
	public String advLevel;

	// 技能
	public String class1;
	public String c1level;
	public String class2;
	public String c2level;
	public String class3;
	public String c3level;
	public String class4;
	public String c4level;
	public String class5;
	public String c5level;
	public String class6;
	public String c6level;


	/*
	 *  特技
	 *
	 *  01:回避行動
	 *  02:頑強
	 *  03:精密射撃
	 *  04:双撃
	 *  05:狙撃
	 *  06:鷹の目
	 *  07:鉄壁
	 *  08:投げ強化
	 *  09:二刀流
	 *  10:武器習熟
	 *  11:武器習熟Ⅱ
	 *  12:踏みつけ
	 *  13:ブロッキング
	 *  14:防具習熟
	 *  15:防具習熟Ⅱ
	 *  16:魔法制御
	 *  17:魔法誘導
	 *  18:両手利き
	 *  19:MP軽減
	 *  20:かばう
	 *  21:牽制攻撃
	 *  22:牽制攻撃Ⅱ
	 *  23:全力攻撃
	 *  24:挑発攻撃
	 *  25:必殺攻撃
	 *  26:魔法拡大/確実化
	 *  27:魔法拡大/数
	 *  28:魔法拡大/距離
	 *  29:魔法拡大/時間
	 *  30:魔法拡大/範囲
	 *  31:魔法収束
	 *  32:魔力撃
	 *  33:足さばき
	 *  34:頑強Ⅱ
	 *  35:射手の体術
	 *  36:鋭い目
	 *  37:ハーモニー
	 *  38:魔力強化
	 *  39:命中強化
	 *  40:練体の極意
	 *  41:ワードブレイク
	 *  42:牽制攻撃Ⅲ
	 *  43:全力攻撃Ⅱ
	 *  44:テイルスイング
	 *  45:マルチアクション
	 *  46:ガーディアン
	 *  47:キャパシティ
	 *  48:武器の達人
	 *  49:防具の達人
	 *  50:魔力撃強化
	 *  51:命中強化Ⅱ
	 *  52:インファイト
	 *  53:影矢
	 *  54:牙折り
	 *  55:飛び蹴り
	 *  56:薙ぎ払い
	 *
	 *  自動習得
	 *  57:追加攻撃:グラップラー1
	 *  58:投げ攻撃:グラップラー1
	 *  59:カウンター:グラ7
	 *  60:バトルマスター:グラ13
	 *  61:タフネス:ファイター7
	 *  62:バトルマスター:ファイター13
	 *  63:トレジャーハント:スカウト5
	 *  64:ファストアクション:スカウト7
	 *  65:影走り:スカウト9
	 *  66:トレジャーマスター:
	 *  67:匠の技:
	 *  68:治癒適正:レンジャー5
	 *  69:不屈:レンジャー7
	 *  70:ポーションマスター:レンジャー9
	 *  71:韋駄天
	 *  72:縮地
	 *  73:鋭い目:セージ5
	 *  74:弱点看破:セージ7
	 *  75:マナセーブ:セージ9
	 *  76:マナ耐性
	 *  77:賢人の知恵
	 *
	 *
	 */
	public String Skill01;
	public String Skill02;
	public String Skill03;
	public String Skill04;
	public String Skill05;
	public String Skill06;
	public String Skill07;
	public String Skill08;
	public String Skill09;
	public String Skill10;
	public String Skill11;
	public String Skill12;
	public String Skill13;
	public String Skill14;
	public String Skill15;
	public String Skill16;
	public String Skill17;
	public String Skill18;
	public String Skill19;
	public String Skill20;
	public String Skill21;
	public String Skill22;
	public String Skill23;
	public String Skill24;
	public String Skill25;
	public String Skill26;
	public String Skill27;
	public String Skill28;
	public String Skill29;
	public String Skill30;
	public String Skill31;
	public String Skill32;
	public String Skill33;
	public String Skill34;
	public String Skill35;
	public String Skill36;
	public String Skill37;
	public String Skill38;
	public String Skill39;
	public String Skill40;
	public String Skill41;
	public String Skill42;
	public String Skill43;
	public String Skill44;
	public String Skill45;
	public String Skill46;
	public String Skill47;
	public String Skill48;
	public String Skill49;
	public String Skill50;
	public String Skill51;
	public String Skill52;
	public String Skill53;
	public String Skill54;
	public String Skill55;
	public String Skill56;
	public String Skill57;
	public String Skill58;
	public String Skill59;
	public String Skill60;
	public String Skill61;
	public String Skill62;
	public String Skill63;
	public String Skill64;
	public String Skill65;
	public String Skill66;
	public String Skill67;
	public String Skill68;
	public String Skill69;
	public String Skill70;
	public String Skill71;
	public String Skill72;
	public String Skill73;
	public String Skill74;
	public String Skill75;
	public String Skill76;
	public String Skill77;

	/*
	 *  練技
	 *
	 *  01:アンチボディ
	 *  02:オウルビジョン
	 *  03:ガゼルフット
	 *  04:キャッツアイ
	 *  05:スケイルレギンス
	 *  06:ストロングブラッド
	 *  07:チックチック
	 *  08:ドラゴンテイル
	 *  09:ビートルスキン
	 *  10:マッスルベアー
	 *  11:メディテーション
	 *  12:ラビットイヤー
	 *  13:ケンタウロスレッグ（ここからレベル５）
	 *  14:シェイプアニマル
	 *  15:ジャイアントアーム
	 *  16:スフィンクスノレッジ
	 *  17:デーモンフィンガー
	 *  18:ファイアブレス
	 *  19:リカバリィ
	 *  20:ワイドウィング
	 *  21:カメレオンカムフラージュ（ここからレベル１０）
	 *  22:クラーケンスタビリティ
	 *  23:ジィプロフェシー
	 *  24:ストライダーウォーク
	 *  25:スパイダーウェブ
	 *  26:タイタンフット
	 *  27:トロールバイタル
	 *  28:バルーンシードショット
	 *  29:フェンリルバイト
	 *  30:ヘルシーボディ
	 *
	 */
	public String Enhance01;
	public String Enhance02;
	public String Enhance03;
	public String Enhance04;
	public String Enhance05;
	public String Enhance06;
	public String Enhance07;
	public String Enhance08;
	public String Enhance09;
	public String Enhance10;
	public String Enhance11;
	public String Enhance12;
	public String Enhance13;
	public String Enhance14;
	public String Enhance15;
	public String Enhance16;
	public String Enhance17;
	public String Enhance18;
	public String Enhance19;
	public String Enhance20;
	public String Enhance21;
	public String Enhance22;
	public String Enhance23;
	public String Enhance24;
	public String Enhance25;
	public String Enhance26;
	public String Enhance27;
	public String Enhance28;
	public String Enhance29;
	public String Enhance30;

	/*
	 *  呪歌
	 *
	 *  01:アーリーバード
	 *  02:アンビエント
	 *  03:サモン・スモールアニマル
	 *  04:サモン・フィッシュ
	 *  05:ノイズ
	 *  06:バラード
	 *  07:ヒーリング
	 *  08:ビビッド
	 *  09:モラル
	 *  10:ララバイ
	 *  11:レクイエム
	 *  12:レジスタンス
	 *  13:アトリビュート（ここからレベル５）
	 *  14:キュアリオスティ
	 *  15:チャーミング
	 *  16:チョーク
	 *  17:ヌーディ
	 *  18:ノスタルジィ
	 *  19:ビター
	 *  20:ラブソング
	 *  21:アメージング（レベル１０）
	 *  22:クラップ
	 *  23:コーラス
	 *  24:ソニックヴォイス
	 *  25:ダル
	 *  26:ダンス
	 *  27:フォール
	 *  28:マーチ
	 *  29:リダクション
	 *  30:レイジィ
	 */
	public String Song01;
	public String Song02;
	public String Song03;
	public String Song04;
	public String Song05;
	public String Song06;
	public String Song07;
	public String Song08;
	public String Song09;
	public String Song10;
	public String Song11;
	public String Song12;
	public String Song13;
	public String Song14;
	public String Song15;
	public String Song16;
	public String Song17;
	public String Song18;
	public String Song19;
	public String Song20;
	public String Song21;
	public String Song22;
	public String Song23;
	public String Song24;
	public String Song25;
	public String Song26;
	public String Song27;
	public String Song28;
	public String Song29;
	public String Song30;

	/*
	 *  騎芸
	 *
	 *  01:大型制御
	 *  02:騎獣回避
	 *  03:騎獣の献身
	 *  04:攻撃指令
	 *  05:水中騎乗
	 *  06:探索指令
	 *  07:タンデム
	 *  08:チャージ
	 *  09:特殊攻撃指令
	 *  10:振り下ろし
	 *  11:遠隔指示（ここからレベル５）
	 *  12:騎獣回避Ⅱ
	 *  13:空中騎乗
	 *  14:人馬一体
	 *  15:トランプル
	 *  16:振り下ろしⅡ
	 *  17:呼び笛
	 *  18:威圧（ここからレベル１０）
	 *  19:騎乗指揮
	 *  20:スーパーチャージ
	 *  21:縦横無尽
	 *  22:八面六臂
	 *  23:バランス
	 *  24:振り下ろしⅢ
	*/
	public String Rider01;
	public String Rider02;
	public String Rider03;
	public String Rider04;
	public String Rider05;
	public String Rider06;
	public String Rider07;
	public String Rider08;
	public String Rider09;
	public String Rider10;
	public String Rider11;
	public String Rider12;
	public String Rider13;
	public String Rider14;
	public String Rider15;
	public String Rider16;
	public String Rider17;
	public String Rider18;
	public String Rider19;
	public String Rider20;
	public String Rider21;
	public String Rider22;
	public String Rider23;
	public String Rider24;


	/*
	 * 言語区分
	 *
	 * 01：交易共通語
	 * 02：汎用蛮族語
	 * 03：魔法文明語
	 * 04：魔動機文明語
	 * 05：エルフ語
	 * 06：ドワーフ語
	 * 07：シャドウ語
	 * 08：神紀文明語
	 * 09：妖精語
	 * 10：巨人語
	 * 11：ドラゴン語
	 * 12：ドレイク語
	 * 13：魔神語
	 * 14：妖魔語
	 * 15：その他
	 *
	 */
	public String lang01Re;
	public String lang01Wr;
	public String lang02Re;
	public String lang02Wr;
	public String lang03Re;
	public String lang03Wr;
	public String lang04Re;
	public String lang04Wr;
	public String lang05Re;
	public String lang05Wr;
	public String lang06Re;
	public String lang06Wr;
	public String lang07Re;
	public String lang07Wr;
	public String lang08Re;
	public String lang08Wr;
	public String lang09Re;
	public String lang09Wr;
	public String lang10Re;
	public String lang10Wr;
	public String lang11Re;
	public String lang11Wr;
	public String lang12Re;
	public String lang12Wr;
	public String lang13Re;
	public String lang13Wr;
	public String lang14Re;
	public String lang14Wr;
	public String lang15Re;
	public String lang15Wr;

	// 武器
	public String wp1name;
	public String wp1hands;
	public String wp1needstr;
	public String wp1hitcorrect;
	public String wp1hit;
	public String wp1power;
	public String wp1critical;
	public String wp1chasedamage;
	public String wp1memo;
	public String wp2name;
	public String wp2hands;
	public String wp2needstr;
	public String wp2hitcorrect;
	public String wp2hit;
	public String wp2power;
	public String wp2critical;
	public String wp2chasedamage;
	public String wp2memo;
	public String wp3name;
	public String wp3hands;
	public String wp3needstr;
	public String wp3hitcorrect;
	public String wp3hit;
	public String wp3power;
	public String wp3critical;
	public String wp3chasedamage;
	public String wp3memo;

	// 防具
	public String armorName;
	public String armorStr;
	public String armorAvoid;
	public String armorDef;
	public String shieldName;
	public String shieldStr;
	public String shieldAvoid;
	public String shieldDef;
	public String totalDef;
	public String totalAvoid;

	// 装飾品
	public String accHeadName;
	public String accEarName;
	public String accFaceName;
	public String accNeckName;
	public String accBackName;
	public String accRHandName;
	public String accLHandName;
	public String accHipName;
	public String accFootName;
	public String accOtherName;
	public String accHeadNote;
	public String accEarNote;
	public String accFaceNote;
	public String accNeckNote;
	public String accBackNote;
	public String accRHandNote;
	public String accLHandNote;
	public String accHipNote;
	public String accFootNote;
	public String accOtherNote;

	// その他
	public String currentHonor;
	public String maxHonor;
	public String exp;
	public String totalExp;
	public String otherItems;
	public String money;
	public String memo;

}
