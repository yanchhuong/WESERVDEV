package com.code.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dao.IUserDao;
import com.code.model.UserSignupBeanIn_C001;
import com.code.service.UserService;

@Service 
public class UserServiceImpl implements UserService{
	private IUserDao userDao;
   
	@Autowired
	public UserServiceImpl(IUserDao userDao){
		this.userDao = userDao;
	}
	
	@Override
	public boolean AddUser(UserSignupBeanIn_C001 user) {
		userDao.insertUserLog(user);
		userDao.insertRole(user);
		userDao.insertUserDetail(user);
		return true;
	}
	
	@Override
	public boolean resetPassword(String username, String newpass) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<String> Listname(List<String> username) {
		// TODO Auto-generated method stub
		return null;
	}


}
