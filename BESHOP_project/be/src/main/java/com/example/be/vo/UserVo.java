package com.example.be.vo;

import java.sql.Date;
import java.sql.Timestamp;

public class UserVo {

	String beuid;
	String upw;
	String sex;
	String birth;	//String
	String uname;
	Timestamp loginLog;
	String addr1;
	String addr2;
	String uphone;
	String email;
	Date joindate;
	String pf1;
	String pf2;
	String pf3;
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
	public Timestamp getLoginLog() {
		return loginLog;
	}
	public void setLoginLog(Timestamp loginLog) {
		this.loginLog = loginLog;
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
	public Date getJoindate() {
		return joindate;
	}
	public void setJoindate(Date joindate) {
		this.joindate = joindate;
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
	public UserVo(String beuid, String upw, String sex, String birth, String uname, Timestamp loginLog, String addr1,
			String addr2, String uphone, String email, Date joindate, String pf1, String pf2, String pf3) {
		super();
		this.beuid = beuid;
		this.upw = upw;
		this.sex = sex;
		this.birth = birth;
		this.uname = uname;
		this.loginLog = loginLog;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.uphone = uphone;
		this.email = email;
		this.joindate = joindate;
		this.pf1 = pf1;
		this.pf2 = pf2;
		this.pf3 = pf3;
	}
	public UserVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "UserVo [beuid=" + beuid + ", upw=" + upw + ", sex=" + sex + ", birth=" + birth + ", uname=" + uname
				+ ", loginLog=" + loginLog + ", addr1=" + addr1 + ", addr2=" + addr2 + ", uphone=" + uphone + ", email="
				+ email + ", joindate=" + joindate + ", pf1=" + pf1 + ", pf2=" + pf2 + ", pf3=" + pf3 + "]";
	}
	
	
	
}