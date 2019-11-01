package com.beshop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.Be_ChargePointVo;
import com.beshop.vo.Be_PayPointVo;
import com.beshop.vo.Be_PointBalanceVo;

@Repository
public class Be_PointDao {
	public List<Be_ChargePointVo> plusPointList(String beuid)
	{
		return DBManager.plusPointList(beuid);
	}
	public List<Be_PayPointVo> minusPointList(String beuid)
	{
		return DBManager.minusPointList(beuid);
	}
	
	public Be_PointBalanceVo getPointBalance(String beuid)
	{
		return DBManager.pointBalance(beuid);
	}
	
	public int charge(Be_ChargePointVo p)
	{
		//System.out.println("동작dao");
		return DBManager.chargePoint(p);
	}
	public int pay(Be_PayPointVo p)
	{
		return DBManager.payPoint(p);
	}
}
