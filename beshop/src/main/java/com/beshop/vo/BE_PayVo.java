package com.beshop.vo;

import java.sql.Date;

public class BE_PayVo {
	private int paynum;
	private String payway;
	private String paycondition;
	private Date paydate;
	private int payprice;
	private int pnum;
	public BE_PayVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BE_PayVo(int paynum, String payway, String paycondition, Date paydate, int payprice, int pnum) {
		super();
		this.paynum = paynum;
		this.payway = payway;
		this.paycondition = paycondition;
		this.paydate = paydate;
		this.payprice = payprice;
		this.pnum = pnum;
	}
	public int getPaynum() {
		return paynum;
	}
	public void setPaynum(int paynum) {
		this.paynum = paynum;
	}
	public String getPayway() {
		return payway;
	}
	public void setPayway(String payway) {
		this.payway = payway;
	}
	public String getPaycondition() {
		return paycondition;
	}
	public void setPaycondition(String paycondition) {
		this.paycondition = paycondition;
	}
	public Date getPaydate() {
		return paydate;
	}
	public void setPaydate(Date paydate) {
		this.paydate = paydate;
	}
	public int getPayprice() {
		return payprice;
	}
	public void setPayprice(int payprice) {
		this.payprice = payprice;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	@Override
	public String toString() {
		return "BE_PayVo [paynum=" + paynum + ", payway=" + payway + ", paycondition=" + paycondition + ", paydate="
				+ paydate + ", payprice=" + payprice + ", pnum=" + pnum + "]";
	}
	
}
