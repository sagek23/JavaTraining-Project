package com.beshop.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_UserDao;
import com.beshop.vo.BE_UserVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class BE_UserController {
	@Autowired
	private BE_UserDao dao;
	
	public void setDao(BE_UserDao dao) {
		this.dao = dao;
	}
	//아이디,비밀번호 찾기 페이지
	@RequestMapping(value = "/search_user", method = RequestMethod.GET)
	public void searchUser() {
		
	}
	@RequestMapping("find_id")
	public void find_id(){
		
	}
	@ResponseBody
	 @RequestMapping(value = "search_id.do") 
	  public String searchId(HttpServletRequest request, HttpServletResponse response) { 
		 String uname = request.getParameter("uname");
		 String email = request.getParameter("email");
		 System.out.println("이름:"+uname+" 이메일:"+email);
//		 ModelAndView mav = new ModelAndView("redirect:/find_id");

		 HashMap map = new HashMap();
		 map.put("uname", uname);
		 map.put("email", email);
//		 mav.addObject("b", dao.searchID(map));
//		 mav.setViewName("find_id");
		 String beuid = dao.searchID(map);
//		 System.out.println(beuid);
//		 if (!beuid.equals(null)) {
//			 ModelAndView mav = new ModelAndView("redirect:/find_id");
//			 mav.addObject("b", beuid);
//			 mav.setViewName("find_id");
//			 return mav;
//		 }
		 return beuid;
	 	}
	 }