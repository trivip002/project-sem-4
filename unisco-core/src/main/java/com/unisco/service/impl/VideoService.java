package com.unisco.service.impl;

import com.unisco.entity.VideoEntity;
import com.unisco.repository.VideoRepository;
import com.unisco.service.IVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VideoService implements IVideoService {

    @Autowired
    private VideoRepository videoRepository;

    @Override
    public List<VideoEntity> getAll() {
        return videoRepository.findAll();
    }
}
