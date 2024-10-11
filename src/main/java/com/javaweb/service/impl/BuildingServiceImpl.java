package com.javaweb.service.impl;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.model.response.ResponseDTO;

import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
import com.javaweb.service.BuildingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import java.util.List;

@Service
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private UserRepository userRepository;
    @Override
    public ResponseDTO listStaffs(Long buildingId) {
       BuildingEntity building = buildingRepository.findById(buildingId).get();
       List<UserEntity> staffs=userRepository.findByStatusAndRoles_Code(1,"STAFF");
       List<UserEntity> staffAssignment= building.getUserEntities();
       List<StaffResponseDTO> staffResponseDTOS=new ArrayList<>();
       ResponseDTO responseDTO=new ResponseDTO();
       for(UserEntity item:staffs){
           StaffResponseDTO staffResponseDTO=new StaffResponseDTO();
           staffResponseDTO.setFullName(item.getFullName());
           staffResponseDTO.setStaffId(item.getId());
           if(staffAssignment.contains(item)){
               staffResponseDTO.setChecked("checked");
           } else{
               staffResponseDTO.setChecked("");
           }
           staffResponseDTOS.add(staffResponseDTO);
       }
       responseDTO.setData(staffResponseDTOS);
       responseDTO.setMessage("success");
       return responseDTO;
    }
}
