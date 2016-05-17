package com.yc.vote.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yc.vote.entity.User;
import com.yc.vote.mapper.UserMapper;
import com.yc.vote.service.RegisterService;

@Service("registerService")
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	private UserMapper userMapper;
	@Override
	public boolean register(User user) {
		userMapper.insertUser(user);
		return true;
	}

}
