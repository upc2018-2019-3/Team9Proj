package controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import Pojo.Mr_apply;
import service.Mr_applyService;

@Controller
public class Mr_applyController {
	
	@Autowired
	private Mr_applyService mr_applyService;
	
	@RequestMapping("/mr_applyall")
	public String applyall(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize){
		
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> mr_apply = mr_applyService.selectAll();
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(mr_apply);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", mr_apply);
		model.addAttribute("mainPage", "zulist.jsp");
		return "admin/main1";
	}
	@RequestMapping("/mr_apply1")
	public String applyallborrow(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize){
		
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> mr_apply = mr_applyService.selectAllhasborrow();
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(mr_apply);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", mr_apply);
		model.addAttribute("mainPage", "agree.jsp");
		return "admin/main1";
	}
	
	@RequestMapping("/mr_apply2")
	public String applyallneedapply(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize){
		
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> mr_apply = mr_applyService.selectAllneedplay();
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(mr_apply);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", mr_apply);
		model.addAttribute("mainPage", "needcheck.jsp");
		return "admin/main1";
	}
	@RequestMapping("/mr_apply3")
	public String applydisagree(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize){
		
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> mr_apply = mr_applyService.selectdisagree();
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(mr_apply);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", mr_apply);
		model.addAttribute("mainPage", "disagreelist.jsp");
		return "admin/main1";
	}
	
	@RequestMapping("/checkagree")
	public String checkagree(String user_name,String mr_id,String start_time){
		mr_applyService.checkagree(user_name,mr_id,start_time);
		return "redirect:mr_apply2.action";
	}
	@RequestMapping("/checkdisagree")
	public String checkdisagree(String user_name,String mr_id,String start_time){
		mr_applyService.checkdisagree(user_name,mr_id,start_time);
		return "redirect:mr_apply2.action";
	}
	
	
	@RequestMapping("/deleteapply")
	public String deleteapply(String user_name,String mr_id,String start_time){
		mr_applyService.deleteapply(user_name,mr_id,start_time);
		return "redirect:mr_apply1.action";
	}
	@RequestMapping("/deledisagree")
	public String deledisagree(String user_name,String mr_id,String start_time){
		mr_applyService.deleteapply(user_name,mr_id,start_time);
		return "redirect:mr_apply3.action";
	}
	
	

}
