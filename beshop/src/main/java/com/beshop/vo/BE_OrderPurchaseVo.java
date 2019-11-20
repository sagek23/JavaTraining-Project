package com.beshop.vo;

public class BE_OrderPurchaseVo {
	
	private String pname;
	private int p_price;
	private int ocount;
	private String payway;
	private String paycondition;
	private int payprice;
	private String recivename;
	private String ophone;
	private String oaddr1;
	private String oaddr2;
	private String omemo;
	private int onum;
	public BE_OrderPurchaseVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BE_OrderPurchaseVo(String pname, int p_price, int ocount, String payway, String paycondition, int payprice,
			String recivename, String ophone, String oaddr1, String oaddr2, String omemo, int onum) {
		super();
		this.pname = pname;
		this.p_price = p_price;
		this.ocount = ocount;
		this.payway = payway;
		this.paycondition = paycondition;
		this.payprice = payprice;
		this.recivename = recivename;
		this.ophone = ophone;
		this.oaddr1 = oaddr1;
		this.oaddr2 = oaddr2;
		this.omemo = omemo;
		this.onum = onum;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getOcount() {
		return ocount;
	}
	public void setOcount(int ocount) {
		this.ocount = ocount;
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
	public int getPayprice() {
		return payprice;
	}
	public void setPayprice(int payprice) {
		this.payprice = payprice;
	}
	public String getRecivename() {
		return recivename;
	}
	public void setRecivename(String recivename) {
		this.recivename = recivename;
	}
	public String getOphone() {
		return ophone;
	}
	public void setOphone(String ophone) {
		this.ophone = ophone;
	}
	public String getOaddr1() {
		return oaddr1;
	}
	public void setOaddr1(String oaddr1) {
		this.oaddr1 = oaddr1;
	}
	public String getOaddr2() {
		return oaddr2;
	}
	public void setOaddr2(String oaddr2) {
		this.oaddr2 = oaddr2;
	}
	public String getOmemo() {
		return omemo;
	}
	public void setOmemo(String omemo) {
		this.omemo = omemo;
	}
	public int getOnum() {
		return onum;
	}
	public void setOnum(int onum) {
		this.onum = onum;
	}
	@Override
	public String toString() {
		return "BE_OrderPurchaseVo [pname=" + pname + ", p_price=" + p_price + ", ocount=" + ocount + ", payway="
				+ payway + ", paycondition=" + paycondition + ", payprice=" + payprice + ", recivename=" + recivename
				+ ", ophone=" + ophone + ", oaddr1=" + oaddr1 + ", oaddr2=" + oaddr2 + ", omemo=" + omemo + ", onum="
				+ onum + "]";
	}
	
	
}
