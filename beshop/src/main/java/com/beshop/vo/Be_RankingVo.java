package com.beshop.vo;

import java.sql.Date;

public class Be_RankingVo {
	
	private String ch_name;
	private String ch_img;
	private int hits;
	private int likes;
	private String beuid;
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
	public int getHits() {
		return hits;
	}
	public void setHits(int hits) {
		this.hits = hits;
	}
	public int getLikes() {
		return likes;
	}
	public void setLikes(int likes) {
		this.likes = likes;
	}
	public String getBeuid() {
		return beuid;
	}
	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}
	public Be_RankingVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Be_RankingVo(String ch_name, String ch_img, int hits, int likes, String beuid) {
		super();
		this.ch_name = ch_name;
		this.ch_img = ch_img;
		this.hits = hits;
		this.likes = likes;
		this.beuid = beuid;
	}
	@Override
	public String toString() {
		return "Be_RankingVo [ch_name=" + ch_name + ", ch_img=" + ch_img + ", hits=" + hits + ", likes=" + likes
				+ ", beuid=" + beuid + "]";
	}
	
			
}
