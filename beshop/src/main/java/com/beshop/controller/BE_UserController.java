package com.beshop.controller;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
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
	//회원가입
	@RequestMapping(value = "/joinpage",method = RequestMethod.GET)
	public void Joinget() 
	{
		
	}
	
	
	@RequestMapping(value = "/joinpage",method = RequestMethod.POST)
	public ModelAndView Join(BE_UserVo v,HttpServletRequest request)
	{	
		String year=request.getParameter("year");
		String mon=request.getParameter("mon");
		String day=request.getParameter("day");
		String birth=year+mon+day;
		
		String phone1=request.getParameter("phone1");
		String phone2=request.getParameter("phone2");
		String phone3=request.getParameter("phone3");
		String uphone=phone1+phone2+phone3;
		String snsid=request.getParameter("snsid");
		v.setSnsid(snsid);
		v.setUphone(uphone);
		v.setBirth(birth);
		v.setAddr1(null);
		v.setAddr2(null);
		System.out.println(v);
		ModelAndView mav=new ModelAndView();
		int re=dao.insert(v);
		if(re==1)
		{
			mav=new ModelAndView("redirect:/main");
		}
		return mav;
		
	}
	
	
	
	//아이디,비밀번호 찾기 페이지
	@RequestMapping(value = "/search_user", method = RequestMethod.GET)
	public void searchUser() {
		
	}
	//아이디 찾기
		@ResponseBody
		 @RequestMapping(value = "search_id.do") 
		  public String searchId(HttpServletRequest request, HttpServletResponse response) { 
			 String uname = request.getParameter("uname");
			 String email = request.getParameter("email");
			 System.out.println("이름:"+uname+" 이메일:"+email);
//			 ModelAndView mav = new ModelAndView("redirect:/find_id");

			 HashMap map = new HashMap();
			 map.put("uname", uname);
			 map.put("email", email);
//			 mav.addObject("b", dao.searchID(map));
//			 mav.setViewName("find_id");
			 String beuid = dao.searchID(map);
//			 System.out.println(beuid);
//			 if (!beuid.equals(null)) {
//				 ModelAndView mav = new ModelAndView("redirect:/find_id");
//				 mav.addObject("b", beuid);
//				 mav.setViewName("find_id");
//				 return mav;
//			 }
			 return beuid;
		 	}
	
	@ResponseBody
	@RequestMapping(value = "search_pwd.do", method=RequestMethod.POST)
	public String search_pwd(HttpServletRequest request) {
		String r = "";
		String beuid = request.getParameter("pbeuid");
		String uname = request.getParameter("puname");
		String email = request.getParameter("pemail");
		System.out.println("아이디, 이름, 이메일 : "+beuid+uname+email);
		HashMap map = new HashMap();
		 map.put("uname", uname);
		 map.put("email", email);
		 String beuid2 = dao.searchID(map);
		 System.out.println(beuid2);
		 if(beuid.equals(beuid2)) {
			 r = "ok";
		 }
		 else {
			 r = "no";
		 }
		 System.out.println(r);
		return r;	
	}
	
	@RequestMapping("search_user_ok")
	public void search_user_ok() {
		
	}
	
	@RequestMapping("header")
	public void haeder() {
		
	}
	
	//회원로그인 처리
	@RequestMapping(value = "login.do", method=RequestMethod.GET)
	public ModelAndView login() {
		ModelAndView mav = new ModelAndView("redirect:/main");
		return mav;
	}
	@RequestMapping(value="login.do", method=RequestMethod.POST)
	public ModelAndView login_process(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("redirect:/main");
		BE_UserVo vo = null;
		String beuid = request.getParameter("beuid");
		String upw = request.getParameter("upw");
		
		System.out.println("회원아이디 : "+beuid+" 회원 비밀번호 : "+upw);
		HashMap map = new HashMap();
		map.put("beuid",beuid);
		map.put("upw", upw);
	
		vo = dao.getName(map);
		HttpSession session = request.getSession(true);

		if(vo == null) {
			System.out.println("실패");
			mav.addObject("msg","실패");
		}
		else {
			System.out.println(vo.getUname());
			String name = vo.getUname();
			mav.addObject("msg","성공");
			session.setAttribute("beuid", beuid);
			session.setAttribute("upw", upw);
			session.setAttribute("uname", name);
			session.setAttribute("email", vo.getEmail());
		}	        
		mav.setViewName("main");
		return mav;
	}
	//회원 로그아웃
	@RequestMapping("logout.do")
	public ModelAndView logout(HttpSession session) {
		ModelAndView mav = new ModelAndView("redirect:/main");
		session.invalidate();
		return mav;
	}
	
	
	
	@RequestMapping("main")
	public void be_main() {
		
		
	}
	@RequestMapping("customer_center")
	public void custmoer() {
		
	}
	//마이페이지
	@RequestMapping("/mypage")
	public void mypage(HttpSession session) {

	}
	//비밀번호 변경 페이지
	@RequestMapping(value = "/user_update", method = RequestMethod.GET)
	public ModelAndView user_update(String beuid) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("beuid", beuid);
		return mav;
	}
	@ResponseBody
	@RequestMapping(value = "/user_update", method = RequestMethod.POST)
	public int update_pwd(HttpServletRequest request, HttpServletResponse response) {
		String beuid = request.getParameter("beuid");
		String pwd = request.getParameter("pwd");
		String new_pwd = request.getParameter("new_pwd");
		System.out.println(beuid+"  "+pwd+"  "+new_pwd);
		String alert = "";
		HashMap map = new HashMap();
		map.put("beuid", beuid);
		map.put("pwd", pwd);
		map.put("new_pwd", new_pwd);
	    int r = dao.updatePwd(map);
	    System.out.println("controller의 r" + r);
		if(r == 1) {
			alert ="회원 수정이 완료되었습니다.";
		}
		else {
			alert ="회원 수정에 실패하였습니다.";
		}
		System.out.println(alert);
		return r;
	}
	
	//회원탈퇴
	@RequestMapping(value = "user_del", method = RequestMethod.GET)
	public void user_del(HttpSession session) {
		
	}
	@ResponseBody
	@RequestMapping(value = "user_del", method = RequestMethod.POST)
	public ModelAndView user_del(HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		String beuid = request.getParameter("beuid");
		String upw = request.getParameter("upw");
		System.out.println("아이디:"+beuid);
		System.out.println("비밀번호 :"+upw);
		HashMap map = new HashMap();
		map.put("beuid", beuid);
		map.put("upw", upw);
		int re = dao.deleteUser(map);
		if(re == 1) {
			session.invalidate();
			mav.addObject("msg", "ok");
		}
		else {
			mav.addObject("msg", "no");
		}
		mav.setViewName("user_del_ok");
		return mav;
	}
	@RequestMapping("user_del_ok")
	public void user_del_ok() {
		
	}
}