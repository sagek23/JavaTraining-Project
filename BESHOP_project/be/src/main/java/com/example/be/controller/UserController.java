package com.example.be.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.example.be.dao.UserDao;
import com.example.be.vo.UserVo;

@Controller
public class UserController {
	@Autowired
	private UserDao dao;
	
	public void setDao(UserDao dao) {
		this.dao = dao;
	}
	@RequestMapping("/hello")
	public void hello()
	{
		
	}
	@RequestMapping(value = "/joinpage",method = RequestMethod.GET)
	public void Joinget() 
	{
		
	}
	
	@RequestMapping(value = "/joinpage",method = RequestMethod.POST)
	public ModelAndView Join(UserVo v,HttpServletRequest request)
	{	
		String year=request.getParameter("year");
		String mon=request.getParameter("mon");
		String day=request.getParameter("day");
		String birth=year+mon+day;
		
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String phone3=request.getParameter("phone3");
		String uphone=phone1+phone2+phone3;
		v.setUphone(uphone);
		v.setBirth(birth);
		v.setAddr1(null);
		v.setAddr2(null);
		System.out.println(v);
		ModelAndView mav=new ModelAndView();
		int re=dao.insert(v);
		if(re==1)
		{
			mav=new ModelAndView("redirect:/hello.jsp");
		}
		return mav;
		
	}
}
