package com.unisco.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "student")
public class StudentEntity implements Serializable {

    private static final long serialVersionUID = 7225350355171739625L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "student_id")
    private Long studentId;

    @Column(name = "student_email")
    private String studentEmail;

    @Column(name = "student_firstname")
    private String studenFirstName;

    @Column(name = "student_lastname")
    private String studentLastName;

    @Column(name = "dob")
    private String dob;

    @Column(name = "phone_number")
    private String phoneNumber;

    @Column(name = "state")
    private int state;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private UserEntity studentAccount;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "student")
    private Set<AttendanceEntity> lstAttendances = new HashSet<>();

    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(name = "student_classroom",
            joinColumns = {@JoinColumn(name = "student_id")},
            inverseJoinColumns = {@JoinColumn(name = "classroom_id")})
    private Set<ClassroomEntity> classrooms = new HashSet<>();

}
