package trpgsheets.service;

import org.seasar.extension.jdbc.JdbcManager;

import trpgsheets.entity.CharacterSheet;

public class CharacterSheetService {

	JdbcManager jdbcmanager;

	public int insertCharacterSheet(CharacterSheet cs){
		int count;
		count = jdbcmanager.updateBySqlFile("data/insertCS.sql", cs).execute();

		return count;
	}
}
