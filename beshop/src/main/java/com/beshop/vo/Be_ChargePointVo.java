package com.beshop.vo;

import java.util.Date;

public class Be_ChargePointVo {
	
	String beuid;
	int chargelist;
	String chargemethod;


	public String getBeuid() {
		return beuid;
	}



	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}


	public int getChargelist() {
		return chargelist;
	}



	public void setChargelist(int chargelist) {
		this.chargelist = chargelist;
	}



	public String getChargemethod() {
		return chargemethod;
	}



	public void setChargemethod(String chargemethod) {
		this.chargemethod = chargemethod;
	}


	
	
	public Be_ChargePointVo(String beuid, int chargelist, String chargemethod) {
		super();
		this.beuid = beuid;
		this.chargelist = chargelist;
		this.chargemethod = chargemethod;
	}



	public Be_ChargePointVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
