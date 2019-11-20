package com.beshop.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BE_ProductVo {
	int pnum;
	int ctnum;
	Date p_date;
	String as_info;
	String p_cdate;
	String pname;
	String detail;
	int stock;
	String p_category;
	String p_video;
	String p_sangse;
	String option1;
	String select_op1;
	String option2;
	String select_op2;
	String option3;
	String select_op3;
	int likes;
	int hits;
	int p_price;
	String origin;
	int p_sprice;
	int auction;
	String beuid;
	MultipartFile video;
	MultipartFile sangse;
	MultipartFile as;
	
	public BE_ProductVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public BE_ProductVo(int pnum, int ctnum, Date p_date, String as_info, String p_cdate, String pname, String detail,
			int stock, String p_category, String p_video, String p_sangse, String option1, String select_op1,
			String option2, String select_op2, String option3, String select_op3, int likes, int hits, int p_price,
			String origin, int p_sprice, int auction, String beuid, MultipartFile video, MultipartFile sangse,
			MultipartFile as) {
		super();
		this.pnum = pnum;
		this.ctnum = ctnum;
		this.p_date = p_date;
		this.as_info = as_info;
		this.p_cdate = p_cdate;
		this.pname = pname;
		this.detail = detail;
		this.stock = stock;
		this.p_category = p_category;
		this.p_video = p_video;
		this.p_sangse = p_sangse;
		this.option1 = option1;
		this.select_op1 = select_op1;
		this.option2 = option2;
		this.select_op2 = select_op2;
		this.option3 = option3;
		this.select_op3 = select_op3;
		this.likes = likes;
		this.hits = hits;
		this.p_price = p_price;
		this.origin = origin;
		this.p_sprice = p_sprice;
		this.auction = auction;
		this.beuid = beuid;
		this.video = video;
		this.sangse = sangse;
		this.as = as;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public int getCtnum() {
		return ctnum;
	}

	public void setCtnum(int ctnum) {
		this.ctnum = ctnum;
	}

	public Date getP_date() {
		return p_date;
	}

	public void setP_date(Date p_date) {
		this.p_date = p_date;
	}

	public String getAs_info() {
		return as_info;
	}

	public void setAs_info(String as_info) {
		this.as_info = as_info;
	}

	public String getP_cdate() {
		return p_cdate;
	}

	public void setP_cdate(String p_cdate) {
		this.p_cdate = p_cdate;
	}

	public String getPname() {
		return pname;
	}

	public void setPname(String pname) {
		this.pname = pname;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public int getStock() {
		return stock;
	}

	public void setStock(int stock) {
		this.stock = stock;
	}

	public String getP_category() {
		return p_category;
	}

	public void setP_category(String p_category) {
		this.p_category = p_category;
	}

	public String getP_video() {
		return p_video;
	}

	public void setP_video(String p_video) {
		this.p_video = p_video;
	}

	public String getP_sangse() {
		return p_sangse;
	}

	public void setP_sangse(String p_sangse) {
		this.p_sangse = p_sangse;
	}

	public String getOption1() {
		return option1;
	}

	public void setOption1(String option1) {
		this.option1 = option1;
	}

	public String getSelect_op1() {
		return select_op1;
	}

	public void setSelect_op1(String select_op1) {
		this.select_op1 = select_op1;
	}

	public String getOption2() {
		return option2;
	}

	public void setOption2(String option2) {
		this.option2 = option2;
	}

	public String getSelect_op2() {
		return select_op2;
	}

	public void setSelect_op2(String select_op2) {
		this.select_op2 = select_op2;
	}

	public String getOption3() {
		return option3;
	}

	public void setOption3(String option3) {
		this.option3 = option3;
	}

	public String getSelect_op3() {
		return select_op3;
	}

	public void setSelect_op3(String select_op3) {
		this.select_op3 = select_op3;
	}

	public int getLikes() {
		return likes;
	}

	public void setLikes(int likes) {
		this.likes = likes;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public int getP_price() {
		return p_price;
	}

	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	public String getOrigin() {
		return origin;
	}

	public void setOrigin(String origin) {
		this.origin = origin;
	}

	public int getP_sprice() {
		return p_sprice;
	}

	public void setP_sprice(int p_sprice) {
		this.p_sprice = p_sprice;
	}

	public int getAuction() {
		return auction;
	}

	public void setAuction(int auction) {
		this.auction = auction;
	}

	public String getBeuid() {
		return beuid;
	}

	public void setBeuid(String beuid) {
		this.beuid = beuid;
	}

	public MultipartFile getVideo() {
		return video;
	}

	public void setVideo(MultipartFile video) {
		this.video = video;
	}

	public MultipartFile getSangse() {
		return sangse;
	}

	public void setSangse(MultipartFile sangse) {
		this.sangse = sangse;
	}

	public MultipartFile getAs() {
		return as;
	}

	public void setAs(MultipartFile as) {
		this.as = as;
	}

	@Override
	public String toString() {
		return "BE_ProductVo [pnum=" + pnum + ", ctnum=" + ctnum + ", p_date=" + p_date + ", as_info=" + as_info
				+ ", p_cdate=" + p_cdate + ", pname=" + pname + ", detail=" + detail + ", stock=" + stock
				+ ", p_category=" + p_category + ", p_video=" + p_video + ", p_sangse=" + p_sangse + ", option1="
				+ option1 + ", select_op1=" + select_op1 + ", option2=" + option2 + ", select_op2=" + select_op2
				+ ", option3=" + option3 + ", select_op3=" + select_op3 + ", likes=" + likes + ", hits=" + hits
				+ ", p_price=" + p_price + ", origin=" + origin + ", p_sprice=" + p_sprice + ", auction=" + auction
				+ ", beuid=" + beuid + ", video=" + video + ", sangse=" + sangse + ", as=" + as + "]";
	}

}
