package edu.sungil.foods.web.controller;

import java.nio.file.Files;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.view.RedirectView;

import edu.sungil.foods.web.domain.dto.MenuInfo;
import edu.sungil.foods.web.domain.dto.OrdInfo;
import edu.sungil.foods.web.domain.dto.SchMenuInfo;
import edu.sungil.foods.web.domain.dto.SchOrdInfo;
import edu.sungil.foods.web.service.AdminService;

/**
 * @author koobk
 */
@Controller
@RequestMapping(value="/admin")
public class AdminController {
	
	@Autowired
	AdminService adminService; // new 너무 많이 쓰면X
	
	@RequestMapping(value="",method=RequestMethod.GET)
	public RedirectView defaultView() {
		return new RedirectView("admin/orderList");
	}
	
	@RequestMapping(value="orderList",method=RequestMethod.GET)
	public void adminIndex() {
	}
	
	@RequestMapping(value="menuList",method=RequestMethod.GET)
	public void menuList() {
	}
	
	@RequestMapping(value="/menu/add",method=RequestMethod.POST)
	@ResponseBody
	public void addMenu(MenuInfo menuInfo) {
		try {
			adminService.addMenu(menuInfo);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	@RequestMapping(value="/menu",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<List<MenuInfo>> getMenuList(SchMenuInfo schMenuInfo){
		List<MenuInfo>	list = adminService.getMenuList(schMenuInfo);
		return new ResponseEntity<List<MenuInfo>>(list, HttpStatus.OK);
		// ResponseEntity에 데이터를 담아서 던져주면 나중에 요구사항이 들어왔을 때 프로그램을 전부 수정하지 않아도 됨
	}
	
	@RequestMapping(value="/menu/{menuNo}",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<MenuInfo> getMenu(
			@PathVariable("menuNo") Long menuNo
			){
		MenuInfo	menuInfo = adminService.getMenu(menuNo);
		return new ResponseEntity<MenuInfo>(menuInfo, HttpStatus.OK);
	}
	
	@RequestMapping(value="/order",method=RequestMethod.POST)
	@ResponseBody
	public void order(OrdInfo ordInfo) {
		try {
			adminService.addOrd(ordInfo);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@RequestMapping(value="/order",method=RequestMethod.GET)
	@ResponseBody
	public ResponseEntity<List<OrdInfo>> getOrdList(SchOrdInfo schOrdInfo){
		List<OrdInfo>	list = adminService.getOrdList(schOrdInfo);
		return new ResponseEntity<List<OrdInfo>>(list, HttpStatus.OK);
	}
	@RequestMapping(value="/status",method=RequestMethod.POST)
	@ResponseBody
	public void updataStatus(OrdInfo ordInfo) {
		try {
			adminService.updateStatus(ordInfo);
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
