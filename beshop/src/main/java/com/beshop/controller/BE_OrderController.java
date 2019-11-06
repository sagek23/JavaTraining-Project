package com.beshop.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.Be_OrderDao;
import com.beshop.vo.Be_OrderDeliveryVo;
import com.fasterxml.jackson.annotation.JsonCreator.Mode;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class BE_OrderController {
	@Autowired
	Be_OrderDao dao = new Be_OrderDao();
	
	public void setDao(Be_OrderDao dao) {
		this.dao = dao;
	}
	
	@RequestMapping("/orderlist")
	public void orderlist(String beuid, HttpServletRequest request) {
		HttpSession session = request.getSession(true);
		beuid = (String)session.getAttribute("beuid");
		System.out.println("orderlist "+beuid);
	}
	
	@ResponseBody
	@RequestMapping("/orderedList")
	public String orderList(String beuid, HttpServletRequest request)
	{
		HttpSession session = request.getSession(true);
		beuid = (String)session.getAttribute("beuid");
		//System.out.println("컨트롤러 beuid: "+beuid);
		String order ="";
		try {
			ObjectMapper mapper = new ObjectMapper();
			order = mapper.writeValueAsString(dao.orderList(beuid));
			System.out.println(order);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		//System.out.println("beuid: "+beuid);
		
		return order;
	}
	@RequestMapping("/orderDetail")
	public ModelAndView detail(String beuid, HttpServletRequest request, @RequestParam("onum") int onum)
	{
		ModelAndView mav = new ModelAndView();
		HttpSession session = request.getSession(true);
		beuid = (String)session.getAttribute("beuid");
		System.out.println("beuid--- "+beuid);
		System.out.println("onum--- "+onum);
		mav.addObject("o", dao.orderDetail(beuid, onum));
		mav.setViewName("orderDetail");
		return mav;
	}
	
	/*
	@ResponseBody
	@RequestMapping("/detail")
	public String detail(String beuid, HttpServletRequest request, @RequestParam("onum") int onum)
	{
		//RequestParam으로 onum(주문번호) 받아오기
		HttpSession session = request.getSession(true);
		beuid = (String)session.getAttribute("beuid");
		//onum = (Integer)session.getAttribute("onum");
		System.out.println("detail onum: "+onum);
		String order ="";
		try {
			ObjectMapper mapper = new ObjectMapper();
			order = mapper.writeValueAsString(dao.orderDetail(beuid, onum));
			System.out.println(order);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		System.out.println("beuid: "+beuid);
		
		return order;
	}
	
	@RequestMapping( "/orderDetail")
	public void orderDetail(String beuid, HttpServletRequest request, @RequestParam("onum") int onum)
	{
		HttpSession session = request.getSession(true);
		beuid = (String)session.getAttribute("beuid");
		session.setAttribute("onum", onum);
		System.out.println("beuid는 "+beuid);
		System.out.println("onum은 "+onum);
	}
	*/
	
	
		
}
