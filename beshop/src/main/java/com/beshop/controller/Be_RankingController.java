package com.beshop.controller;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.Be_RankingDao;
import com.beshop.vo.Be_RankingVo;

@Controller
public class Be_RankingController {

	@Autowired
	private Be_RankingDao dao;

	public void setDao(Be_RankingDao dao) {
		this.dao = dao;
	}
	
	
//	@RequestMapping(value = "ranking", method = RequestMethod.GET)
//	public ModelAndView rankingSort() {
//	}
	
	
	
	
	@RequestMapping("ranking")
	public ModelAndView listRanking() {
		/*
		 * List<Be_RankingVo> list; list.add();
		 */
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("listranking", dao.selectRanking());
		System.out.println(dao.selectRanking());
		return mav;
	}
}
