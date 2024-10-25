package com.javaweb.model.response;


import com.javaweb.model.dto.AbstractDTO;

public class BuildingSearchResponse extends AbstractDTO {
	private Long id;
	private String name;
	private String address;
	private Long numberFloor;
	private Long floor;
	private String managerName;
	private String managerPhone;
	private Long floorArea;
	private String rentArea;
	private String emptyArea;
	private Long rentPrice;
	private Long serviceFee;
	private String avatar;
	private String direction;;
	private String level;
	private Long carFee;
	private Long motoFee;
	private Long electricFee;
	private String deposit;
	private String rentTime;
	private String typeCode;
	private String note;


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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public Long getFloorArea() {
		return floorArea;
	}

	public void setFloorArea(Long floorArea) {
		this.floorArea = floorArea;
	}

	public String getRentArea() {
		return rentArea;
	}

	public void setRentArea(String rentArea) {
		this.rentArea = rentArea;
	}

	public String getEmptyArea() {
		return emptyArea;
	}

	public void setEmptyArea(String emptyArea) {
		this.emptyArea = emptyArea;
	}

	public Long getRentPrice() {
		return rentPrice;
	}

	public void setRentPrice(Long rentPrice) {
		this.rentPrice = rentPrice;
	}

	public Long getServiceFee() {
		return serviceFee;
	}

	public void setServiceFee(Long serviceFee) {
		this.serviceFee = serviceFee;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
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
}