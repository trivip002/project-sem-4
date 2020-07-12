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

    public CategoryEntity findOneByCateId(Long cateId) {
        return categoryRepository.findOne(cateId);
    }

    public CategoryEntity save(CategoryEntity cate){
        return categoryRepository.save(cate);
    }

    public List<CategoryEntity> getByNameLike(String cateName) {
        return categoryRepository.findByCateNameLike(cateName);
    }
}
