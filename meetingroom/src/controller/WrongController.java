package controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import Pojo.Wrong;
import service.WrongService;

@Controller
@RequestMapping("/wrong")
public class WrongController {

	@Autowired
	private WrongService wrongService;
	
	@RequestMapping("/findwrong")
	public String findwrong(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Wrong> wrongs = wrongService.findwronglist();
		PageInfo<Wrong> p=new PageInfo<Wrong>(wrongs);
		
				
		model.addAttribute("p", p);
		model.addAttribute("wrongs", wrongs);
		model.addAttribute("mainPage", "wrong.jsp");
		return "admin/main1";
		
	}
	
	@RequestMapping("/findwrongsolve")
	public String findwrongsolev(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Wrong> solves = wrongService.findwrongsolvelist();
		PageInfo<Wrong> p=new PageInfo<Wrong>(solves);
		
				
		model.addAttribute("p", p);
		model.addAttribute("solves",solves);
		model.addAttribute("mainPage", "solve.jsp");
		return "admin/main1";
		
	}
	
	@RequestMapping("/updatewrong")
	public String updatewrong(Integer id){
		wrongService.updatewrong(id);
		return "redirect:findwrong.action";
	}
	@RequestMapping("/deletewrong")
	public String deletewrong(Integer id){
		wrongService.deletewrong(id);
		return "redirect:findwrongsolve.action";
	}
	
	@RequestMapping("toinsertwrong")
	public String toinsertwrong(Model model){
		model.addAttribute("mainPage", "addwrong.jsp");
		return "user/main";
	}
	
	@RequestMapping("insertwrong")
	public String insertwrong(Wrong wrong,Model model){
		wrongService.insertwrong(wrong);
		return "redirect:findwrong1.action";
	}
	
	@RequestMapping("/findwrong1")
	public String findwrong1(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Wrong> wrongs = wrongService.findwronglist();
		PageInfo<Wrong> p=new PageInfo<Wrong>(wrongs);
		
				
		model.addAttribute("p", p);
		model.addAttribute("wrongs", wrongs);
		model.addAttribute("mainPage", "mywrong.jsp");
		return "user/main";
		
	}
	
	@RequestMapping("/findwrongsolve1")
	public String findwrongsolev1(Model model ,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="8") Integer pageSize) {
		PageHelper.startPage(page, pageSize);
		List<Wrong> solves = wrongService.findwrongsolvelist();
		PageInfo<Wrong> p=new PageInfo<Wrong>(solves);
		
				
		model.addAttribute("p", p);
		model.addAttribute("solves",solves);
		model.addAttribute("mainPage", "mysolve.jsp");
		return "user/main";
		
	}
}
