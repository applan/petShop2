package com.spring.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class HomeController {
	
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home() {
		
		
		return "home";
	}
	
	@GetMapping("/view")
	public void view() {
		log.info("main page 호출...");
	}
	@GetMapping("/search")
	public String search(String reus,Model model) {
		log.info("검색 화면 호출");
		if(reus != null) {
		 model.addAttribute("reus", reus);
		}
		return "search/search";
	}
	
	
}