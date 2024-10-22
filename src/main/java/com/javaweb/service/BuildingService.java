package com.javaweb.service;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.response.ResponseDTO;

public interface BuildingService {
   ResponseDTO listStaffs(Long buildingId);
   BuildingEntity getBuildingById(Long buildingId);
}
