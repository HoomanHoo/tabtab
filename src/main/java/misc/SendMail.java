package misc;


import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


public class SendMail {
	public void sendMail(String email, String result) {
		final String myEmail = "whgusgh111@naver.com";
		final String myPasswd = "whgusgh2";
		
		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.port", 465);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");
		prop.setProperty("mail.smtp.ssl.protocols", "TLSv1.2");
		System.setProperty("jdk.tls.client.protocols", "TLSv1.2");

		
		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(myEmail, myPasswd);
			}
		});
		
		MimeMessage message = new MimeMessage(session);
		
		
		try {
			message.setFrom(new InternetAddress(myEmail)); //내 메일 주소
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(email));
			message.setSubject("tabtab 비밀번호 찾기");
			message.setText(email + "회원님의 비밀번호는 " + result + "입니다");
			
			Transport.send(message);
			
		} catch (AddressException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
