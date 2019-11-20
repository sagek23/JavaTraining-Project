package com.beshop.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_SubDao;

@Controller
public class BE_SubController {
	@Autowired
	private BE_SubDao sdao;

	public void setSdao(BE_SubDao sdao) {
		this.sdao = sdao;
	}
	
	//채널 구독
		@ResponseBody
		@RequestMapping("insertsub")
		public String insertSub(HttpServletRequest request, HttpSession session) {
			String r = "";
			String beuid = request.getParameter("beuid");
			String sbeuid = request.getParameter("sbeuid");
			HashMap map = new HashMap();
			map.put("beuid", beuid);
			map.put("sbeuid", sbeuid);
			r = sdao.insertSub(map)+"";
			return r;
		}
		
		@RequestMapping("home")
		public void home() {
			
		}
		@RequestMapping("sub")
		public ModelAndView list_sub(HttpServletRequest request, HttpSession session) {
			String sbeuid = (String)session.getAttribute("beuid");
			System.out.println(sbeuid);
			ModelAndView mav = new ModelAndView();
			mav.addObject("list_sub", sdao.list_sub(sbeuid));
			
			return mav;
		}
}
