package com.beshop.dao;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.beshop.db.DBManager;
import com.beshop.vo.Be_NoticeVo;

@Repository
public class Be_NoticeDao {

	public int deleteNotice(int noticenum) {
		return DBManager.deleteNotice(noticenum);
	}
	
	public int updateNotice(Be_NoticeVo nvo) {
		return DBManager.updateNotice(nvo);
	}
	
	public int getCountNotice(HashMap map) {
		return DBManager.getCountNotice(map);
		}
	
	public int insert(Be_NoticeVo nvo) {
		return DBManager.insertNotice(nvo);
	}
	
	public List<Be_NoticeVo> listNotice(HashMap map) {
		return DBManager.listAllNotice(map);
	}
	

	public Be_NoticeVo getNotice(int noticeNum) {
		return DBManager.selectNotice(noticeNum);
	}
}
