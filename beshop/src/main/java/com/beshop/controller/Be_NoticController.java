package com.beshop.controller;

import java.nio.channels.SeekableByteChannel;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.beshop.dao.Be_NoticeDao;
import com.beshop.vo.Be_NoticeVo;


@Controller
public class Be_NoticController {
	
	int pageSize = 4;
	int totalRecord = 0;
	int totalPage = 1;

	@Autowired
	private Be_NoticeDao dao;

	public void setDao(Be_NoticeDao dao) {
		this.dao = dao;
	}
	/*		
	@ResponseBody
	@RequestMapping("/notice")
	public ModelAndView listAll() {
		ModelAndView mav = new ModelAndView();
		HashMap map = new HashMap();
		mav.addObject("list", dao.listNotice(map));
		
		return mav;
	}
	*/
	
	@RequestMapping("notice_delete")
	public ModelAndView notice_delete(int noticenum) {
		ModelAndView mav = new ModelAndView("redirect:/notice");
		//ModelAndView mav = new ModelAndView();
		mav.addObject("no", dao.deleteNotice(noticenum));
		
		return mav;
	}
	
	@RequestMapping(value ="notice_update", method = RequestMethod.GET)
	public ModelAndView notice_updateForm(int noticenum) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("n", dao.getNotice(noticenum));
		return mav;
	}
	
	@RequestMapping(value = "notice_update", method = RequestMethod.POST)
	public ModelAndView notice_updateSubmit(Be_NoticeVo nvo, HttpSession session, HttpServletRequest request) {
		String msg = "";
		ModelAndView mav = new ModelAndView("redirect:/notice");
		int re = dao.updateNotice(nvo);		
		if(re != 1) {
			msg = "수정에 실패했습니다.";
		}
		session.setAttribute("msg", msg);
		
		return mav;
	}
	
		
	@RequestMapping("/notice")
	public ModelAndView listAll(@RequestParam(value = "sortName", defaultValue = "") String sortName,
			@RequestParam(value = "pageNUM", defaultValue = "1") int pageNUM, HttpSession session)
	{
		
		//System.out.println("페이지번호:"+pageNUM);
	
		HashMap map = new HashMap();
		
		map.put("sortName",sortName);
		
		totalRecord = dao.getCountNotice(map);
		totalPage = (int)Math.ceil( totalRecord/ (double)pageSize );
						
		String pageStr = "";
		for(int i=1;i<=totalPage;i++)
		{
			pageStr = pageStr + "<a href='notice?pageNUM="+i+"'>"+i + "</a>" + "&nbsp;&nbsp;";
		}
		
		int start = (pageNUM-1) * pageSize +1;
		int end = start+pageSize-1;
		
		
		map.put("start",start);
		map.put("end",end);
		
//		System.out.println("시작레코드:"+start);
//		System.out.println("마지막레코드:"+end);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("nlist", dao.listNotice(map));
		mav.addObject("pageStr", pageStr);
		return mav;
	}
	@RequestMapping(value= "noticewrite", method = RequestMethod.GET)
	public void noticewriteForm() {
		
	}

	
	@RequestMapping(value ="noticewrite", method = RequestMethod.POST)
	public ModelAndView noticewriteSubmit(Be_NoticeVo nvo, HttpSession session, HttpServletRequest request) {
		
		String msg = "";
		ModelAndView mav = new ModelAndView("redirect:/notice");
		int re = dao.insert(nvo);
		if(re != 1) {
			msg = "삭제 실패";
		}
		session.setAttribute("msg", msg);
		return mav;
	}
	
	@RequestMapping("notice_detail")
	public ModelAndView notice_detail(int noticenum) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("n", dao.getNotice(noticenum));
		return mav;
	}

	
 
}
