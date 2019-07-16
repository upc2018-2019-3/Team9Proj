package controller;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import Pojo.Houselist;
import Pojo.Mr_apply;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import service.HouselistService;
import service.MyapplyService;
@Controller
public class ApplyController {

	
	@Autowired
	private HouselistService houselistService;
	@Autowired
	private MyapplyService myapplyService;

	
	@RequestMapping("/houselist0")
	public String houselist0(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize){
		
		 PageHelper.startPage(page, pageSize);
		List<Houselist> houselist=houselistService.selectAll();
		PageInfo<Houselist> p=new PageInfo<Houselist>(houselist);
		
				
		model.addAttribute("p", p);
		model.addAttribute("houselist",houselist);
		model.addAttribute("mainPage","mrdetail.jsp");
		return "user/main";
	}
	
	@RequestMapping("/findapplybytime")
	public String findapply(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize,Mr_apply vo){
		
		PageHelper.startPage(page, pageSize);

		List<Mr_apply> mr_applies=myapplyService.findapplybytime(vo);
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(mr_applies);
		model.addAttribute("p", p);
		model.addAttribute("mr_applies",mr_applies);
		model.addAttribute("mainPage","findapply.jsp");
		return "user/main";
	}
	
	@RequestMapping("/toapply")
	public String toapply(Model model){
	
		model.addAttribute("mainPage","toapply.jsp");
		return "user/main";
	}
	@RequestMapping("/addmyapply")
	public String addmyapply(Model model,Mr_apply mr){
	
		myapplyService.addmyapply(mr);
		return "user/main";
	}
}
