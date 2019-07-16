package controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import Pojo.Mr_apply;
import service.Mr_applyService;
import service.MyapplyService;

@Controller
public class MyApplyController {
	
	@Autowired
	private Mr_applyService mr_applyService;
	
	private  String user=null;

	@Autowired
	private MyapplyService myapplyService;
	
	@RequestMapping("/myapplyagree")
	public String myapplyagree(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize,String user_name) {
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> myApplies = myapplyService.MyapplyAgree(user_name);
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(myApplies);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", myApplies);
		model.addAttribute("mainPage", "myagree.jsp");
		return "user/main";
	}
	
	@RequestMapping("/myapplydisagree")
	public String myapplydisagree(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize,String user_name) {
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> myApplies = myapplyService.MyapplydisAgree(user_name);
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(myApplies);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", myApplies);
		model.addAttribute("mainPage", "mydisagree.jsp");
		return "user/main";
	}
	@RequestMapping("/myapplyneedplay")
	public String myapplyneedplay(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize,String user_name) {
		PageHelper.startPage(page, pageSize);
		List<Mr_apply> myApplies = myapplyService.Myapplyneedplay(user_name);
		PageInfo<Mr_apply> p=new PageInfo<Mr_apply>(myApplies);
		
				
		model.addAttribute("p", p);
		model.addAttribute("mr_apply", myApplies);
		model.addAttribute("mainPage", "myapplyneedplay.jsp");
		return "user/main";
	}
	
	@RequestMapping("/mydeledisagree")
	public String mydeledisagree(String user_name,String mr_id,String start_time){
		mr_applyService.deleteapply(user_name,mr_id,start_time);
		user = user_name;
    	return "redirect:test0.action"; 
	}
	@RequestMapping("/test0")
	public String test0(RedirectAttributes attributes) 
	{ 
			
	    	attributes.addAttribute("user_name",user); 
	    	return "redirect:myapplydisagree.action"; 
	} 
	@RequestMapping("/mydeleneedplay")
	public String mydeleneedplay(String user_name,String mr_id,String start_time){
		mr_applyService.deleteapply(user_name,mr_id,start_time);
		user = user_name;
		return "redirect:myapplyneedplay.action";
	}
	@RequestMapping("/test1")
	public String test1(RedirectAttributes attributes) 
	{ 
		
	    	attributes.addAttribute("user_name",user); 
	    	return "redirect:myapplyneedplay.actio"; 
	} 

}
