package com.beshop.vo;

import java.util.Date;

public class BE_PayPointVo {
	int paynum;
	String beuid;
	Date paydate;
	int paylist;
	public int getPaynum() {
		return paynum;
	}
	public void setPaynum(int paynum) {
		this.paynum = paynum;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public int getPaylist() {
		return paylist;
	}
	public void setPaylist(int paylist) {
		this.paylist = paylist;
	}
	public BE_PayPointVo(int paynum, String beuid, Date paydate, int paylist) {
		super();
		this.paynum = paynum;
		this.beuid = beuid;
		this.paydate = paydate;
		this.paylist = paylist;
	}
	public BE_PayPointVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}