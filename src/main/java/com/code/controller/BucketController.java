package com.code.controller;


import java.io.IOException;
import java.security.GeneralSecurityException;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.lang3.time.DateFormatUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.code.comm.GcdUtil;
import com.code.comm.StringUtils;
import com.code.model.FileBean;
import com.code.model.FileUploadBean;
import com.code.service.IFileImageService;
import com.code.service.impl.UploadGoogleCloudServiceImp;
import com.google.api.services.storage.Storage;
import com.google.api.services.storage.model.StorageObject;



@RestController
@RequestMapping("/google_cloud")
public class BucketController {

        @Autowired
	    private  IFileImageService iFileImage;
	
	    @RequestMapping(value = "/upload_file", method = RequestMethod.POST, produces=MediaType.APPLICATION_JSON_VALUE)
	    public @ResponseBody Map<String,Object> test(MultipartHttpServletRequest request) throws GeneralSecurityException, IOException{ 
		    Storage storage = GcdUtil.getStorageConfig();
		   
		    FileUploadBean ufile = new FileUploadBean();

	    	Iterator<String> itr =  request.getFileNames();
	    	MultipartFile mpf = request.getFile(itr.next());  
	    	String fileName = DateFormatUtils.format(new Date(), "yyyyMMdd") + "_"+ UUID.randomUUID().toString() + "." + FilenameUtils.getExtension(mpf.getOriginalFilename());
		    StorageObject object = UploadGoogleCloudServiceImp.uploadFileAndSharePublicly(storage,mpf, "g9bay-file", fileName,mpf.getContentType());
		    
		    ufile.setSize(mpf.getBytes().length);
    		ufile.setRegdate(DateFormatUtils.format(new Date(), "yyyyMMddhhmmss"));
    		ufile.setType(mpf.getContentType());
    		ufile.setRandname(fileName);
    		
    		HashMap<String,Object>  result =new HashMap<String,Object>();
    		
    		result.put("OJECT", object);
    		result.put("OUT_REC",ufile);
    		result.put("RANDNAME",fileName);
		  
	    	return result;
	    }
	    	    
	    @RequestMapping(value = "/remove_file", method = RequestMethod.POST)
	    public @ResponseBody Map<String,Object> removeImage(@RequestBody FileBean obj) throws GeneralSecurityException, IOException{ 
		    Storage storage = GcdUtil.getStorageConfig();
		    String sms ="";
		    if(isNullOrBlank(obj.getBucketName()) && isNullOrBlank(obj.getObjectName())){
		    	  sms ="Bucket name and object name is require! ";
		    }else{
		    	 boolean object = false;  
		    	 object = UploadGoogleCloudServiceImp.deleteBlob(storage, obj.getBucketName(), obj.getObjectName());
		    	 if(object){
				    	sms = "file is deleted";
				    }else{
				    	sms = "file not found";
				 }
		    }

		    HashMap<String,Object>  result =new HashMap<String,Object>();
		    result.put("SMS", sms);
			return result;
	    }
	    public static boolean isNullOrBlank(String s)
	    {
	      return (StringUtils.isNull(s) || s.trim().equals(""));
	    }

}