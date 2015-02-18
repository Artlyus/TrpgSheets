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

import javax.annotation.Resource;

import org.seasar.extension.jdbc.JdbcManager;
import org.seasar.framework.beans.util.Beans;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import trpgsheets.entity.CharacterSheet;
import trpgsheets.form.CreateForm;
import trpgsheets.service.CharacterSheetService;

public class CreateAction {

	@Resource
	public CharacterSheetService characterSheetService;

	@ActionForm
	public CreateForm createForm;

	@Resource
	public JdbcManager jdbcManager;

	public CharacterSheet cs;

    @Execute(validator = false)
	public String index() {
        return "create.jsp";
	}

    @Execute(validator = false)
    public String doCreate(){
    	CharacterSheet characterSheet = new CharacterSheet();
    	Beans.copy(createForm, characterSheet).execute();

    	jdbcManager.updateBySqlFile("data/insertCS.sql", characterSheet).execute();

    	return "complete?redirect=true";
    }

    @Execute(validator = false, urlPattern="edit/{characterId}")
    public String edit(){
    	cs = jdbcManager.from(CharacterSheet.class)
        		.where("characterId = ?", createForm.characterId)
    			.getSingleResult();

    	Beans.copy(cs, createForm).execute();
    	//createForm.Skill01 = true;

    	return "edit.jsp";
    }

    @Execute(validator = false)
    public String complete(){
    	return "complete.jsp";
    }
}
