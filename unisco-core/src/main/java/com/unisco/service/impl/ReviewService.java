package com.unisco.service.impl;

import com.unisco.entity.ReviewEntity;
import com.unisco.repository.ReviewRepository;
import com.unisco.service.IReviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class ReviewService implements IReviewService {
    @Autowired
    private ReviewRepository reviewRepository;

    public ReviewService(ReviewRepository reviewRepository) {
        this.reviewRepository = reviewRepository;
    }

    public List<ReviewEntity> getAll() {
        return reviewRepository.findAll();
    }

    public List<ReviewEntity> getByNameLike(String review) {
        return reviewRepository.findByCourse_CourseNameLike(review);
    }
}
