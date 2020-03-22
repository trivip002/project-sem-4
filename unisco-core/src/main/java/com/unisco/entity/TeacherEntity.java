package com.unisco.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "teacher")
public class TeacherEntity implements Serializable {

    private static final long serialVersionUID = 2031758603939014847L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "teacher_id")
    private Long teacherId;

    @Column(name = "teacher_email")
    private String teacherEmail;

    @Column(name = "teacher_firstname")
    private String teacherFirstName;

    @Column(name = "teacher_lastname")
    private String teacherLastName;

    @Column(name = "dob")
    private String dob;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "state")
    private int state;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private UserEntity teacherAccount;
}
