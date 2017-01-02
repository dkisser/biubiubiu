package biubiubiu2.service;

import java.util.List;

import biubiubiu2.db.pojo.Users;

/** * @author  wenchen 
 * @date 创建时间：2016年7月28日 下午12:26:29 
 * @version 1.0 
 * @parameter */
public interface UsersService {
	public List<Users> findAllUsers() throws Exception;
	
	public void deleteOneUserById(Integer id) throws Exception;
	
	public void updateOneUser(Users user) throws Exception;
	
	public Users findOneUserById(Integer id) throws Exception;
	
	public void insertOneUser(Users user) throws Exception;
	
	public Users doLogin(Users user) throws Exception;
}
