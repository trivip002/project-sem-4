package com.unisco.service.impl;

import com.unisco.entity.CategoryEntity;
import com.unisco.repository.CategoryRepository;
import com.unisco.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CategoryService implements ICategoryService {

    @Autowired
    private CategoryRepository categoryRepository;

    @Override
    public List<CategoryEntity> getAll() {
        return categoryRepository.findAll();
    }

    @Override
    public CategoryEntity getById(Long id) {
        return categoryRepository.findOne(id);
    }
}
