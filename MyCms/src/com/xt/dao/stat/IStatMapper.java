package com.xt.dao.stat;
import java.util.List;
import com.xt.bean.Stat;
import com.xt.bean.XtParmas;

/**
 * 
 * 后台日志信息管理
 * IStatMapper
 * 创建人:肖腾
 * 时间：2016-01-14 05-49-21
 * @version 1.0.0
 *
 */
public interface IStatMapper {

	public List<Stat> findStat(XtParmas parmas);
	
	public int save(Stat stat);
	

}
