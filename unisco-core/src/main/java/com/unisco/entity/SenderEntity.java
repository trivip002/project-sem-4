package com.unisco.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.io.Serializable;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class SenderEntity implements Serializable {
    private Long id;
    private String fullName;
    private String email;
    private String phone;
    private String msgContent;
}
