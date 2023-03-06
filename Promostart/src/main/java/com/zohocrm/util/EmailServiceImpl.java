package com.zohocrm.util;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
@Component
public class EmailServiceImpl implements EmailService {
	@Autowired
	JavaMailSender javaMailSender;

	@Override
	public void sendEmail(String to, String subject, String message) {
		// TODO Auto-generated method stub
SimpleMailMessage m=new SimpleMailMessage();
m.setTo(to);
m.setSubject(subject);
m.setText(message);
javaMailSender.send(m);
	}

}
