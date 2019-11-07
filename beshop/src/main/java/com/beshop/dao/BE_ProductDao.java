package com.beshop.dao;

import java.util.ArrayList;
import java.util.Date;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_AuctionVo;
import com.beshop.vo.BE_ProductVo;

@Repository
public class BE_ProductDao {
	
	public int insertProduct(BE_ProductVo po) {
		return DBManager.insert(po);
	}
	
	public BE_AuctionVo nowAuction() {
		return DBManager.nowAuction();
	}
	
	public int insertAuction(BE_AuctionVo ao) {
		return DBManager.insertAuction(ao);
	}
	
	public BE_ProductVo getTime(BE_ProductVo pvo) {
		return DBManager.getTime(pvo);
	}
}
