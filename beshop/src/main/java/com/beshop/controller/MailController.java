package com.beshop.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.BE_UserDao;
import com.beshop.vo.BE_UserVo;

@Controller
public class MailController {
	@Autowired
	private MailSender javaMailsender;
	
	public void setJavaMailsender(MailSender javaMailsender) {
		this.javaMailsender = javaMailsender;
	}
	
	@RequestMapping("/index")
	public void index() {
		
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping("/mailgo") public String mailPay() { String str="";
	 * SimpleMailMessage msg = new SimpleMailMessage(); try {
	 * msg.setFrom("rhddbgkqtlek@naver.com"); msg.setSubject("과금안내");
	 * msg.setText("이번달 요금은 : "); msg.setTo("hisoy@me.com");
	 * 
	 * javaMailsender.send(msg);
	 * 
	 * } catch (Exception e) { System.out.println(e.getMessage()); } return str; }
	 */
	public static String createKey() {
		StringBuffer key = new StringBuffer();
		Random random = new Random();
		
		for(int i =0; i<10; i++) {
			int index = random.nextInt(3);
			
			switch(index) {
			case 0 :
				key.append((char) ((int)(random.nextInt(26))+97));break;
			case 1:
				key.append((char)((int)(random.nextInt(26))+65));break;
			case 2:
				key.append((random.nextInt(10)));break;
			}
		}
		System.out.println(key.toString());
		return key.toString();
	}
	//비밀번호 찾기 인증번호
	@ResponseBody
	@RequestMapping("/pwdmail.go")
	//@Scheduled(cron = "0 17 11 1 * * *")
	public String pwdmail(HttpServletRequest request) {

		String email = request.getParameter("email");
		System.out.println(email);
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		String keyCode = createKey();
	
		mailMessage.setSubject("BESHOP 비밀번호 찾기 인증번호입니다.");
		mailMessage.setFrom("gofl854@naver.com");
		
		mailMessage.setText("인증번호 : "+keyCode+"를 홈페이지에서 입력해주세요");
		mailMessage.setTo(email);
		
		
		try {
			javaMailsender.send(mailMessage);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("ok");
		return keyCode;
	}
	@RequestMapping("new_pwd")
	public ModelAndView newPwd(String beuid, String email) {
		ModelAndView mav = new ModelAndView("redirect:/search_user_ok");
		int r = 0;
		System.out.println("비밀번호 찾는 아이디"+beuid);
		System.out.println("이메일"+email);
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		String keyCode = createKey();
	
		mailMessage.setSubject("BESHOP 임시 비밀번호를 확인해주세요");
		mailMessage.setFrom("gofl854@naver.com");
		
		mailMessage.setText("임시비밀번호 : "+keyCode+"를 이용해 로그인해주세요!");
		mailMessage.setTo(email);
		BE_UserDao dao = new BE_UserDao();
		r = dao.newPwd(beuid, keyCode);
		System.out.println(r);
		try {
			javaMailsender.send(mailMessage);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("ok");
		return mav;
	}

	//회원가입 인증메일
	@ResponseBody
	@RequestMapping(value = "/mail.go",method = RequestMethod.GET)
	//@Scheduled(cron = "0 17 11 1 * * *")
	public String joinmail(String email) {
		System.out.println("메일컨트롤러 동작함");
		System.out.println(email);
		SimpleMailMessage mailMessage = new SimpleMailMessage();
		String keyCode = createKey();
		
		mailMessage.setSubject("BESHOP 회원가입 메일 인증번호입니다.");
		mailMessage.setFrom("gofl854@naver.com");
		
		mailMessage.setText("인증번호 : "+keyCode+"를 홈페이지에서 입력해주세요");
		mailMessage.setTo(email);
		System.out.println(keyCode);
		
		 ModelAndView mav=new ModelAndView();
		 mav.addObject("keyCode",keyCode);
		
		try {
			javaMailsender.send(mailMessage);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		System.out.println("ok");
		return keyCode;
	}
}

