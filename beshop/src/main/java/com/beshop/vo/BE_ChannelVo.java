package com.beshop.vo;

import org.springframework.web.multipart.MultipartFile;

public class BE_ChannelVo {
	private String ch_name;
	private String ch_img;
	private String beuid;
	private MultipartFile image;
	
	public BE_ChannelVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public BE_ChannelVo(String ch_name, String ch_img, String beuid, MultipartFile image) {
		super();
		this.ch_name = ch_name;
		this.ch_img = ch_img;
		this.beuid = beuid;
		this.image = image;
	}
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
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
	@Override
	public String toString() {
		return "BE_ChannelVo [ch_name=" + ch_name + ", ch_img=" + ch_img + ", beuid=" + beuid + ", image=" + image
				+ "]";
	}
}
