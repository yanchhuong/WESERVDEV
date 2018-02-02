package com.code.service;

import java.util.List;

import com.code.model.UserSignupBeanIn_C001;


public interface UserService {

	boolean  AddUser(UserSignupBeanIn_C001 user);
    boolean  resetPassword(String username,String newpass);
    List<String> Listname(List<String> username);
}
