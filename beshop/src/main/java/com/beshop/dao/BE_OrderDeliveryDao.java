package com.beshop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_OrderDeliveryVo;
import com.beshop.vo.BE_OrderPurchaseVo;
import com.beshop.vo.BE_UserVo;


@Repository
public class BE_OrderDeliveryDao {

	
	public BE_OrderPurchaseVo listod(int onum) {
		System.out.println("db ok");
		return DBManager.listOrderdelivery(onum);
		
	}
	
	public List<BE_OrderDeliveryVo> orderList(String beuid)
	{
		return DBManager.orderList(beuid);
	}
	
	public BE_OrderDeliveryVo orderDetail(String beuid, int onum)
	{
		return DBManager.orderDetail(beuid, onum);
	}
	public int insertOrderdelivery(BE_OrderDeliveryVo od)
	{
		System.out.println("db ok");
		return DBManager.insertODPay(od);
	}

}
