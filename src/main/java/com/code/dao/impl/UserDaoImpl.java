package com.code.dao.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.code.comm.ByteUtilApp;
import com.code.comm.ConnectionUtils;
import com.code.comm.SqlFormatUtils;
import com.code.dao.IUserDao;
import com.code.model.UserSessionBean;
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
	public List <UserSessionBean> getSessionDao(String input) {
		String sql = "select a.usercd,b.fname||' '||b.lname as fullname,b.sex, "
					+ "       c.randname,b.cphone,b.email from users a "
					+ "       left join user_detail b on a.usercd = b.usercd "
					+ "       left join filepicture c on c.usercd = a.usercd "
					+ "             where 1=1 and a.username = :username";
		Map<String, Object> params = new HashMap<String, Object>();
		params.put("username", input);
		
		List <UserSessionBean> data=null;
	    try {
	         data = ConnectionUtils.getNamedParameterJdbcTemplate().query(sql,params,
					new BeanPropertyRowMapper<UserSessionBean>(UserSessionBean.class));
		 } catch (Exception e) {
					// do nothing, return null
	    }
	    return data;
	}

}
