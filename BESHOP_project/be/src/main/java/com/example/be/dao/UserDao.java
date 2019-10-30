package com.example.be.dao;

import org.springframework.stereotype.Repository;

import com.example.be.db.DBManager;
import com.example.be.vo.UserVo;
@Repository
public class UserDao {

	
	public int insert(UserVo v)
	{
		return DBManager.insert(v);
	}
}
