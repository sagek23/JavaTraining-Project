package com.beshop.vo;

import java.sql.Date;

public class Be_NoticeVo {
	private int noticenum;
	private String notice_ca;
	private Date noticedate;
	private String notice_con;
	private String notice_name;
	public int getNoticenum() {
		return noticenum;
	}
	public void setNoticenum(int noticenum) {
		this.noticenum = noticenum;
	}
	public String getNotice_ca() {
		return notice_ca;
	}
	public void setNotice_ca(String notice_ca) {
		this.notice_ca = notice_ca;
	}
	public Date getNoticedate() {
		return noticedate;
	}
	public void setNoticedate(Date noticedate) {
		this.noticedate = noticedate;
	}
	public String getNotice_con() {
		return notice_con;
	}
	public void setNotice_con(String notice_con) {
		this.notice_con = notice_con;
	}
	public String getNotice_name() {
		return notice_name;
	}
	public void setNotice_name(String notice_name) {
		this.notice_name = notice_name;
	}
	public Be_NoticeVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Be_NoticeVo(int noticenum, String notice_ca, Date noticedate, String notice_con, String notice_name) {
		super();
		this.noticenum = noticenum;
		this.notice_ca = notice_ca;
		this.noticedate = noticedate;
		this.notice_con = notice_con;
		this.notice_name = notice_name;
	}
	@Override
	public String toString() {
		return "Be_NoticeVo [noticenum=" + noticenum + ", notice_ca=" + notice_ca + ", noticedate=" + noticedate
				+ ", notice_con=" + notice_con + ", notice_name=" + notice_name + "]";
	}
	
	
	
}
