package com.beshop.controller;


import java.awt.Dialog;
import java.io.FileOutputStream;
import java.lang.ProcessBuilder.Redirect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_ProductDao;
import com.beshop.vo.BE_ProductVo;


@Controller
public class BE_ShopController {

	@Autowired
	private BE_ProductDao pao;
	
	public void setPao(BE_ProductDao pao) {
		this.pao = pao;
	}

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/orderListSet") public List<OrderListVo> orderList(){
	 * List<OrderListVo> list = olao.listOrder();
	 * 
	 * String str = ""; ObjectMapper mapper = new ObjectMapper(); try { str =
	 * mapper.writeValueAsString(olao.listOrder()); } catch (Exception e) {
	 * System.out.println(e.getMessage()); }
	 * 
	 * return str;
	 * 
	 * return list; }
	 */

	@ResponseBody
	@RequestMapping("/nowAuction")
	public BE_AuctionVo auction(){
		BE_AuctionVo ao = pao.nowAuction();
		return ao;
	}
	
	@ResponseBody
	@RequestMapping(value="/insertAuction",method = RequestMethod.POST)
	public int insertAuction(BE_AuctionVo ao,HttpSession session) {
		int r = pao.insertAuction(ao);
		return r;
	}

	@RequestMapping("/index")
	public void index() {

	}

	@RequestMapping("/main")
	public void main() {

	}

	@RequestMapping("/shopping")
	public void shopping() {

	}

	@RequestMapping("/mypage")
	public void mypage() {

	}

	@RequestMapping("/orderlist")
	public void orderlist() {

	}
	@RequestMapping("shoppingDetail")
	public void shoppingDetail() {
		
	}

	@RequestMapping(value="/addProduct",method = RequestMethod.GET)
	public void addProductGet() {
		System.out.println("get온다");
		
	}
	
	@RequestMapping(value="/addProduct",method = RequestMethod.POST)
	public ModelAndView addProductPost(BE_ProductVo po, HttpSession session, HttpServletRequest request) {
		System.out.println("post온다"+po.getP_cdate());
		String path = request.getRealPath("video");
		System.out.println(path);
		MultipartFile file = po.getVideo();
		String p_video = file.getOriginalFilename();
		po.setP_video(p_video);
		try {
			byte date[] = file.getBytes();
			FileOutputStream fos = new FileOutputStream(path+"/"+p_video);
			fos.write(date);
			fos.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		MultipartFile file2 = po.getSangse();
		String p_sangse = file2.getOriginalFilename();
		po.setP_sangse(p_sangse);
		try {
			byte date[] = file2.getBytes();
			FileOutputStream fos = new FileOutputStream(path+"/"+p_sangse);
			fos.write(date);
			fos.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		MultipartFile file3 = po.getAs();
		String as_info = file3.getOriginalFilename();
		po.setAs_info(as_info);
		try {
			byte date[] = file3.getBytes();
			FileOutputStream fos = new FileOutputStream(path+"/"+as_info);
			fos.write(date);
			fos.close();
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("file3 까지 탄다.");
		ModelAndView mav = new ModelAndView("redirect:/main");
		int r = pao.insertProduct(po);
		System.out.println(r);
		String msg = "";
		if(r != 1) { 
			msg ="상품등록에 실패했습니다.";
		}else {
			msg = "상품등록에 성공!!";
		}
		mav.addObject("msg", msg);
		return mav;
		
	}
}
