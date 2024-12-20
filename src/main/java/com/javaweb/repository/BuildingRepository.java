package com.javaweb.repository;

import com.javaweb.entity.BuildingEntity;
import com.javaweb.repository.custom.BuildingRepositoryCustom;
import org.springframework.data.jpa.repository.JpaRepository;

public interface BuildingRepository extends JpaRepository<BuildingEntity,Long>, BuildingRepositoryCustom {
      BuildingEntity findById(long id);
}
