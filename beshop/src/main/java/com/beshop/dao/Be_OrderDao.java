package com.beshop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.Be_OrderDeliveryVo;
@Repository
public class Be_OrderDao {
	public List<Be_OrderDeliveryVo> orderList(String beuid)
	{
		return DBManager.orderList(beuid);
	}
	
	public Be_OrderDeliveryVo orderDetail(String beuid, int onum)
	{
		return DBManager.orderDetail(beuid, onum);
	}
}
