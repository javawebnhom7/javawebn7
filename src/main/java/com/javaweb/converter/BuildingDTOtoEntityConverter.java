package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.enums.District;
import com.javaweb.model.dto.BuildingDTO;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
@Component
public class BuildingDTOtoEntityConverter {
    @Autowired
    private ModelMapper modelMapper;

    public BuildingEntity toBuildingEntity(BuildingDTO dto) {
        BuildingEntity buildingEntity = modelMapper.map(dto, BuildingEntity.class);
        String rentAreaStr = dto.getRentArea();
        String[] a=rentAreaStr.trim().split(",");
        ArrayList<RentAreaEntity> rentAreaEntities = new ArrayList<>();
        for(String x:a){
            if(x.trim()!="") {
                RentAreaEntity renttmp = new RentAreaEntity();
                renttmp.setValue(x.trim());
                renttmp.setBuilding(buildingEntity);
                rentAreaEntities.add(renttmp);
            }
        }
        buildingEntity.setRentAreas(rentAreaEntities);


        String typeCode= dto.getTypeCode().stream().map(it -> it).collect(Collectors.joining(","));
        buildingEntity.setTypeCode(typeCode.substring(1));

        return buildingEntity;
    }
}
