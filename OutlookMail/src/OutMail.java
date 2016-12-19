import java.util.Arrays;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import com.tibco.security.AXSecurityException;
import com.tibco.security.ObfuscationEngine;
public class OutMail {
public static String main(String From,String To,String password,String host,String port,String subject,String body) throws AXSecurityException {
String Msg;

System.out.print("encrypted password"+password);
String Pass = new String(ObfuscationEngine.decrypt(password));

Properties props = new Properties();
props.put("mail.smtp.auth", "true");
props.put("mail.smtp.starttls.enable", "true");
props.put("mail.smtp.host", host);
props.put("mail.smtp.port", port);
Session session = Session.getInstance(props,
new javax.mail.Authenticator() {
protected PasswordAuthentication getPasswordAuthentication() {
return new PasswordAuthentication(From, Pass);
}
});
try {
Message message = new MimeMessage(session);
message.addHeader("Content-type", "text/HTML; charset=UTF-8");
message.setFrom(new InternetAddress(From));
message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(To));
message.setSubject(subject);
message.setContent(body,"text/html");
Transport.send(message);
System.out.println("Sent");
Msg="Sent";
} catch (MessagingException e) {
 System.err.println("Error Sending: ");

e.printStackTrace();
Msg="ErrorSending" +Arrays.toString(e.getStackTrace());

}
return Msg;
}
}