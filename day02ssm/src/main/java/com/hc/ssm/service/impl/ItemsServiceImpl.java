package com.hc.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hc.ssm.mapper.ItemsMapper;
import com.hc.ssm.pojo.Items;
import com.hc.ssm.pojo.ItemsExample;
import com.hc.ssm.service.ItemsService;

public class ItemsServiceImpl implements ItemsService{
	@Autowired
	private ItemsMapper itemsMapper;

	@Override
	public List<Items> getAll() {
		ItemsExample example = new ItemsExample();
		List<Items> list = itemsMapper.selectByExampleWithBLOBs(example);
		return list;
	}
	
}
