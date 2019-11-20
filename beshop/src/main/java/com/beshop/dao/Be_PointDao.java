package com.beshop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_ChargePointVo;
import com.beshop.vo.BE_PayPointVo;
import com.beshop.vo.BE_PointBalanceVo;

@Repository
public class BE_PointDao {
	public List<BE_ChargePointVo> plusPointList(String beuid)
	{
		return DBManager.plusPointList(beuid);
	}
	public List<BE_PayPointVo> minusPointList(String beuid)
	{
		return DBManager.minusPointList(beuid);
	}
	
	public BE_PointBalanceVo getPointBalance(String beuid)
	{
		return DBManager.pointBalance(beuid);
	}
	
	public int charge(BE_ChargePointVo p)
	{
		//System.out.println("동작dao");
		return DBManager.chargePoint(p);
	}
	public int pay(BE_PayPointVo p)
	{
		return DBManager.payPoint(p);
	}
}