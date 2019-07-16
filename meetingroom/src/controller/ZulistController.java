package controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


import Pojo.User;
import Pojo.Userlist;
import Pojo.Zulist;
import service.UserlistService;
import service.ZulistService;

@Controller
@RequestMapping("/zulist")
public class ZulistController {
	@Autowired
	private ZulistService zulistService;

	@RequestMapping("/findzulist")
	public String findzulist(Model model,@RequestParam(required=false,defaultValue="1") Integer page,
            @RequestParam(required=false,defaultValue="2") Integer pageSize) throws Exception{
		PageHelper.startPage(page, pageSize);
		List<Zulist> zulist=zulistService.findzuuserlist();
		PageInfo<Zulist> p=new PageInfo<Zulist>(zulist);
		model.addAttribute("p", p);
		model.addAttribute("zulist", zulist);
		model.addAttribute("mainPage", "zulist.jsp");
		return "admin/main1";
	}
	
	
	
}
