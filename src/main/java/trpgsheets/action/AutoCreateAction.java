package trpgsheets.action;

import java.util.List;
import java.util.Random;

import javax.annotation.Resource;

import org.seasar.extension.jdbc.JdbcManager;
import org.seasar.framework.beans.util.Beans;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import trpgsheets.entity.CharacterSheet;
import trpgsheets.entity.RaceHistoryMaster;
import trpgsheets.form.AutoCreateForm;

public class AutoCreateAction {


	@ActionForm
	public AutoCreateForm autoCreateForm;

	@Resource
	public JdbcManager jdbcManager;

	public List<RaceHistoryMaster> rhmList;
	public RaceHistoryMaster rhm;
	public int race;
	public int history;

	@Execute(validator = false)
	public String showSelectRace(){
		return "selectRace.jsp";
	}

	@Execute(validator = false)
	public String showSelectHistory(){
		rhmList = jdbcManager.from(RaceHistoryMaster.class)
				.where("race = ?", autoCreateForm.race)
				.getResultList();
		race = autoCreateForm.race;
		return "selectHistory.jsp";
	}

	@Execute(validator = false)
    public String rollDice(){
		rhm = jdbcManager.from(RaceHistoryMaster.class)
				.where("race = ? and history = ?", autoCreateForm.race, autoCreateForm.history )
				.getSingleResult();

		 Random rnd = new Random();

        // A
        autoCreateForm.dispStaD1 = rnd.nextInt(6) + 1;
        autoCreateForm.sta = autoCreateForm.dispStaD1;
        if(rhm.race == 1 || rhm.race == 2 || rhm.race == 3 || rhm.race == 5 || rhm.race == 6 || rhm.race == 9){
        	// 人間、エルフ、ドワーフ、ルンフォ、ナイトメアは2ダイス目。
        	autoCreateForm.dispStaD2 = rnd.nextInt(6) + 1;
        	autoCreateForm.sta = autoCreateForm.sta + autoCreateForm.dispStaD2;
        	if(rhm.race == 3){
        		// ドワーフは固定で+6
        		autoCreateForm.sta = autoCreateForm.sta + 6;
        	}
        }

        // B
        autoCreateForm.dispStbD1 = rnd.nextInt(6) + 1;
        autoCreateForm.stb = autoCreateForm.dispStbD1;
        if(rhm.race == 1 || rhm.race == 2 || rhm.race == 6 || rhm.race == 8 || rhm.race == 9){
        	autoCreateForm.dispStbD2 = rnd.nextInt(6) + 1;
            autoCreateForm.stb = autoCreateForm.stb + autoCreateForm.dispStbD2;
        }

        // C
        autoCreateForm.dispStcD1 = rnd.nextInt(6) + 1;
        autoCreateForm.stc = autoCreateForm.dispStcD1;
        if(rhm.race == 1 || rhm.race == 3 || rhm.race == 5 || rhm.race == 7 || rhm.race == 8){
        	autoCreateForm.dispStcD2 = rnd.nextInt(6) + 1;
            autoCreateForm.stc = autoCreateForm.stc + autoCreateForm.dispStcD2;
        }

        // D
        autoCreateForm.dispStdD1 = rnd.nextInt(6) + 1;
        autoCreateForm.std = autoCreateForm.dispStdD1;
        if(rhm.race != 6){
        	autoCreateForm.dispStdD2 = rnd.nextInt(6) + 1;
            autoCreateForm.std = autoCreateForm.std + autoCreateForm.dispStdD2;
        	if(rhm.race == 8 || rhm.race == 9){
        		autoCreateForm.std = autoCreateForm.std + 6;
        	}
        }

        // E
        autoCreateForm.dispSteD1 = rnd.nextInt(6) + 1;
        autoCreateForm.ste = autoCreateForm.dispSteD1;
        if(rhm.race != 3 && rhm.race != 8 && rhm.race != 9){
        	autoCreateForm.dispSteD2 = rnd.nextInt(6) + 1;
            autoCreateForm.ste = autoCreateForm.ste + autoCreateForm.dispSteD2;
        	if(rhm.race == 4){
        		autoCreateForm.ste = autoCreateForm.ste + 6;
        	}
        }

        // F
        autoCreateForm.dispStfD1 = rnd.nextInt(6) + 1;
        autoCreateForm.stf = autoCreateForm.dispStfD1;
        if(rhm.race != 5){
        	autoCreateForm.dispStfD2 = rnd.nextInt(6) + 1;
            autoCreateForm.stf = autoCreateForm.stf + autoCreateForm.dispStfD2;
        	if(rhm.race == 3 || rhm.race == 9){
        		autoCreateForm.stf = autoCreateForm.stf + 6;
        	}
        }

        race = autoCreateForm.race;
        history = autoCreateForm.history;

        autoCreateForm.dex = rhm.rtech + autoCreateForm.sta;
        autoCreateForm.agi = rhm.rtech + autoCreateForm.stb;
        autoCreateForm.str = rhm.rvit + autoCreateForm.stc;
        autoCreateForm.vit = rhm.rvit + autoCreateForm.std;
        autoCreateForm.itl = rhm.rmen + autoCreateForm.ste;
        autoCreateForm.men = rhm.rmen + autoCreateForm.stf;

        autoCreateForm.bonusDex = autoCreateForm.dex / 6;
        autoCreateForm.bonusAgi = autoCreateForm.agi / 6;
        autoCreateForm.bonusStr = autoCreateForm.str / 6;
        autoCreateForm.bonusVit = autoCreateForm.vit / 6;
        autoCreateForm.bonusItl = autoCreateForm.itl / 6;
        autoCreateForm.bonusMen = autoCreateForm.men / 6;

    	return "confirm.jsp";
    }

	@Execute(validator = false)
	public String registSheet(){
		rhm = jdbcManager.from(RaceHistoryMaster.class)
				.where("race = ? and history = ?", autoCreateForm.race, autoCreateForm.history )
				.getSingleResult();

		CharacterSheet cs = new CharacterSheet();

		Beans.copy(rhm, cs).execute();
		Beans.copy(autoCreateForm, cs).execute();
		cs.race = rhm.raceName;
		cs.history = rhm.historyName;
		cs.sta = String.valueOf(autoCreateForm.sta);
		cs.stb = String.valueOf(autoCreateForm.stb);
		cs.stc = String.valueOf(autoCreateForm.stc);
		cs.std = String.valueOf(autoCreateForm.std);
		cs.ste = String.valueOf(autoCreateForm.ste);
		cs.stf = String.valueOf(autoCreateForm.stf);

		jdbcManager.updateBySqlFile("data/insertAutoCS.sql", cs).execute();

		// 登録後、編集画面に遷移
		int characterId = jdbcManager.selectBySql(Integer.class, "select max(character_id) from character_sheet")
				.getSingleResult();

		return "/create/edit/" + characterId;
	}
}
