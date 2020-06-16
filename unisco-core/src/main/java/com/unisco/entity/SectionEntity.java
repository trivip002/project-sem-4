package com.unisco.entity;

import com.unisco.entity.base.BaseEntity;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;

@Entity
@Table(name = "section")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class SectionEntity extends BaseEntity implements Serializable {

    private static final long serialVersionUID = -6540524629751310444L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "section_id")
    private Long sectionId;

    @Column(name = "section_title")
    private String sectionTitle;

    @Column(name = "section_description")
    private String sectionDescription;

    @Column(name = "section_duration")
    private String sectionDuration;

    //relation between course & section
    @ManyToOne(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinColumn(name = "course_id")
    private CourseEntity course;

    //relation between section & video
    @OneToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER, mappedBy = "section")
    private Set<VideoEntity> videos = new HashSet<>();

}
