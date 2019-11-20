package com.beshop.vo;


import java.sql.Date;

public class BE_UserVo {
	private String beuid;
	private String upw;
	private String sex;
	private String birth;
	private String uname;
	private Date loginlog;
	private String addr1;
	private String addr2;
	private String uphone;
	private String email;
	private Date joindata;
	private String pf1;
	private String pf2;
	private String pf3;
	private String snsid;

	public BE_UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public String getUpw() {
		return upw;
	}
	public void setUpw(String upw) {
		this.upw = upw;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Date getLoginlog() {
		return loginlog;
	}
	public void setLoginlog(Date loginlog) {
		this.loginlog = loginlog;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getUphone() {
		return uphone;
	}
	public void setUphone(String uphone) {
		this.uphone = uphone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Date getJoindata() {
		return joindata;
	}
	public void setJoindata(Date joindata) {
		this.joindata = joindata;
	}
	public String getPf1() {
		return pf1;
	}
	public void setPf1(String pf1) {
		this.pf1 = pf1;
	}
	public String getPf2() {
		return pf2;
	}
	public void setPf2(String pf2) {
		this.pf2 = pf2;
	}
	public String getPf3() {
		return pf3;
	}
	public void setPf3(String pf3) {
		this.pf3 = pf3;
	}
	public String getSnsid() {
		return snsid;
	}
	public void setSnsid(String snsid) {
		this.snsid = snsid;
	}
	
	public BE_UserVo(String beuid, String upw, String sex, String birth, String uname, Date loginlog, String addr1,
			String addr2, String uphone, String email, Date joindata, String pf1, String pf2, String pf3, String snsid
			) {
		super();
		this.beuid = beuid;
		this.upw = upw;
		this.sex = sex;
		this.birth = birth;
		this.uname = uname;
		this.loginlog = loginlog;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.uphone = uphone;
		this.email = email;
		this.joindata = joindata;
		this.pf1 = pf1;
		this.pf2 = pf2;
		this.pf3 = pf3;
		this.snsid = snsid;
		
	}
	@Override
	public String toString() {
		return "BE_UserVo [beuid=" + beuid + ", upw=" + upw + ", sex=" + sex + ", birth=" + birth + ", uname=" + uname
				+ ", loginlog=" + loginlog + ", addr1=" + addr1 + ", addr2=" + addr2 + ", uphone=" + uphone + ", email="
				+ email + ", joindata=" + joindata + ", pf1=" + pf1 + ", pf2=" + pf2 + ", pf3=" + pf3 + ", snsid="
				+ snsid + "]";
	}
	
}