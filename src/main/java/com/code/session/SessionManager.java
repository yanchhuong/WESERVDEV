package com.code.session;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.code.model.UserSessionBean;

public class SessionManager {
	private final static String SESSION_ATTRIBUTE= "USER";
	
	@SuppressWarnings("unused")
	public static UserSessionBean getSession(HttpServletRequest  request, HttpServletResponse respond){
		HttpSession session = request.getSession(true);
		UserSessionBean userSession = (UserSessionBean)session.getAttribute(SESSION_ATTRIBUTE);
		return userSession;
	}
	
	public static void setSession(HttpServletRequest  request, HttpServletResponse respond,UserSessionBean user){
		HttpSession session = request.getSession(true);
		session.setAttribute(SESSION_ATTRIBUTE, user);
	}
	
    public static void logout(HttpServletRequest request, HttpServletResponse respond){
    	HttpSession session = request.getSession(true);
    	session.removeAttribute(SESSION_ATTRIBUTE);
    }
}
