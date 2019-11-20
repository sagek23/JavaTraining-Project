package com.beshop.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;
import com.beshop.db.DBManager;
import com.beshop.vo.Be_QnaVo;

@Repository
public class Be_QnaDao {

	public Be_QnaVo getQna(int qnanum) {
		return DBManager.selectQna(qnanum);
	}
	
	public int getCountQna(HashMap map) {
		return DBManager.getCountQna(map);
	}

	public List<Be_QnaVo> listQna(HashMap map) {
		return DBManager.listAllQna(map);
	}
	public int insertQna(Be_QnaVo qvo) {
		return DBManager.insertQna(qvo);
	}
}
