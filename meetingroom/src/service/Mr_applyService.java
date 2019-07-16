package service;

import java.util.List;

import Pojo.Mr_apply;

public interface Mr_applyService {
	List<Mr_apply> selectAll();
	List<Mr_apply> selectbyid(String user_name);
	List<Mr_apply> selectAllhasborrow();
	List<Mr_apply> selectdisagree();
	List<Mr_apply> selectAllneedplay();
	
	public void checkagree(String user_name,String mr_id,String start_time);
	public void checkdisagree(String user_name,String mr_id,String start_time);
	
	public void deleteapply(String user_name,String mr_id,String start_time);
	public void deledisagree(String user_name,String mr_id,String start_time);
//	void addMr_apply(Mr_apply mr_apply);
//	void updateapply(Mr_apply mr_apply);
}
