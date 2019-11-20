package com.beshop.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.beshop.dao.BE_ProductDao;
import com.beshop.dao.Be_ReviewDao;
import com.beshop.vo.BE_ProductVo;
import com.beshop.vo.BE_ChargePointVo;
import com.beshop.vo.Be_NoticeVo;
import com.beshop.vo.Be_ReviewVo;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class Be_ReviewController {
	@Autowired
	Be_ReviewDao dao;
	@Autowired
    BE_ProductDao pdao;
	
	public void setPdao(BE_ProductDao pdao) {
		this.pdao = pdao;
	}

	public void setDao(Be_ReviewDao dao) {
		this.dao = dao;
	}
	@RequestMapping(value = "/addReview", method = RequestMethod.GET)
	public void review()
	{
    	
	}
	
	@RequestMapping(value = "/addReview", method = RequestMethod.POST)
	public String  addReview(Be_ReviewVo r)
	{
		int re = -1;
		//System.out.println("동작controller");
		int pnum = r.getPnum();
		re = dao.insertReview(r);
		return "redirect:shoppingDetail?pnum="+pnum;
		
	}

	@ResponseBody
	@RequestMapping("/reviewList")
	public String reviewList(Be_ReviewVo r, HttpServletRequest request)
	{	
		HttpSession session = request.getSession(true);
		int pnum = (Integer)session.getAttribute("pnum");
		System.out.println(pnum+"pnupnpnpnp");
		//System.out.println("컨트롤러 beuid: "+beuid);
		String review ="";
		try {
			ObjectMapper mapper = new ObjectMapper();
			review = mapper.writeValueAsString(dao.reviewList(pnum));
			System.out.println(review+"revieeeeeeeeeew");
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.getMessage());
		}
		//System.out.println("beuid: "+beuid);
		
		return review;
	}
	
	
}
