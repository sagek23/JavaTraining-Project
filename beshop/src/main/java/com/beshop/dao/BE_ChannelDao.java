package com.beshop.dao;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.BE_ChannelVo;

@Repository
public class BE_ChannelDao {

	public BE_ChannelVo getChannel(String beuid) {
		// TODO Auto-generated method stub
		return DBManager.getChannel(beuid);
	}

}
