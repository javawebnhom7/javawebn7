package com.javaweb.entity;

import javax.persistence.*;
import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="building")
public class BuildingEntity extends BaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name")
    private String name;

    @Column(name = "street")
    private String street;

    @Column(name = "ward")
    private String ward;

    @Column(name = "district")
    private String district;

    @Column(name = "numberfloor")
    private Long numberFloor;

    @Column(name = "floor")
    private Long floor;

    @Column(name = "floorarea")
    private Long floorArea;

    @Column(name = "direction")
    private String direction;

    @Column(name = "level")
    private String level;

    @Column(name = "rentprice")
    private Long rentPrice;

    @Column(name = "rentpricedescription")
    private String rentPriceDes;

    @Column(name = "servicefee")
    private Long serviceFee;

    @Column(name = "carfee")
    private Long carFee;

    @Column(name = "motofee")
    private Long motoFee;

    @Column(name = "electricityfee")
    private Long electricFee;

    @Column(name = "deposit")
    private String deposit;

    @Column(name = "renttime")
    private String rentTime;

    @Column(name = "type")
    private String typeCode;

    @Column(name = "note")
    private String note;

    @Column(name = "managername")
    private String managerName;

    @Column(name = "managerphone")
    private String managerPhone;

    @Column(name = "avatar")
    private String avatar;

    @OneToMany(mappedBy="building",fetch=FetchType.LAZY, cascade = {CascadeType.PERSIST, CascadeType.MERGE},orphanRemoval = true)
    private List<RentAreaEntity> rentAreas= new ArrayList<>();

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getDistrict() {
        return district;
    }

    public void setDistrict(String district) {
        this.district = district;
    }

    public Long getNumberFloor() {
        return numberFloor;
    }

    public void setNumberFloor(Long numberFloor) {
        this.numberFloor = numberFloor;
    }

    public Long getFloor() {
        return floor;
    }

    public void setFloor(Long floor) {
        this.floor = floor;
    }

    public Long getFloorArea() {
        return floorArea;
    }

    public void setFloorArea(Long floorArea) {
        this.floorArea = floorArea;
    }

    public String getDirection() {
        return direction;
    }

    public void setDirection(String direction) {
        this.direction = direction;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public Long getRentPrice() {
        return rentPrice;
    }

    public void setRentPrice(Long rentPrice) {
        this.rentPrice = rentPrice;
    }

    public String getRentPriceDes() {
        return rentPriceDes;
    }

    public void setRentPriceDes(String rentPriceDes) {
        this.rentPriceDes = rentPriceDes;
    }

    public Long getServiceFee() {
        return serviceFee;
    }

    public void setServiceFee(Long serviceFee) {
        this.serviceFee = serviceFee;
    }

    public Long getCarFee() {
        return carFee;
    }

    public void setCarFee(Long carFee) {
        this.carFee = carFee;
    }

    public Long getMotoFee() {
        return motoFee;
    }

    public void setMotoFee(Long motoFee) {
        this.motoFee = motoFee;
    }

    public Long getElectricFee() {
        return electricFee;
    }

    public void setElectricFee(Long electricFee) {
        this.electricFee = electricFee;
    }

    public String getDeposit() {
        return deposit;
    }

    public void setDeposit(String deposit) {
        this.deposit = deposit;
    }

    public String getRentTime() {
        return rentTime;
    }

    public void setRentTime(String rentTime) {
        this.rentTime = rentTime;
    }

    public String getTypeCode() {
        return typeCode;
    }

    public void setTypeCode(String typeCode) {
        this.typeCode = typeCode;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    public String getManagerPhone() {
        return managerPhone;
    }

    public void setManagerPhone(String managerPhone) {
        this.managerPhone = managerPhone;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public List<com.javaweb.entity.RentAreaEntity> getRentAreas() {
        return rentAreas;
    }

    public void setRentAreas(List<com.javaweb.entity.RentAreaEntity> rentAreas) {
        this.rentAreas = rentAreas;
    }
}