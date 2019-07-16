package service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import Pojo.Mr_apply;
import dao.Mr_applyMapper;

@Service
public class Mr_applyServiceImpl implements Mr_applyService{

	@Autowired
	private Mr_applyMapper mr_applyMapper;
	
	@Override
	public List<Mr_apply> selectAll() {
		List<Mr_apply> mr_apply = mr_applyMapper.selectAll();
		return mr_apply;
	}
	
	@Override
	public List<Mr_apply> selectAllhasborrow() {
		List<Mr_apply> mr_apply = mr_applyMapper.selectAllhasborrow();
		return mr_apply;
	}
	
	@Override
	public List<Mr_apply> selectAllneedplay() {
		List<Mr_apply> mr_apply = mr_applyMapper.selectAllneedplay();
		return mr_apply;
	}
	@Override
	public List<Mr_apply> selectdisagree() {
		List<Mr_apply> mr_apply = mr_applyMapper.selectdisagree();
		return mr_apply;
	}
	
	@Override
	public List<Mr_apply> selectbyid(String user_name){
		List<Mr_apply> mr_apply = mr_applyMapper.selectbyid(user_name);
		return mr_apply;
	}
	
	@Override
	public void checkagree(String user_name,String mr_id,String start_time) {
		mr_applyMapper.checkagree(user_name,mr_id,start_time);
	}
	@Override
	public void checkdisagree(String user_name,String mr_id,String start_time) {
		mr_applyMapper.checkdisagree(user_name,mr_id,start_time);
	}
	
	@Override
	public void deleteapply(String user_name,String mr_id,String start_time) {
		mr_applyMapper.deleteapply(user_name,mr_id,start_time);
	}
	@Override
	public void deledisagree(String user_name,String mr_id,String start_time) {
		mr_applyMapper.deleteapply(user_name,mr_id,start_time);
	}

}
