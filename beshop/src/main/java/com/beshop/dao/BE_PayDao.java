package com.beshop.dao;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_PayVo;

@Repository
public class BE_PayDao {

		public int insertpay(BE_PayVo p) {
			return DBManager.insertPay(p);
		}
	}
		
