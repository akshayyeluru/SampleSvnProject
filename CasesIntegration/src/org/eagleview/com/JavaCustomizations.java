package org.eagleview.com;

import com.tibco.security.AXSecurityException;
import com.tibco.security.ObfuscationEngine;



public class JavaCustomizations {
public static String replaceAvatarUrl(String TicketRequest){
		
		String a48=TicketRequest.replace("48x48", "a48x48");
		String a24=a48.replace("24x24", "a24x24");
		String a16=a24.replace("16x16","a16x16" );
		String TicketResponse=a16.replace("32x32","a32x32" );
		
		return TicketResponse;
	
	}
public static String decryptPassword(String Password) throws AXSecurityException{
	String DecryptedPassword=new String(ObfuscationEngine.decrypt(Password));
	
	return DecryptedPassword;
}
}
