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
	public boolean Skill01;
	public boolean Skill02;
	public boolean Skill03;
	public boolean Skill04;
	public boolean Skill05;
	public boolean Skill06;
	public boolean Skill07;
	public boolean Skill08;
	public boolean Skill09;
	public boolean Skill10;
	public boolean Skill11;
	public boolean Skill12;
	public boolean Skill13;
	public boolean Skill14;
	public boolean Skill15;
	public boolean Skill16;
	public boolean Skill17;
	public boolean Skill18;
	public boolean Skill19;
	public boolean Skill20;
	public boolean Skill21;
	public boolean Skill22;
	public boolean Skill23;
	public boolean Skill24;
	public boolean Skill25;
	public boolean Skill26;
	public boolean Skill27;
	public boolean Skill28;
	public boolean Skill29;
	public boolean Skill30;
	public boolean Skill31;
	public boolean Skill32;
	public boolean Skill33;
	public boolean Skill34;
	public boolean Skill35;
	public boolean Skill36;
	public boolean Skill37;
	public boolean Skill38;
	public boolean Skill39;
	public boolean Skill40;
	public boolean Skill41;
	public boolean Skill42;
	public boolean Skill43;
	public boolean Skill44;
	public boolean Skill45;
	public boolean Skill46;
	public boolean Skill47;
	public boolean Skill48;
	public boolean Skill49;
	public boolean Skill50;
	public boolean Skill51;
	public boolean Skill52;
	public boolean Skill53;
	public boolean Skill54;
	public boolean Skill55;
	public boolean Skill56;
	public boolean Skill57;
	public boolean Skill58;
	public boolean Skill59;
	public boolean Skill60;
	public boolean Skill61;
	public boolean Skill62;
	public boolean Skill63;
	public boolean Skill64;
	public boolean Skill65;
	public boolean Skill66;
	public boolean Skill67;
	public boolean Skill68;
	public boolean Skill69;
	public boolean Skill70;
	public boolean Skill71;
	public boolean Skill72;
	public boolean Skill73;
	public boolean Skill74;
	public boolean Skill75;
	public boolean Skill76;
	public boolean Skill77;

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
	public boolean Enhance01;
	public boolean Enhance02;
	public boolean Enhance03;
	public boolean Enhance04;
	public boolean Enhance05;
	public boolean Enhance06;
	public boolean Enhance07;
	public boolean Enhance08;
	public boolean Enhance09;
	public boolean Enhance10;
	public boolean Enhance11;
	public boolean Enhance12;
	public boolean Enhance13;
	public boolean Enhance14;
	public boolean Enhance15;
	public boolean Enhance16;
	public boolean Enhance17;
	public boolean Enhance18;
	public boolean Enhance19;
	public boolean Enhance20;
	public boolean Enhance21;
	public boolean Enhance22;
	public boolean Enhance23;
	public boolean Enhance24;
	public boolean Enhance25;
	public boolean Enhance26;
	public boolean Enhance27;
	public boolean Enhance28;
	public boolean Enhance29;
	public boolean Enhance30;

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
	public boolean Song01;
	public boolean Song02;
	public boolean Song03;
	public boolean Song04;
	public boolean Song05;
	public boolean Song06;
	public boolean Song07;
	public boolean Song08;
	public boolean Song09;
	public boolean Song10;
	public boolean Song11;
	public boolean Song12;
	public boolean Song13;
	public boolean Song14;
	public boolean Song15;
	public boolean Song16;
	public boolean Song17;
	public boolean Song18;
	public boolean Song19;
	public boolean Song20;
	public boolean Song21;
	public boolean Song22;
	public boolean Song23;
	public boolean Song24;
	public boolean Song25;
	public boolean Song26;
	public boolean Song27;
	public boolean Song28;
	public boolean Song29;
	public boolean Song30;

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
	public boolean Rider01;
	public boolean Rider02;
	public boolean Rider03;
	public boolean Rider04;
	public boolean Rider05;
	public boolean Rider06;
	public boolean Rider07;
	public boolean Rider08;
	public boolean Rider09;
	public boolean Rider10;
	public boolean Rider11;
	public boolean Rider12;
	public boolean Rider13;
	public boolean Rider14;
	public boolean Rider15;
	public boolean Rider16;
	public boolean Rider17;
	public boolean Rider18;
	public boolean Rider19;
	public boolean Rider20;
	public boolean Rider21;
	public boolean Rider22;
	public boolean Rider23;
	public boolean Rider24;


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
	public boolean lang01Re;
	public boolean lang01Wr;
	public boolean lang02Re;
	public boolean lang02Wr;
	public boolean lang03Re;
	public boolean lang03Wr;
	public boolean lang04Re;
	public boolean lang04Wr;
	public boolean lang05Re;
	public boolean lang05Wr;
	public boolean lang06Re;
	public boolean lang06Wr;
	public boolean lang07Re;
	public boolean lang07Wr;
	public boolean lang08Re;
	public boolean lang08Wr;
	public boolean lang09Re;
	public boolean lang09Wr;
	public boolean lang10Re;
	public boolean lang10Wr;
	public boolean lang11Re;
	public boolean lang11Wr;
	public boolean lang12Re;
	public boolean lang12Wr;
	public boolean lang13Re;
	public boolean lang13Wr;
	public boolean lang14Re;
	public boolean lang14Wr;
	public boolean lang15Re;
	public boolean lang15Wr;

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
