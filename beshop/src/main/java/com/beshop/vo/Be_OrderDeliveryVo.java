package com.beshop.vo;

import java.util.Date;

public class Be_OrderDeliveryVo {

	int onum;
	String beuid;
	int pnum;
	int dcnum;
	String oname;
	int ocount;
	int oprice;
	String oaddr1;
	String oaddr2;
	String ophone;
	String odzip;
	Date odate;
	int dprice;
	String dstatus;
	String addr;
	int totpri;
	String omemo;
	String receivename;
	String paymethod;

	public int getOnum() {
		return onum;
	}


	public void setOnum(int onum) {
		this.onum = onum;
	}


	public String getBeuid() {
		return beuid;
	}


	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}


	public int getPnum() {
		return pnum;
	}


	public void setPnum(int pnum) {
		this.pnum = pnum;
	}


	public int getDcnum() {
		return dcnum;
	}


	public void setDcnum(int dcnum) {
		this.dcnum = dcnum;
	}


	public String getOname() {
		return oname;
	}


	public void setOname(String oname) {
		this.oname = oname;
	}


	public int getOcount() {
		return ocount;
	}


	public void setOcount(int ocount) {
		this.ocount = ocount;
	}


	public int getOprice() {
		return oprice;
	}


	public void setOprice(int oprice) {
		this.oprice = oprice;
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


	public String getOphone() {
		return ophone;
	}


	public void setOphone(String ophone) {
		this.ophone = ophone;
	}


	public String getOdzip() {
		return odzip;
	}


	public void setOdzip(String odzip) {
		this.odzip = odzip;
	}


	public Date getOdate() {
		return odate;
	}


	public void setOdate(Date odate) {
		this.odate = odate;
	}


	public int getDprice() {
		return dprice;
	}


	public void setDprice(int dprice) {
		this.dprice = dprice;
	}


	public String getDstatus() {
		return dstatus;
	}


	public void setDstatus(String dstatus) {
		this.dstatus = dstatus;
	}


	public String getAddr() {
		return addr;
	}


	public void setAddr(String addr) {
		this.addr = addr;
	}


	public int getTotpri() {
		return totpri;
	}


	public void setTotpri(int totpri) {
		this.totpri = totpri;
	}


	public String getOmemo() {
		return omemo;
	}


	public void setOmemo(String omemo) {
		this.omemo = omemo;
	}


	public String getReceivename() {
		return receivename;
	}


	public void setReceivename(String receivename) {
		this.receivename = receivename;
	}


	public String getPaymethod() {
		return paymethod;
	}


	public void setPaymethod(String paymethod) {
		this.paymethod = paymethod;
	}
	

	public Be_OrderDeliveryVo(int onum, String beuid, int pnum, int dcnum, String oname, int ocount, int oprice,
			String oaddr1, String oaddr2, String ophone, String odzip, Date odate, int dprice, String dstatus,
			String addr, int totpri, String omemo, String receivename, String paymethod) {
		super();
		this.onum = onum;
		this.beuid = beuid;
		this.pnum = pnum;
		this.dcnum = dcnum;
		this.oname = oname;
		this.ocount = ocount;
		this.oprice = oprice;
		this.oaddr1 = oaddr1;
		this.oaddr2 = oaddr2;
		this.ophone = ophone;
		this.odzip = odzip;
		this.odate = odate;
		this.dprice = dprice;
		this.dstatus = dstatus;
		this.addr = addr;
		this.totpri = totpri;
		this.omemo = omemo;
		this.receivename = receivename;
		this.paymethod = paymethod;
	}


	public Be_OrderDeliveryVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
