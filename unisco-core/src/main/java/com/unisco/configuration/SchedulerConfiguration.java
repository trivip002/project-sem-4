package com.unisco.configuration;

import com.unisco.dto.ChatMessage;
import lombok.extern.java.Log;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;

@EnableScheduling
@Configuration
@Log
public class SchedulerConfiguration {

    @Autowired
    SimpMessagingTemplate template;

    @Scheduled(fixedDelay = 3000)
    public void sendAdhocMessages() {
        ChatMessage chatMessage = new ChatMessage();
        chatMessage.setContent("Fixed Delay Scheduler");
        chatMessage.setSender("trivip002");
        template.convertAndSend("/topic/public", chatMessage);
    }
}
