package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mapper.ItemsMapper;
import com.pojo.Items;
import com.pojo.ItemsExample;
import com.service.ItemsService;
@Service
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
