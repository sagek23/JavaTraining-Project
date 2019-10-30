package com.bit.myBeShop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.bit.myBeShop.db.DBManager;
import com.bit.myBeShop.vo.ChargePointVo;
import com.bit.myBeShop.vo.PayPointVo;
import com.bit.myBeShop.vo.PointBalanceVo;

@Repository
public class PointDao {
	public List<ChargePointVo> plusPointList(String beuid)
	{
		return DBManager.plusPointList(beuid);
	}
	public List<PayPointVo> minusPointList(String beuid)
	{
		return DBManager.minusPointList(beuid);
	}
	
	public PointBalanceVo getPointBalance(String beuid)
	{
		return DBManager.pointBalance(beuid);
	}
	
	public int charge(ChargePointVo p)
	{
		//System.out.println("동작dao");
		return DBManager.chargePoint(p);
	}
	public int pay(PayPointVo p)
	{
		return DBManager.payPoint(p);
	}
}
