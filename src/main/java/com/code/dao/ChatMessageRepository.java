package com.code.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.repository.CrudRepository;

import com.code.model.ChatMessageModel;


 
public interface ChatMessageRepository {
	public List<ChatMessageModel> getMessages(int messageIndex);
	public void addMessage(ChatMessageModel ChatMessageModel) ;
    
}