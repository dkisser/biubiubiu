package biubiubiu2.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import biubiubiu2.db.dao.EditorsMapper;
import biubiubiu2.db.pojo.Editors;

/** 
 * * @author  wenchen 
 * @date 创建时间：2016年8月17日 下午8:55:57 
 * @version 1.0 
 * @parameter 
 * Editors的业务层
 * */
@Service("editorsService")
public class EditorsService {
	@Autowired
	private EditorsMapper editorsMapper;
	
	public List<Editors> getAllEditors () throws Exception {
		
		return editorsMapper.findAllEditors();
	}
 	
}
