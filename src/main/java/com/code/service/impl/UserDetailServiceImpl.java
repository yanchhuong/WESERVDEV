package com.code.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.code.dao.IUserDetailRepostory;
import com.code.model.UserDetailInOut;
import com.code.service.IUserDetailService;

@Service
public class UserDetailServiceImpl implements IUserDetailService{

	private IUserDetailRepostory iUserDetailRepository;

	@Autowired
	public UserDetailServiceImpl(IUserDetailRepostory iUserDetailRepository) {
		this.iUserDetailRepository = iUserDetailRepository;
	}

	@Override
	public List<UserDetailInOut> getUserDetails(String usercd) {
		return iUserDetailRepository.getUserDetails(usercd);
	}

	@Override
	public void updateUserPhonno(UserDetailInOut input) {
		this.iUserDetailRepository.updateUserPhonno(input);		
	}

	@Override
	public void updateUserEmail(UserDetailInOut input) {
		this.iUserDetailRepository.updateUserEmail(input);
	}

	@Override
	public void updateUserBithdate(UserDetailInOut input) {
		this.iUserDetailRepository.updateUserBithdate(input);		
	}

	@Override
	public void updateUserGender(UserDetailInOut input) {
		this.iUserDetailRepository.updateUserGender(input);
	}
	
}
