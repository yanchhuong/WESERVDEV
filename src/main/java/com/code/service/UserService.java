package com.code.service;
import com.code.model.UserSessionBean;
import com.code.model.UserSignupBeanIn_C001;


public interface UserService {

	boolean  AddUser(UserSignupBeanIn_C001 user);
    boolean  resetPassword(String username,String newpass);
    public UserSessionBean getSessionDao(String input);
}
