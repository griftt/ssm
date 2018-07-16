package com.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.mapper.UserMapper;
import com.pojo.User;
import com.pojo.UserExample;
import com.service.UserService;

public class UserServiceImpl implements UserService {

	@Autowired
	private UserMapper userMapper;

	@Override
	public List<User> getAll() {
		UserExample example =new UserExample();
		return userMapper.selectByExample(example);
	}
	 
	
}
