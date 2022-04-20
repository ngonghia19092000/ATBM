package com.tnt.laptrinhjavaweb.utils;

import com.tnt.laptrinhjavaweb.model.UserModel;

import javax.mail.*;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import java.io.UnsupportedEncodingException;
import java.util.Properties;
import java.util.Random;
import java.util.ResourceBundle;

public class SendMail {
    ResourceBundle resourceBundle = ResourceBundle.getBundle("mail");


    public String getRandom() {
        Random rnd = new Random();
        int number = rnd.nextInt(999999);
        return String.format("%06d", number);
    }

    public boolean sendMail(UserModel user) {

        boolean result = false;

        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");

        String username = resourceBundle.getString("username");
        String password = resourceBundle.getString("password");


        Session session = Session.getInstance(props,
                new javax.mail.Authenticator() {
                    protected PasswordAuthentication getPasswordAuthentication() {
                        return new PasswordAuthentication(username, password);
                    }
                });

        Message message = new MimeMessage(session);

        try {
            message.setFrom(new InternetAddress("taiem111.cn@gmail.com", "Jadusona"));
            message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(user.getEmail()));
            message.setSubject("Account verification");
            message.setText("Your verification code is: " + user.getCode());
            Transport.send(message);
            result = true;

        } catch (MessagingException | UnsupportedEncodingException e) {
            e.printStackTrace();
        }


        return result;
    }

}
