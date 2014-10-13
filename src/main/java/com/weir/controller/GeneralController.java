package com.weir.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GeneralController {

	@RequestMapping(value="index.do")
	public void index_jsp(Model model){
		model.addAttribute("weir", "weirÄãºÃ"); 
		System.out.println("index.jsp");
	}
	@RequestMapping(value="hello.do")
	public ModelAndView test(){
		ModelAndView mav = new ModelAndView();
		mav.setViewName("admin/admin_index");
		return mav;
		
	}
}
