package com.javaweb.api.admin;

import com.javaweb.converter.BuildingDTOtoEntityConverter;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.AssignmentBuildingDTO;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.service.BuildingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value="buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private BuildingService buildingService;
    @Autowired
    private BuildingDTOtoEntityConverter buildingDTOtoEntityConverter;
    @PostMapping
    public void addOrUpdateBuilding(@RequestBody BuildingDTO buildingDTO){
        if(buildingDTO.getId()==null){
            BuildingEntity buildingEntity=buildingDTOtoEntityConverter.toBuildingEntity(buildingDTO);
            buildingRepository.save(buildingEntity);
        } else {
            BuildingEntity buildingEntity = buildingRepository.findById(buildingDTO.getId()).get();
            buildingEntity = buildingDTOtoEntityConverter.toBuildingEntity(buildingDTO);
            buildingRepository.save(buildingEntity);
        }
    }


    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids){
        System.out.println("da xoa");
    }

    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id){
        ResponseDTO result=buildingService.listStaffs(id);
        return result;
    }

    @PostMapping("/assignment")
    public void updateAssignment(@RequestBody AssignmentBuildingDTO assignmentBuildingDTO){
        System.out.println("ok");
    }
}