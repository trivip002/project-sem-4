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
@Table(name = "grade")
public class GradeEntity implements Serializable {

    private static final long serialVersionUID = -1263950773468446163L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "grade_id")
    private Long gradeId;

    @Column(name = "grade_name")
    private String gradeName;

    @Column(name = "grade_description")
    private String gradeDescription;

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "gradeOfCourse")
    private Set<CourseEntity> lstGradeOfCourse = new HashSet<>();

    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "gradeOfClassroom")
    private Set<ClassroomEntity> lstGradeOfClassroom = new HashSet<>();
}
