package fp.member.service;

import java.io.File;
import java.io.UnsupportedEncodingException;

import javax.mail.MessagingException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

@Service
public class MailServiceImpl implements MailService {
   private Log log = LogFactory.getLog(MailServiceImpl.class);
   
   @Autowired
   private JavaMailSender mailSender;
   
   public void setMailSender(JavaMailSender mailSender) {
      this.mailSender = mailSender;
   }
   @Override
   public boolean send(String subject, String text, String from, String to, String filePath) {
      MimeMessage message= mailSender.createMimeMessage();
      try {
         MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
         helper.setSubject(subject);
         helper.setText(text, true);
         helper.setFrom(new InternetAddress("baramoss420@gmail.com", "하이파이브")); // 보내는 사람 지정
         //helper.setFrom(from);
         helper.setTo(to);
         
         //첨부파일처리
         if(filePath != null) {
            File file = new File(filePath);
            if(file.exists()) {
               helper.addAttachment(file.getName(), new File(filePath));
            }
         }
         mailSender.send(message);
         return true;
      }catch(MessagingException e) {
         e.printStackTrace();
      } catch (UnsupportedEncodingException e) {
		e.printStackTrace();
	}
      return false;
   }

}
