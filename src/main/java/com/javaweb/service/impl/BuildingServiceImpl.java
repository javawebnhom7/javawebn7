package com.javaweb.service.impl;

import com.javaweb.converter.BuildingDTOtoEntityConverter;
import com.javaweb.converter.BuildingSearchResponseConverter;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;

import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.BuildingService;

import com.javaweb.service.RentAreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingSearchResponseConverter buildingSearchResponseConverter;
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private UserRepository userRepository;

    @Autowired
    private RentAreaService rentAreaService;

    @Autowired
    private BuildingDTOtoEntityConverter buildingDTOtoEntityConverter;
    @Override
    public List<BuildingSearchResponse> findAll(BuildingSearchRequest buildingSearchRequest) {
        List<BuildingEntity> buildingEntities = buildingRepository.findAll(buildingSearchRequest);
        List<BuildingSearchResponse> result = new ArrayList<>();
        for(BuildingEntity item: buildingEntities) {
            BuildingSearchResponse building = buildingSearchResponseConverter.toBuildingSearchResponse(item);
            result.add(building);
        }
        return result;
    }

    @Override
    public void deleteBuildings(List<Long> ids) {
        rentAreaService.deleteByBuildings(ids);

        for(Long id : ids){
            buildingRepository.deleteById(id);
        }
    }

    @Override
    public void addOrUpdateBulding(BuildingDTO buildingDTO) {
        if(buildingDTO.getId()==null){
            BuildingEntity buildingEntity=buildingDTOtoEntityConverter.toBuildingEntity(buildingDTO);
            buildingRepository.save(buildingEntity);
        } else {
            BuildingEntity buildingEntity = buildingRepository.findById(buildingDTO.getId()).get();
            buildingEntity = buildingDTOtoEntityConverter.toBuildingEntity(buildingDTO);
            buildingRepository.save(buildingEntity);
        }
    }


}