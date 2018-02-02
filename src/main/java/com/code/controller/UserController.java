package com.code.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.code.model.UserSignupBeanIn_C001;
import com.code.service.UserService;

@RestController
@RequestMapping(value = "/users")
public class UserController {
	UserService userService;
	@Autowired
	public UserController(UserService userService) {
		this.userService=userService;
	}
	@RequestMapping(value = "/sign_up",method = RequestMethod.POST)
	public @ResponseBody Map<String,Object> addUser(ModelMap model,HttpServletRequest request,@RequestBody UserSignupBeanIn_C001 input){
		UserSignupBeanIn_C001 record =  input;
        record.setEnabled(true);
        record.setUsername(input.getEmail());
        record.setRegdate(DateFormatUtils.format(new Date(), "yyyyMMddHHmmss"));
        record.setUsercd(UUID.randomUUID().toString()+DateFormatUtils.format(new Date(), "yyyyMMddHHmmss"));
        userService.AddUser(record); 
        return new HashMap<String,Object>(){
            {
                put("SUCCES","Save complete");
                put("SMS","Welcome ngday online!");
                put("ROLE_REC",record);
            }
        };
	}
	
/*	public String userCd(){
		Random r = new Random(System.currentTimeMillis());
	    int pick = 100000000 + r.nextInt(200000000);
	    System.out.println(pick);
		return ""+pick;	
	}*/
	public String nowDateTime(){
		DateFormat dateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
		Date date = new Date();
		
		return dateFormat.format(date);
	}
		 
}
