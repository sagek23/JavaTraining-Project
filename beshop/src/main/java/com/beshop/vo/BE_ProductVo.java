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
	String option;
	String select_op;
	int likes;
	int hits;
	int p_price;
	String origin;
	int p_sprice;
	MultipartFile video;
	MultipartFile sangse;
	MultipartFile as;
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
	public String getOption() {
		return option;
	}
	public void setOption(String option) {
		this.option = option;
	}
	public String getSelect_op() {
		return select_op;
	}
	public void setSelect_op(String select_op) {
		this.select_op = select_op;
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
	public BE_ProductVo(int pnum, int ctnum, Date p_date, String as_info, String p_cdate, String pname, String detail,
			int stock, String p_category, String p_video, String p_sangse, String option, String select_op, int likes,
			int hits, int p_price, String origin, int p_sprice, MultipartFile video, MultipartFile sangse,
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
		this.option = option;
		this.select_op = select_op;
		this.likes = likes;
		this.hits = hits;
		this.p_price = p_price;
		this.origin = origin;
		this.p_sprice = p_sprice;
		this.video = video;
		this.sangse = sangse;
		this.as = as;
	}
	public BE_ProductVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "ProductVo [pnum=" + pnum + ", ctnum=" + ctnum + ", p_date=" + p_date + ", as_info=" + as_info
				+ ", p_cdate=" + p_cdate + ", pname=" + pname + ", detail=" + detail + ", stock=" + stock
				+ ", p_category=" + p_category + ", p_video=" + p_video + ", p_sangse=" + p_sangse + ", option="
				+ option + ", select_op=" + select_op + ", likes=" + likes + ", hits=" + hits + ", p_price=" + p_price
				+ ", origin=" + origin + ", p_sprice=" + p_sprice + ", video=" + video + ", sangse=" + sangse + ", as="
				+ as + "]";
	}
		
}
