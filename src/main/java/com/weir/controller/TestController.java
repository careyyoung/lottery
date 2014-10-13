package com.weir.controller;

import java.util.Iterator;
import java.util.List;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.weir.entiy.Admin;
import com.weir.service.IUserService;

@Controller
public class TestController {
	@Resource
	private IUserService userService;
	@RequestMapping(value="test/test.do")
	public void test(){
		List userList = userService.getUser();
		Iterator it = userList.iterator();
		while(it.hasNext()){
			Admin ad = (Admin)it.next();
			System.out.println(ad.toString());
		}
	}
}
