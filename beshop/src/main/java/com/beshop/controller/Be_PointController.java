package com.beshop.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.beshop.dao.BE_PointDao;
import com.beshop.vo.BE_ChargePointVo;

import com.fasterxml.jackson.databind.ObjectMapper;


@Controller
public class BE_PointController {
	
	@Autowired
	BE_PointDao podao = new BE_PointDao();

	public void setDao(BE_PointDao podao) {
		this.podao = podao;
	}
	
	@RequestMapping(value = "charge", method = RequestMethod.POST)
	public String  chargePoint2(BE_ChargePointVo c, RedirectAttributes rttr)
	{
		int re = -1;
		System.out.println("동작controller");
		String chargelist = Integer.toString(c.getChargelist());
		String chargemethod = c.getChargemethod();
		rttr.addFlashAttribute("chargelist", chargelist);
		rttr.addFlashAttribute("chargemethod", chargemethod);
		re = podao.charge(c);
		System.out.println(re +"포인트 충전 여부");
		rttr.addFlashAttribute("re",re);
		return "redirect:/chargeCom";
		
	}
	@ResponseBody
	@RequestMapping("/getPoint")
	public String myPoint(String beuid, HttpServletRequest request)
	{
		HttpSession session = request.getSession(true);
		beuid = (String)session.getAttribute("beuid");
		
		String point="";
		try {
			ObjectMapper mapper = new ObjectMapper();
			point = mapper.writeValueAsString(podao.getPointBalance(beuid));
			System.out.println(point);
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		//System.out.println("beuid: "+beuid);
		
		return point;
	}
	
	@RequestMapping("/chargeCom")
	public void chargeCom(@ModelAttribute(value="vo") BE_ChargePointVo c, HttpServletRequest request)
	{
		
	}
	
	@RequestMapping(value = "/charge", method = RequestMethod.GET)
	public void charge()
	{
    	
	}

	
}