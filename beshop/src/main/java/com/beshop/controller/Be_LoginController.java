package com.beshop.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Be_LoginController {
	
	@RequestMapping("/login")
	public String index()
	{
		return "login";
	}
	
	@RequestMapping("/kakaologin")
	public String kakaologin()
	{
		return "kakaologin";
	}
	@RequestMapping("/googlelogin")
	public String googlelogin()
	{
		return "googlelogin";
	}
	@RequestMapping("/naverlogin")
	public String naverlogin()
	{
		return "naverlogin";
	}
}
