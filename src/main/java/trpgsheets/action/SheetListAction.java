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

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.seasar.extension.jdbc.JdbcManager;
import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import trpgsheets.entity.CharacterSheet;
import trpgsheets.entity.JobClass;
import trpgsheets.form.SheetListForm;

public class SheetListAction {

	@Resource
	public JdbcManager jdbcManager;

	@ActionForm
	public SheetListForm sheetListForm;

	public List<CharacterSheet> csList;

	public CharacterSheet cs;

	List<JobClass> jcList = new ArrayList<JobClass>();


	// 打撃点
	public int damage = 0;
	// 命中
	public int hit = 0;
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

    @Execute(validator = false, urlPattern="showSheet/{characterId}")
    public String showSheet(){
    	cs = jdbcManager.from(CharacterSheet.class)
    			.where("characterId = ?", sheetListForm.characterId)
    			.getSingleResult();

    	setJobList();

    	for(int i = 0; i < jcList.size(); i++){
			// 打撃基本ボーナス計算
			switch (jcList.get(i).classId){
				case 1:
						damage = Math.max(damage, jcList.get(i).classLevel);
					break;
				case 2:
						damage = Math.max(damage, jcList.get(i).classLevel);
					break;
	    		case 3:
						damage = Math.max(damage, jcList.get(i).classLevel);
					break;
	    		case 4:
						damage = Math.max(damage, jcList.get(i).classLevel);
					break;
			}

			// 命中基本ボーナス計算
			switch (jcList.get(i).classId){
				case 1:
					hit = Math.max(hit, jcList.get(i).classLevel);
					break;
				case 2:
					hit = Math.max(hit, jcList.get(i).classLevel);
					break;
	    		case 3:
					hit = Math.max(hit, jcList.get(i).classLevel);
					break;
	    		case 4:
					hit = Math.max(hit, jcList.get(i).classLevel);
					break;
			}

	    	// 魔物知識 12
			if(jcList.get(i).classId == 12){
				knowledge = jcList.get(i).classLevel + Integer.parseInt(cs.bonusItl);
			}

	    	// 先制 10
			if(jcList.get(i).classId == 10){
				first = jcList.get(i).classLevel + Integer.parseInt(cs.bonusAgi);
			}
    	}

    	if(!cs.bonusStr.equals(null)){
    		damage = damage + Integer.parseInt(cs.bonusStr);
    	}
    	if(!cs.bonusDex.equals(null)){
    		hit = hit + Integer.parseInt(cs.bonusDex);
    	}


    	return "sheet.jsp";
    }

    public void setJobList(){
    	JobClass jc1 = new JobClass();
    	JobClass jc2 = new JobClass();
    	JobClass jc3 = new JobClass();
    	JobClass jc4 = new JobClass();
    	JobClass jc5 = new JobClass();
    	JobClass jc6 = new JobClass();

    	if(cs.class1 != null && !(cs.class1.equals(""))){
    		jc1.classId = Integer.parseInt(cs.class1);
    		jc1.classLevel = Integer.parseInt(cs.c1level);
    		jcList.add(jc1);
    	}
    	if(cs.class2 != null && !(cs.class2.equals(""))){
			jc2.classId = Integer.parseInt(cs.class2);
			jc2.classLevel = Integer.parseInt(cs.c2level);
			jcList.add(jc2);
    	}
    	if(cs.class3 != null && !(cs.class3.equals(""))){
	    	jc3.classId = Integer.parseInt(cs.class3);
	    	jc3.classLevel = Integer.parseInt(cs.c3level);
	    	jcList.add(jc3);
    	}
    	if(cs.class4 != null && !(cs.class4.equals(""))){
	    	jc4.classId = Integer.parseInt(cs.class4);
	    	jc4.classLevel = Integer.parseInt(cs.c4level);
	    	jcList.add(jc4);
    	}
    	if(cs.class5 != null && !(cs.class5.equals(""))){
	    	jc5.classId = Integer.parseInt(cs.class5);
	    	jc5.classLevel = Integer.parseInt(cs.c5level);
	    	jcList.add(jc5);
    	}
    	if(cs.class6 != null && !(cs.class6.equals(""))){
	    	jc6.classId = Integer.parseInt(cs.class6);
	    	jc6.classLevel = Integer.parseInt(cs.c6level);
	    	jcList.add(jc6);
    	}
    }
}
