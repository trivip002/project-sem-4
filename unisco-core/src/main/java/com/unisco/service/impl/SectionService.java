package com.unisco.service.impl;

import com.unisco.repository.SectionRepository;
import com.unisco.service.ISectionService;
import org.springframework.beans.factory.annotation.Autowired;

public class SectionService implements ISectionService {

    @Autowired
    private SectionRepository sectionRepository;
}
