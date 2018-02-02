package com.code.service;

import java.util.List;

import com.code.model.UserDetailBean;

public interface UserService {

	boolean  AddUser(UserDetailBean user);
    List<String> Listname(List<String> username);
}
