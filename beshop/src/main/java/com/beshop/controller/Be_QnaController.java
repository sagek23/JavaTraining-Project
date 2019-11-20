package com.beshop.controller;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.Be_QnaDao;
import com.beshop.vo.Be_QnaVo;

@Controller
public class Be_QnaController {

	int pageSize = 4;
	int totalRecord = 0;
	int totalPage = 1;
	
	@Autowired
	private Be_QnaDao dao;

	public void setDao(Be_QnaDao dao) {
		this.dao = dao;
	}

	@RequestMapping(value = "inquiry_write", method = RequestMethod.GET)
	public void inquiry_writeForm() {
		
	}
	
	@RequestMapping(value = "inquiry_write", method = RequestMethod.POST) 
	public ModelAndView inquiry_writeSubmit(Be_QnaVo qvo, HttpSession session, HttpServletRequest request) {
		int category = Integer.parseInt(request.getParameter("jb-radio"));
		System.out.println(category);
		qvo.setQna_category(category);
		String msg = "";
		ModelAndView mav = new ModelAndView("redirect:/inquiry_ok");
		int re = dao.insertQna(qvo);
		if(re != 1) {
			msg = "삭제실패";
		}
		session.setAttribute("msg", msg);
		return mav;
	}
	
	@RequestMapping("inquiry_ok")
	public void inquiry_ok() {
		
	}
	@RequestMapping("inquiry")
	public ModelAndView listAll(@RequestParam(value = "sortName", defaultValue = "") String sortName,
								@RequestParam(value = "pageNUM", defaultValue = "1")int pageNUM, HttpSession session) {
		HashMap map = new HashMap();
		
		map.put("sortName", sortName);
		
		totalRecord = dao.getCountQna(map);
		totalPage = (int)Math.ceil(totalRecord/ (double)pageSize);
		String pageStr = "";
		for(int i=1;i<=totalPage;i++)
		{
			pageStr = pageStr + "<a href='inquiry?pageNUM="+i+"'>"+i + "</a>" + "&nbsp;&nbsp;";
		}
		
		int start = (pageNUM-1) * pageSize +1;
		int end = start+pageSize-1;
		
//		int category = 0;
		map.put("start",start);
		map.put("end",end);
//		List<Be_QnaVo> list = dao.listQna(map);
//		for(Be_QnaVo vo : list) {
//			vo.getQna_category();
//		}
		ModelAndView mav = new ModelAndView();
		mav.addObject("ilist", dao.listQna(map));
		mav.addObject("ipageStr", pageStr);
		return mav;
		
		
	}
	@RequestMapping("inquiry_detail")
	public ModelAndView inquiry_detail(int qnanum) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("i", dao.getQna(qnanum));
		return mav;
	}
	
	@RequestMapping("/inquiry_write")
	public void inquiry_write() {

	}
	
	@RequestMapping("/faq")
	public void faq() {
		
	}
	
	
	
}
