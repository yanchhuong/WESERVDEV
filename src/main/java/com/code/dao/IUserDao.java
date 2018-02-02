package com.code.dao;

import java.util.List;

import com.code.model.UserSessionBean;
import com.code.model.UserSignupBeanIn_C001;
public interface IUserDao {
   
	void  insertRole(UserSignupBeanIn_C001 user);
    void  insertUserLog(UserSignupBeanIn_C001 user);
    void  insertUserDetail(UserSignupBeanIn_C001 user);
    
    public List<UserSessionBean> getSessionDao(String input);

}
