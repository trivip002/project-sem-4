package com.unisco.service;

import com.unisco.entity.VideoEntity;

import java.util.List;

public interface IVideoService {
    List<VideoEntity> getAll();
    VideoEntity getOneById(Long id);
    void saveOrUpdate(VideoEntity videoEntity);
}
