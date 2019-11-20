package com.beshop.vo;

import java.sql.Date;

public class BE_Sub_ListVo {
	private String ch_name;
	private String ch_img;
	private String beuid;
	private String p_video;
	private String pname;
	private Date p_date;
	private int hits;
	private String p_sangse;
	private String sbeuid;
	public String getCh_name() {
		return ch_name;
	}
	public void setCh_name(String ch_name) {
		this.ch_name = ch_name;
	}
	public String getCh_img() {
		return ch_img;
	}
	public void setCh_img(String ch_img) {
		this.ch_img = ch_img;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public String getP_video() {
		return p_video;
	}
	public void setP_video(String p_video) {
		this.p_video = p_video;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public Date getP_date() {
		return p_date;
	}
	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public String getP_sangse() {
		return p_sangse;
	}
	public void setP_sangse(String p_sangse) {
		this.p_sangse = p_sangse;
	}
	public String getSbeuid() {
		return sbeuid;
	}
	public void setSbeuid(String sbeuid) {
		this.sbeuid = sbeuid;
	}
	public BE_Sub_ListVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BE_Sub_ListVo(String ch_name, String ch_img, String beuid, String p_video, String pname, Date p_date,
			int hits, String p_sangse, String sbeuid) {
		super();
		this.ch_name = ch_name;
		this.ch_img = ch_img;
		this.beuid = beuid;
		this.p_video = p_video;
		this.pname = pname;
		this.p_date = p_date;
		this.hits = hits;
		this.p_sangse = p_sangse;
		this.sbeuid = sbeuid;
	}
	@Override
	public String toString() {
		return "BE_Sub_ListVo [ch_name=" + ch_name + ", ch_img=" + ch_img + ", beuid=" + beuid + ", p_video=" + p_video
				+ ", pname=" + pname + ", p_date=" + p_date + ", hits=" + hits + ", p_sangse=" + p_sangse + ", sbeuid="
				+ sbeuid + "]";
	}
	
	
	
	
}
