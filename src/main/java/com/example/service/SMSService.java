package com.example.service;


import com.twilio.Twilio;

public class SMSService {
    public String smsSender(String toNumber) {
        final String ACCOUNT_SID = "AC1aae5966cb339c0311a89dcef181877a";
        final String AUTH_TOKEN = "f7d325d3a879209407181f16d8cc7d46";


        Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
       
//        Message message = Message
//                .creator(new PhoneNumber(toNumber),
//                        new PhoneNumber("+12182198505"),
//                        otp)
//                .create();
//        System.out.println("sms sent"+message.getSid());
        return "..";
    }
}
