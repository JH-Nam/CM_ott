package com.cm.ott.controller;


import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import org.mybatis.spring.annotation.MapperScan;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.cm.ott.service.OttServiceImpl;

@MapperScan
@Controller
public class RootController {

    @Autowired
	OttServiceImpl ottServiceImpl;
	
	private static final Logger logger = LoggerFactory.getLogger(RootController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public ModelAndView list(@RequestParam Map<String, Object> map, Locale locale) {
		List<Map<String, Object>> list = this.ottServiceImpl.list(map);
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		String formattedDate = dateFormat.format(date);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("data", list);
		mav.addObject("serverTime", formattedDate );

		mav.setViewName("/home");
		return mav;
	}

	// 영상 삽입 화면 컨트롤러 메소드
	@RequestMapping(value = "/create", method = RequestMethod.GET)
	public ModelAndView create() {
		return new ModelAndView("/ott/create");
	}

	// 영상 삽입 기능 컨트롤러 메소드
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView createPost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		String ottId = this.ottServiceImpl.create(map);
		if (ottId == null) {
			mav.setViewName("redirect:/create");
		} else {
			mav.setViewName("redirect:/detail?ottId=" + ottId);
		}

		return mav;
	}

	// 영상 조회, 시청 화면 컨트롤러 메소드
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public ModelAndView detail(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.ottServiceImpl.detail(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		String ottId = map.get("ottId").toString();
		mav.addObject("ottId", ottId);
		mav.setViewName("/ott/detail");
		return mav;
	}

	// 영상 수정 화면 컨트롤러 메소드
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public ModelAndView update(@RequestParam Map<String, Object> map) {
		Map<String, Object> detailMap = this.ottServiceImpl.detail(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", detailMap);
		mav.setViewName("/ott/update");
		return mav;
	}

	// 영상 수정 기능 컨트롤러 메소드
	@RequestMapping(value = "update", method = RequestMethod.POST)
	public ModelAndView updatePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		boolean isUpdateSuccess = this.ottServiceImpl.edit(map);
		if (isUpdateSuccess) {
			String ottId = map.get("ottId").toString();
			mav.setViewName("redirect:/detail?ottId=" + ottId);
		} else {
			mav = this.update(map);
		}

		return mav;
	}

	// 영상 삭제 기능 컨트롤러 메소드
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public ModelAndView deletePost(@RequestParam Map<String, Object> map) {
		ModelAndView mav = new ModelAndView();

		boolean isDeleteSuccess = this.ottServiceImpl.remove(map);
		if (isDeleteSuccess) {
			mav.setViewName("redirect:/list");
		} else {
			String ottId = map.get("ottId").toString();
			mav.setViewName("redirect:/detail?ottId=" + ottId);
		}

		return mav;
	} 

	// 영상 검색, 목록 컨트롤러 메소드
	@RequestMapping(value = "list")
	public ModelAndView list(@RequestParam Map<String, Object> map) {
		List<Map<String, Object>> list = this.ottServiceImpl.list(map);

		ModelAndView mav = new ModelAndView();
		mav.addObject("data", list);

		if (map.containsKey("keyword")) {
			mav.addObject("keyword", map.get("keyword"));
		}

		mav.setViewName("/ott/list");
		return mav;
	}
}

