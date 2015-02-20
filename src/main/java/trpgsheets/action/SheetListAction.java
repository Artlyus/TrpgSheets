/*
 * Copyright 2004-2008 the Seasar Foundation and the Others.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND,
 * either express or implied. See the License for the specific language
 * governing permissions and limitations under the License.
 */
package trpgsheets.action;

import java.util.List;

import javax.annotation.Resource;

import org.seasar.extension.jdbc.JdbcManager;
import org.seasar.struts.annotation.Execute;

import trpgsheets.entity.CharacterSheet;

public class SheetListAction {

	@Resource
	public JdbcManager jdbcManager;

	public List<CharacterSheet> csList;

	public CharacterSheet cs;

	// 打撃点
	public int damage;
	// 命中
	public int hit;
	// 魔物知識
	public int knowledge;
	// 先制
	public int first;

    @Execute(validator = false)
	public String index() {
    	csList = jdbcManager.from(CharacterSheet.class)
    			.orderBy("characterId")
    			.getResultList();

        return "list.jsp";
	}

    @Execute(validator = false)
    public String showSheet(){
    	int characterId = 2;
    	cs = jdbcManager.from(CharacterSheet.class)
    			.where("characterId = ?", characterId)
    			.getSingleResult();

    	// 打撃基本ボーナス計算
    	damage = 7 + Integer.parseInt(cs.bonusStr);

    	// 命中基本ボーナス計算
    	hit = 7 + Integer.parseInt(cs.bonusDex);

    	// 魔物知識
    	knowledge = 0 + Integer.parseInt(cs.bonusItl);

    	// 先制
    	first = 5 + Integer.parseInt(cs.bonusAgi);

    	return "sheet.jsp";
    }
}
