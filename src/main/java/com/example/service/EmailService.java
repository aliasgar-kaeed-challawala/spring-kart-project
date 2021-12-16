package com.example.service;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.commons.io.FilenameUtils;

public class EmailService {

    // Sender's components.email ID needs to be mentioned
    private final String from = "springkart007@gmail.com";

    // Assuming you are sending components.email from through gmails smtp
    private final String host = "smtp.gmail.com";

    // Get system properties
    private Properties properties = System.getProperties();

    private Session session;
    private MimeMessage message;

     public void sendInvoice(String ToMail, String msg, String attachmentPath){

            String to=ToMail;

            Properties props = System.getProperties();
            props.put("mail.smtp.host","smtp.gmail.com");
            props.put("mail.smtp.auth", true);
            props.put("mail.smtp.starttls.enable", true);
            props.put("mail.smtp.host", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.smtp.ssl.protocols", "TLSv1.2");

            Session session = Session.getDefaultInstance(props,
                    new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                            return new PasswordAuthentication(from,"springkart@123");
                        }
                    });

            try{
                MimeMessage message = new MimeMessage(session);
                message.setFrom(new InternetAddress(from));
                message.addRecipient(MimeMessage.RecipientType.TO,new InternetAddress(to));
                message.setSubject("Email with attachment");


                BodyPart messageBodyPart1 = new MimeBodyPart();
                messageBodyPart1.setText(msg);


                MimeBodyPart messageBodyPart2 = new MimeBodyPart();

                String filename = attachmentPath;
                String fileName = FilenameUtils.getName(filename);
                DataSource source = new FileDataSource(filename);
                messageBodyPart2.setDataHandler(new DataHandler(source));
                messageBodyPart2.setFileName(fileName);


                Multipart multipart = new MimeMultipart();
                multipart.addBodyPart(messageBodyPart1);
                multipart.addBodyPart(messageBodyPart2);

                message.setContent(multipart );

                Transport.send(message);

                System.out.println("mail with attachment sent....");
            }catch (MessagingException ex) {ex.printStackTrace();}

    }


}