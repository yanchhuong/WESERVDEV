package com.code.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.PostConstruct;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.support.JdbcDaoSupport;
import org.springframework.stereotype.Repository;

import com.code.dao.ChatMessageRepository;
import com.code.demo.Record;
import com.code.model.ChatMessageModel;

@Repository
public class ChatMessageDaoImpl extends JdbcDaoSupport implements ChatMessageRepository{
	
	@Autowired
	protected DataSource dataSource;
	 
	 @PostConstruct
	 private void initialize(){
	        setDataSource(dataSource);
	 }

	@Override
	public List<ChatMessageModel> getMessages(int messageIndex) {
		String sql = "SELECT id,data FROM record";
	    List< Map < String, Object>> rows = this.getJdbcTemplate().queryForList(sql);
	 
	    List<ChatMessageModel> result = new ArrayList<ChatMessageModel>();
	    for(Map <String, Object> row:rows){
	    	ChatMessageModel rec = new ChatMessageModel();
	    	
	        result.add(rec);
	    }
	    return result;
	}
	@Override
	public void addMessage(ChatMessageModel ChatMessageModel) {
		String sql = "INSERT INTO record " +"(data) VALUES (?)" ;
        this.getJdbcTemplate().update(sql, new Object[]{});
		
	}

	
}
