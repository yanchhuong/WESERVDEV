package com.code.service.impl;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.util.Arrays;

import org.springframework.web.multipart.MultipartFile;


import com.google.api.client.http.InputStreamContent;
import com.google.api.services.storage.Storage;
import com.google.api.services.storage.model.ObjectAccessControl;
import com.google.api.services.storage.model.StorageObject;

public class UploadGoogleCloudServiceImp {
 
	  public static StorageObject uploadSimple(Storage storage, String bucketName, String objectName,
			  MultipartFile data,String contentType ) throws FileNotFoundException, IOException {
		    return uploadSimple(storage, bucketName, objectName, data.getInputStream(),
		    		contentType);
	  }

	  public static StorageObject uploadSimple(Storage storage, String bucketName, String objectName,
	      InputStream data, String contentType) throws IOException {
	    InputStreamContent mediaContent = new InputStreamContent(contentType, data);
	
	    Storage.Objects.Insert insertObject = storage.objects().insert(bucketName, null, mediaContent)
	        .setName(objectName);

	    // The media uploader gzips content by default, and alters the Content-Encoding accordingly.
	    // GCS dutifully stores content as-uploaded. This line disables the media uploader behavior,
	    // so the service stores exactly what is in the InputStream, without transformation.
	    insertObject.getMediaHttpUploader().setDisableGZipContent(true);
	    return insertObject.execute();
	  }
	  public static StorageObject uploadFileAndSharePublicly(Storage storage, MultipartFile data,String bucketName,String objectName,String contentType) throws IOException,
      			GeneralSecurityException {
		       InputStreamContent contentStream = new InputStreamContent(contentType, data.getInputStream());
		  // Setting the length improves upload performance
		  contentStream.setLength(data.getSize());
		  StorageObject objectMetadata = new StorageObject()
		          // Set the destination object name
		          .setName(objectName)
		          // Set the access control list to publicly read-only
		          .setAcl(Arrays.asList(
		                  new ObjectAccessControl().setEntity("allUsers").setRole("READER")));
		
		    Storage.Objects.Insert insertRequest = storage.objects().insert(
		          bucketName, objectMetadata, contentStream);
         return insertRequest.execute();
      }
	  public static StorageObject uploadWithMetadata(Storage storage, StorageObject object,
	      InputStream data) throws IOException {
	    InputStreamContent mediaContent = new InputStreamContent(object.getContentType(), data);
	    Storage.Objects.Insert insertObject = storage.objects().insert(object.getBucket(), object,
	        mediaContent);

	    insertObject.getMediaHttpUploader().setDisableGZipContent(true);
	    return insertObject.execute();
	  }
	  public static boolean deleteBlob(Storage storage, String bucketName, String objectName){
		  Storage.Objects.Delete removeObject;
		  boolean result = false;
		try {
			removeObject = storage.objects().delete(bucketName, objectName);
			removeObject.execute();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		 return true;
	  }
	  
}
