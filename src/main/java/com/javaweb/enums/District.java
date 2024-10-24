package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum District {
    CAU_GIAY("Quận Cầu Giấy"),
    THANH_XUAN("Quận Thanh Xuân"),
    HOANG_MAI("Quận Hoàng Mai"),
    DONG_DA("Quận Đống Đa"),
    HA_DONG("Quận Hà Đông"),
    HAI_BA_TRUNG("Quận Hai Bà Trưng"),
    BA_DINH("Quận Ba Đình"),
    HOAN_KIEM("Quận Hoàn Kiếm"),
    TAY_HO("Quận Tây Hồ"),
    LONG_BIEN("Quận Long Biên"),
    NAM_TU_LIEM("Quận Nam Từ Liêm"),
    BAC_TU_LIEM("Quận Bắc Từ Liêm"),
    ;

    private final String districtName;

    District(String districtName) {
        this.districtName = districtName;
    }

    public String getDistrictName() {
        return districtName;
    }

    public static Map<String, String> type() {
        Map<String, String> districts = new TreeMap<>();
        for (District item : District.values()) {
            districts.put(item.toString(), item.districtName);
        }
        return districts;
    }


}
