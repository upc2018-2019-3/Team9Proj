package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import Pojo.Mr_apply;
import Pojo.QueryVo;
import dao.MyapplyMapper;

@Service
public class MyapplyServiceImpl implements MyapplyService{
	@Autowired
	private MyapplyMapper myapplyMapper;
	
	
	
	@Override
	public List<Mr_apply> MyapplyAgree(String user_name) {
		List<Mr_apply> mr_apply = myapplyMapper.MyapplyAgree(user_name);
		return mr_apply;
	}
	@Override
	public List<Mr_apply> MyapplydisAgree(String user_name) {
		List<Mr_apply> mr_apply = myapplyMapper.MyapplydisAgree(user_name);
		return mr_apply;
	}
	@Override
	public List<Mr_apply> Myapplyneedplay(String user_name) {
		List<Mr_apply> mr_apply = myapplyMapper.Myapplyneedplay(user_name);
		return mr_apply;
	}
	
	@Override
	public List<Mr_apply> findapplybytime(Mr_apply vo) {
		List<Mr_apply> mr_apply = myapplyMapper.findapplybytime(vo);
		return mr_apply;
	}
	
	@Override
	public void addmyapply(Mr_apply mr) {
		myapplyMapper.addmyapply(mr);
	}
}
