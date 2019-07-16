package service;

import java.util.List;

import Pojo.Mr_apply;
import Pojo.QueryVo;

public interface MyapplyService {
	List<Mr_apply> MyapplyAgree(String user_name);
	List<Mr_apply> MyapplydisAgree(String user_name);
	List<Mr_apply> Myapplyneedplay(String user_name);
	
	List<Mr_apply> findapplybytime(Mr_apply vo);
	void addmyapply(Mr_apply mr);
}
