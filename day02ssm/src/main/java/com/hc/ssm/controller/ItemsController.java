package com.hc.ssm.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hc.ssm.pojo.Items;
import com.hc.ssm.service.ItemsService;

@Controller
public class ItemsController {
	@Autowired
	private ItemsService itemsService;
	
	@RequestMapping("/list.action")
	public ModelAndView mylist() {
		List<Items> itemsList = itemsService.getAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("itemsList", itemsList);
		mv.setViewName("itemsList");
		return mv;
	}

}
