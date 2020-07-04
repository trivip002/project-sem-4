package com.unisco.service.impl;
import com.unisco.entity.CategoryEntity;
import com.unisco.repository.CategoryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class CategoryService {
    @Autowired
    private CategoryRepository categoryRepository;

    public CategoryEntity findOneByCateId(Long cateId) {
        return categoryRepository.findOne(cateId);
    }
    public List<CategoryEntity> getAll() {
        return categoryRepository.findAll();
    }

    public CategoryEntity save(CategoryEntity cate){
        return categoryRepository.save(cate);
    }

}
