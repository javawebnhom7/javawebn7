package com.javaweb.service;

import org.springframework.stereotype.Service;

import java.util.List;


public interface RentAreaService {

    void deleteByBuildings(List<Long> ids);
}
