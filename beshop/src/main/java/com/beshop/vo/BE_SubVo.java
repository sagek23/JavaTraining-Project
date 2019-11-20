package com.beshop.vo;

public class BE_SubVo {
	private String beuid;
	private String sbeuid;
	
	public BE_SubVo(String beuid, String sbeuid) {
		super();
		this.beuid = beuid;
		this.sbeuid = sbeuid;
	}
	public BE_SubVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public String getSbeuid() {
		return sbeuid;
	}
	public void setSbeuid(String sbeuid) {
		this.sbeuid = sbeuid;
	}
	@Override
	public String toString() {
		return "BE_SubVo [beuid=" + beuid + ", sbeuid=" + sbeuid + "]";
	}
	
}
