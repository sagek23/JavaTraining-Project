package com.beshop.dao;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_ProductVo;

@Repository
public class BE_ProductDao {
	
	public int insertProduct(BE_ProductVo po) {
		return DBManager.insert(po);
	}
}
