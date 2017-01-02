package biubiubiu2.service;

import java.util.List;

import biubiubiu2.db.pojo.UsersRange;
import biubiubiu2.db.pojo.Vipers;

/** * @author  wenchen 
 * @date 创建时间：2016年7月28日 下午12:26:39 
 * @version 1.0 
 * @parameter */
public interface VipersService {
	public List<Vipers> findAllVipers() throws Exception;
	public List<UsersRange> findUsersByVipersRange (Integer range) throws Exception;
}
