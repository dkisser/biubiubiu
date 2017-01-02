package biubiubiu2.db.dao;

import java.util.List;

import biubiubiu2.db.pojo.UsersRange;
import biubiubiu2.db.pojo.Vipers;

/** * @author  wenchen 
 * @date 创建时间：2016年7月27日 下午5:56:30 
 * @version 1.0 
 * @parameter */
public interface VipersMapper {
	public List<Vipers> findAllVipers() throws Exception;

	public List<UsersRange> findUsersByVipersRange (Integer range) throws Exception;
}
