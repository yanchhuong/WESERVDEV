package com.code.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.code.comm.ByteUtilApp;
import com.code.comm.ConnectionUtils;
import com.code.comm.SqlFormatUtils;
import com.code.dao.IUserDao;
import com.code.model.UserSignupBeanIn_C001;

@Repository
public class UserDaoImpl implements IUserDao{	
	@Autowired
	protected DataSource dataSource;
	 @PostConstruct
	 private void initialize(){
	        ConnectionUtils.setDataSource(dataSource);
	 }

	@Override
	public void insertRole(UserSignupBeanIn_C001 user) {
		//String sql = "INSERT INTO USER_ROLES " +"(username,role,regdate,usercd) VALUES (?,?,?,?)" ;
		String sql = "INSERT INTO USER_ROLES " +"(username,role,regdate,usercd) VALUES (:username,:role,:regdate,:usercd)" ;
		try{
			ConnectionUtils.getNamedParameterJdbcTemplate().update(sql,SqlFormatUtils.getSqlParameterSource(user));
		}catch(Exception e){
			
		}
	}
	@Override
	public void insertUserLog(UserSignupBeanIn_C001 input) {
		//String sql = "INSERT INTO USERS " +"(usercd,username,password) VALUES (?,?,?)" ;
		String sql = "INSERT INTO USERS " +"(usercd,username,password) VALUES (:usercd,:username,'"+ByteUtilApp.encrypePassword(input.getPassword())+"')";
		try{
			ConnectionUtils.getNamedParameterJdbcTemplate().update(sql,SqlFormatUtils.getSqlParameterSource(input));
		}catch(Exception e){
			
		}
	}
	@Override
	public void insertUserDetail(UserSignupBeanIn_C001 input) {
		String sql = "INSERT INTO USER_DETAIL " +"(regdate,fname,lname,username_fk,email,usercd) VALUES (:regdate,:fname,:lname,:username,:email,:usercd)" ;
		try{
			ConnectionUtils.getNamedParameterJdbcTemplate().update(sql, SqlFormatUtils.getSqlParameterSource(input));
		}catch(Exception e){
			
		}
	}

	@Override
	public List<String> listUsername(List<String> username) {
		// TODO Auto-generated method stub
		return null;
	}
		


}
