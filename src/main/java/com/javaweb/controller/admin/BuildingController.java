package com.javaweb.controller.admin;



import com.javaweb.enums.District;
import com.javaweb.enums.TypeCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@Controller(value="buildingControllerOfAdmin")
public class BuildingController {
    @Autowired
    private IUserService userService;
    @RequestMapping(value="/admin/building-list",method = RequestMethod.GET)
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch",buildingSearchRequest);
        List<BuildingSearchResponse> responseList=new ArrayList<>();
        BuildingSearchResponse item1= new BuildingSearchResponse();
        item1.setId(3L);
        item1.setName("OK building");
        item1.setAddress("91 Dai an");
        item1.setNumberOfBasement(2L);
        item1.setManagerName("nguyen huu truong");
        item1.setManagerPhone("0912874246");
        item1.setFloorArea(2L);
        item1.setEmptyArea("2");
        item1.setRentArea("324");
        item1.setServiceFee("234");
        responseList.add(item1);
        BuildingSearchResponse item2= new BuildingSearchResponse();
        item2.setId(4L);
        item2.setName("HAHA building");
        item2.setAddress("91 Dai oan");
        item2.setNumberOfBasement(2L);
        item2.setManagerName("nguyen huu truong");
        item2.setManagerPhone("0912874246");
        item2.setFloorArea(2L);
        item2.setEmptyArea("2");
        item2.setRentArea("324");
        item2.setServiceFee("234");
        responseList.add(item2);
        mav.addObject("buildingList",responseList);
        mav.addObject("listStaffs",userService.getStaffs());
        mav.addObject("districts", District.type());
        mav.addObject("typeCodes", TypeCode.type());
        return mav;
    }
    @RequestMapping(value="/admin/building-edit",method = RequestMethod.GET)
    public ModelAndView buildingEdit(@ModelAttribute ("buildingEdit") BuildingDTO buildingDTO,HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("districts", District.type());
        mav.addObject("typeCodes", TypeCode.type());
        return mav;
    }
    @RequestMapping(value="/admin/building-edit-{id}",method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id , HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        BuildingDTO buildingDTO=new BuildingDTO();
        buildingDTO.setId(Id);
        buildingDTO.setName("ok");
        mav.addObject("buildingEdit",buildingDTO);
        mav.addObject("districts", District.type());
        mav.addObject("typeCodes", TypeCode.type());
        return mav;
    }
}
