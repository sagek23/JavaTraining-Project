package com.beshop.dao;


import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.Be_RankingVo;

@Repository
public class Be_RankingDao {

	public List<Be_RankingVo> selectRanking() {
		return DBManager.selectRanking();
	}
	
	public List<Be_RankingVo> listRanking() {
		return DBManager.listRanking();
	}
	
	
//	public List<Be_RankingVo> listRanking(HashMap map) {
//		return DBManager.listAllRanking(map);
//	}
}
