package com.unisco.controller.api;

import com.unisco.anotation.Authorization;
import com.unisco.dto.ChatMessage;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.Payload;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.messaging.simp.SimpMessageHeaderAccessor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/api/home")
    @Authorization(hasAnyPermission = {"CAN_ACCESS_TO_ADMIN_PAGE","CAN_ACCESS_TO_USER_PAGE"})
    public String helloUser(){
        return "hello user!";
    }

    @GetMapping("/api/admin/home")
    @Authorization(hasRole = "ROLE_ADMIN")
    public String helloAdmin(){
        return "hello admin!";
    }

    @MessageMapping("/user")
    @SendTo("/topic/user")
    public Object greeting(String message) throws Exception {
        //Thread.sleep(1000); // simulated delay
        return message;
    }
    @MessageMapping("/chat.sendMessage")
    @SendTo("/topic/public")
    public ChatMessage sendMessage(@Payload ChatMessage chatMessage) {
        return chatMessage;
    }

    @MessageMapping("/chat.addUser")
    @SendTo("/topic/public")
    public ChatMessage addUser(@Payload ChatMessage chatMessage,
                               SimpMessageHeaderAccessor headerAccessor) {
        // Add username in web socket session
        headerAccessor.getSessionAttributes().put("username", chatMessage.getSender());
        return chatMessage;
    }
}
