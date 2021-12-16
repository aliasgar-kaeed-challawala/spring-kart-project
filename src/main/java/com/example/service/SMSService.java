package com.example.service;


import com.twilio.Twilio;
import com.twilio.rest.api.v2010.account.Message;

public class SMSService {
	// Find your Account SID and Auth Token at twilio.com/console
	// and set the environment variables. See http://twil.io/secure
	public static final String ACCOUNT_SID = "AC1aae5966cb339c0311a89dcef181877a";
	public static final String AUTH_TOKEN = "572e2c4168c5657146f9e62a649074c7";

	public void sendSMS(String toNumber) {
		Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
		Message message = Message.creator(
						new com.twilio.type.PhoneNumber(toNumber),
						new com.twilio.type.PhoneNumber("+13187311744"),
						"Hi.Greetings from SpringKart..This is a confirmation message for your order.Thanks for ordering on SpringKart.")
				.create();

		System.out.println(message.getSid());
	}
}