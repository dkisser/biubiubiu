package biubiubiu2.db.dao;

import java.util.List;

import biubiubiu2.db.pojo.Users;

/** * @author  wenchen 
 * @date 创建时间：2016年7月27日 下午5:56:30 
 * @version 1.0 
 * @parameter */
public interface UsersMapper {
	public List<Users> findAllUsers() throws Exception;
	
	public void deleteOneUserById(Integer id) throws Exception;
	
	public void updateOneUser(Users user) throws Exception;
	
	public Users findOneUserById(Integer id) throws Exception;
	
	public void insertOneUser(Users user) throws Exception;
	
	public List<Users> findOneUserByName(Users user) throws Exception;
}
