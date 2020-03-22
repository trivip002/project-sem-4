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
@Table(name = "exam")
public class ExamEntity implements Serializable {

    private static final long serialVersionUID = -7222599363469792646L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "exam_id")
    private Long examId;

    @Column(name = "exam_name")
    private String examName;
}
