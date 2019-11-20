package com.beshop.vo;

import java.util.Date;

public class BE_AuctionVo {
	int anum;
	String beuid;
	int price;
	Date day;
	int cnt;
	Date endday;
	int pnum;
	public BE_AuctionVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BE_AuctionVo(int anum, String beuid, int price, Date day, int cnt, Date endday, int pnum) {
		super();
		this.anum = anum;
		this.beuid = beuid;
		this.price = price;
		this.day = day;
		this.cnt = cnt;
		this.endday = endday;
		this.pnum = pnum;
	}
	public int getAnum() {
		return anum;
	}
	public void setAnum(int anum) {
		this.anum = anum;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public Date getDay() {
		return day;
	}
	public void setDay(Date day) {
		this.day = day;
	}
	public int getCnt() {
		return cnt;
	}
	public void setCnt(int cnt) {
		this.cnt = cnt;
	}
	public Date getEndday() {
		return endday;
	}
	public void setEndday(Date endday) {
		this.endday = endday;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	@Override
	public String toString() {
		return "BE_AuctionVo [anum=" + anum + ", beuid=" + beuid + ", price=" + price + ", day=" + day + ", cnt=" + cnt
				+ ", endday=" + endday + ", pnum=" + pnum + "]";
	}
}
