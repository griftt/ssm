package com.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.pojo.Items;
import com.serviceImpl.ItemsServiceImpl;


@Controller
@RequestMapping("/items")
public class ItemsMapperController {

	@Autowired
	private ItemsServiceImpl  itemsServiceImpl;
	
	@RequestMapping("/list.action")
	public ModelAndView list(){
		
		List<Items> itemsList=itemsServiceImpl.getAll();
		ModelAndView mv = new ModelAndView();
		mv.addObject("itemsList", itemsList);
		mv.setViewName("itemsList");
		return mv;
		
		
	}
	public ItemsServiceImpl getItemsServiceImpl(){
		return itemsServiceImpl;
	}
	public void setItemsServiceImpl(ItemsServiceImpl itemsServiceImpl) {
		this.itemsServiceImpl = itemsServiceImpl;
	}
	
	
}
