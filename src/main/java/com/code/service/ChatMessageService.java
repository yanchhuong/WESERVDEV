package com.code.service;

import java.util.List;

import com.code.model.LiveChatBean;
import com.code.model.UserListChatBean_In001;
import com.code.model.UserListChatBean_Out001;

public interface ChatMessageService {
	
	public void addMessage(LiveChatBean ChatMessage) ;
	public List<UserListChatBean_Out001> getUserListChat(UserListChatBean_In001 input);
}
