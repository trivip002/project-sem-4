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
@Table(name = "exam_type")
public class ExamTypeEntity implements Serializable {

    private static final long serialVersionUID = -2551195431156281095L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "exam_type_id")
    private Long examId;

    @Column(name = "exam_type_name")
    private String examTypeName;

    @Column(name = "exam_type_description")
    private String examTypeDescription;
}
