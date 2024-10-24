package com.javaweb.converter;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.enums.District;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.BuildingSearchResponse;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.stream.Collectors;

@Component
public class BuildingSearchResponseConverter {
    @Autowired
    private ModelMapper modelMapper;

    public BuildingSearchResponse toBuildingSearchResponse(BuildingEntity buildingEntity){
        BuildingSearchResponse buildingSearchResponse = modelMapper.map(buildingEntity, BuildingSearchResponse.class);

        List<RentAreaEntity> rentAreaEntities = buildingEntity.getRentAreas();
        String rentarea = rentAreaEntities.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(","));
        Map<String, String > districts = District.type();
        String districtName = "";
        if(buildingEntity.getDistrict() != null && !Objects.equals(buildingEntity.getDistrict(), "")){
            districtName = districts.get(buildingEntity.getDistrict());
        }
        if(districtName != null && !Objects.equals(districtName, "")){
            buildingSearchResponse.setAddress(buildingEntity.getStreet() + ", " + buildingEntity.getWard() + ", "+ District.valueOf(buildingEntity.getDistrict()).getDistrictName());
        }
        buildingSearchResponse.setRentArea(rentarea);

        return buildingSearchResponse;
    }
}
