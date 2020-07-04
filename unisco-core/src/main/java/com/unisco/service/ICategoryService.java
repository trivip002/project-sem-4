package com.unisco.service;

import com.unisco.entity.CategoryEntity;

import java.util.List;

public interface ICategoryService {
    List<CategoryEntity> getAll();

    CategoryEntity getById(Long id);
}
