package com.yc.vote.test;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:spring.xml")
public class JavaMailSenderTest {
    @Autowired
	private JavaMailSender javaMailSender;
    
    @Test
    public void testSendEmail(){
    	SimpleMailMessage smm = new SimpleMailMessage();
    	smm.setFrom("studymail_test@163.com");
    	smm.setTo("1274421194@qq.com");
    	smm.setSubject("拿我耳机来");
    	smm.setText("快拿我耳机来，不然发爆你邮箱");
    	
    	javaMailSender.send(smm);
    	System.out.println("邮件发送成功");
    }
    
    @Test
    public void testSendEmail2(){
    	MimeMessage mm = javaMailSender.createMimeMessage();
    	try {
			MimeMessageHelper smm = new MimeMessageHelper(mm,true);
			smm.setFrom("studymail_test@163.com");
			smm.setTo("178174448@qq.com");
			smm.setSubject("拿我耳机来");
			smm.setText("快拿我耳机来，不然发爆你邮箱<br>"
					+"<a href='http://www.baidu.com'>sdfsdfsdf</a><br>"
					+"<img src='cid:pic123'/>",true);
			
			FileSystemResource fsr = new FileSystemResource("d:/a.jpg");
			smm.addInline("pic123", fsr);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	javaMailSender.send(mm);
    	System.out.println("邮件发送成功");
    }
}
