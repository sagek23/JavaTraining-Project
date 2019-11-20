package com.beshop.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_AuctionListVo;
import com.beshop.vo.BE_ChannelVo;
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

	public BE_UserVo getUser(String beuid) {
		// TODO Auto-generated method stub
		return DBManager.getUser(beuid);
	}

	public BE_UserVo snsCheck(String snsid) {
		// TODO Auto-generated method stub
		return DBManager.snsIdCheck(snsid);
	}

	public BE_UserVo getSnsName(String snsid) {
		// TODO Auto-generated method stub
		return DBManager.snsIdCheck(snsid);
	}

	public int insertChannel(BE_UserVo v) {
		// TODO Auto-generated method stub
		return DBManager.insertChannel(v);
	}

	public BE_ChannelVo getChannel(String beuid) {
		// TODO Auto-generated method stub
		return DBManager.getChannel(beuid);
	}

	public int updateChannel(BE_ChannelVo vo) {
		// TODO Auto-generated method stub
		return DBManager.updateChannel(vo);
	}

	public List<BE_AuctionListVo> getAuctionList(String beuid) {
		// TODO Auto-generated method stub
		return DBManager.getAuctionList(beuid);
	}
}
