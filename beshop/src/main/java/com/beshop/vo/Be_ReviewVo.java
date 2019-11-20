package com.beshop.vo;

import java.util.Date;

public class Be_ReviewVo {
	int renum;
	int pnum;
	String beuid;
	Date redate;
	String re_con;
	String re_answer;
	int re_ref;
	int re_refno;
	String retitle;
	public int getRenum() {
		return renum;
	}
	public void setRenum(int renum) {
		this.renum = renum;
	}
	public int getPnum() {
		return pnum;
	}
	public void setPnum(int pnum) {
		this.pnum = pnum;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public Date getRedate() {
		return redate;
	}
	public void setRedate(Date redate) {
		this.redate = redate;
	}
	public String getRe_con() {
		return re_con;
	}
	public void setRe_con(String re_con) {
		this.re_con = re_con;
	}
	public String getRe_answer() {
		return re_answer;
	}
	public void setRe_answer(String re_answer) {
		this.re_answer = re_answer;
	}
	public int getRe_ref() {
		return re_ref;
	}
	public void setRe_ref(int re_ref) {
		this.re_ref = re_ref;
	}
	public int getRe_refno() {
		return re_refno;
	}
	public void setRe_refno(int re_refno) {
		this.re_refno = re_refno;
	}
	public String getRetitle() {
		return retitle;
	}
	public void setRetitle(String retitle) {
		this.retitle = retitle;
	}
	public Be_ReviewVo(int renum, int pnum, String beuid, Date redate, String re_con, String re_answer, int re_ref,
			int re_refno, String retitle) {
		super();
		this.renum = renum;
		this.pnum = pnum;
		this.beuid = beuid;
		this.redate = redate;
		this.re_con = re_con;
		this.re_answer = re_answer;
		this.re_ref = re_ref;
		this.re_refno = re_refno;
		this.retitle = retitle;
	}
	public Be_ReviewVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}