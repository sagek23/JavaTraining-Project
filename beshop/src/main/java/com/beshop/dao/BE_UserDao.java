package com.beshop.dao;

import java.util.HashMap;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_UserVo;
@Repository
public class BE_UserDao {
	public String searchID(HashMap map) {
		//return DBManager.searchId(uname, email);
		return DBManager.searchId(map);
	}

	public int updatePwd(HashMap map) {
		// TODO Auto-generated method stub
		return DBManager.updatePwd(map);
	}

	public BE_UserVo getName(HashMap map) {
		// TODO Auto-generated method stub
		System.out.println(DBManager.getName(map));
		return DBManager.getName(map);
	}

	public int newPwd(String beuid, String keyCode) {
		// TODO Auto-generated method stub
		return DBManager.newPwd(beuid, keyCode);
	}

	public int deleteUser(HashMap map) {
		// TODO Auto-generated method stub
		return DBManager.deleteUser(map);
	}

	public int insert(BE_UserVo v) {
		// TODO Auto-generated method stub
		return DBManager.insert(v);
	}
}