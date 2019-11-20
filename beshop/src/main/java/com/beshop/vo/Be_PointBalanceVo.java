package com.beshop.vo;

public class BE_PointBalanceVo {
	int balancenum;
	int chargenum;
	int paynum;
	int pbalnow;
	String beuid;
	public int getBalancenum() {
		return balancenum;
	}
	public void setBalancenum(int balancenum) {
		this.balancenum = balancenum;
	}
	public int getChargenum() {
		return chargenum;
	}
	public void setChargenum(int chargenum) {
		this.chargenum = chargenum;
	}
	public int getPaynum() {
		return paynum;
	}
	public void setPaynum(int paynum) {
		this.paynum = paynum;
	}
	public int getPbalnow() {
		return pbalnow;
	}
	public void setPbalnow(int pbalnow) {
		this.pbalnow = pbalnow;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public BE_PointBalanceVo(int balancenum, int chargenum, int paynum, int pbalnow, String beuid) {
		super();
		this.balancenum = balancenum;
		this.chargenum = chargenum;
		this.paynum = paynum;
		this.pbalnow = pbalnow;
		this.beuid = beuid;
	}
	public BE_PointBalanceVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}