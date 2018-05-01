package com.code.comm;
import java.io.IOException;
import java.security.GeneralSecurityException;

import com.google.api.client.auth.oauth2.Credential;
import com.google.api.client.googleapis.javanet.GoogleNetHttpTransport;
import com.google.api.client.http.HttpTransport;
import com.google.api.client.json.JsonFactory;
import com.google.api.client.json.jackson2.JacksonFactory;
import com.google.api.services.storage.Storage;

public class GcdUtil {
	public static Storage getStorageConfig() throws GeneralSecurityException, IOException{
		HttpTransport httpTransport = GoogleNetHttpTransport.newTrustedTransport();
	    JsonFactory jsonFactory = JacksonFactory.getDefaultInstance();
	    Credential credential = CredentialsProvider.authorize(httpTransport, jsonFactory);
	    Storage storage = new Storage.Builder(httpTransport, jsonFactory, credential)
	        .setApplicationName("Google-ObjectsUploadExample/1.0").build();
		return storage;
	}

}
