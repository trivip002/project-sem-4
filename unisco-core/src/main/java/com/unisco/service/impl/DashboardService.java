package com.unisco.service.impl;

import com.unisco.repository.DashBoardRepository;
import com.unisco.repository.DashBoardRepository2;
import com.unisco.repository.DashBoardRepository3;
import com.unisco.repository.DashBoardRepository4;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class DashboardService {
    @Autowired
    private DashBoardRepository dashBoardRepository;

    public Float getOrderUnitPrice() {
        return dashBoardRepository.selectTotal();
    }

    @Autowired
    private DashBoardRepository2 dashBoardRepository2;

    public int getCourseName() {
        return dashBoardRepository2.selectTotalCourse();
    }

    @Autowired
    private DashBoardRepository3 dashBoardRepository3;

    public int getUser() {
        return dashBoardRepository3.selectTotalUser();
    }

    @Autowired
    private DashBoardRepository4 dashBoardRepository4;

    public int getPromotion() {
        return dashBoardRepository4.selectTotalPromotion();
    }
}
