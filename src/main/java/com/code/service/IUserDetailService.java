package com.code.service;

import java.util.List;

import com.code.model.UserDetailInOut;

public interface IUserDetailService {
	public List<UserDetailInOut> getUserDetails(String usercd);
	public void updateUserPhonno(UserDetailInOut input);
	public void updateUserEmail(UserDetailInOut input);
	public void updateUserBithdate(UserDetailInOut input);
	public void updateUserGender(UserDetailInOut input);
	
}