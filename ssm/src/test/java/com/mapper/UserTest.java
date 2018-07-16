package com.mapper;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.pojo.User;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations="/spring/applicationContext-dao.xml")
public class UserTest {
	@Autowired
	private UserMapper user;
	@Test
	public void test() {
		User user2=user.selectByPrimaryKey(1);
		System.out.println(user2.getUsername());
	}

}
