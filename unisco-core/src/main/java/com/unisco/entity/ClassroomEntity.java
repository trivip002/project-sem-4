package com.unisco.entity;

import lombok.*;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Getter
@Setter
@Entity
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode
@Table(name = "classroom")
public class ClassroomEntity implements Serializable {

    private static final long serialVersionUID = 8270273070840312850L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "classroom_id")
    private Long classroomId;

    @Column(name = "classroom_selection")
    private String classroomSelection;

    @Column(name = "classroom_remarks")
    private String classroomRemarks;

    @Column(name = "state")
    private int state;

    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "grade_id")
    private GradeEntity gradeOfClassroom;

    @ManyToMany(cascade = {CascadeType.DETACH,CascadeType.PERSIST,CascadeType.REFRESH,CascadeType.REMOVE}, mappedBy = "classrooms", fetch = FetchType.EAGER)
    private Set<StudentEntity> students = new HashSet<>();
}
