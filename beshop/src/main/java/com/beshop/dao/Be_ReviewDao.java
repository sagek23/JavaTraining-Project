package com.beshop.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;

import com.beshop.vo.Be_ReviewVo;
@Repository
public class Be_ReviewDao {
	public List<Be_ReviewVo> reviewList(int pnum)
	{
		System.out.println("리뷰 리스트");
		return DBManager.reviewList(pnum);
	}
	
	public int insertReview(Be_ReviewVo r) {
		System.out.println("리뷰dao");
		return DBManager.insertReview(r);
	}
}
