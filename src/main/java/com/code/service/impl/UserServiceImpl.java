package com.code.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dao.UsersDao;
import com.code.model.UserDetailBean;
import com.code.service.UserService;

@Service 
public class UserServiceImpl implements UserService{

	@Autowired
    UsersDao userDao;
	
	@Override
	public boolean AddUser(UserDetailBean user) {
		userDao.insertUserLog(user);
		userDao.insertRole(user);
		userDao.insertUserDetail(user);
		return true;
	}

	@Override
	public List<String> Listname(List<String> username) {
		// TODO Auto-generated method stub
		return null;
	}

}
