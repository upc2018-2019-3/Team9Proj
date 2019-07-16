package dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import Pojo.Mr_apply;

public interface Mr_applyMapper {
	List<Mr_apply> selectAll();
	List<Mr_apply> selectAllhasborrow();
	List<Mr_apply> selectAllneedplay();
	List<Mr_apply> selectdisagree();
	List<Mr_apply> selectbyid(String user_name);
	
	public void checkagree(@Param("user_name") String user_name,@Param("mr_id") String mr_id,@Param("start_time") String start_time);
	public void checkdisagree(@Param("user_name") String user_name,@Param("mr_id") String mr_id,@Param("start_time") String start_time);
	
	public void deleteapply(@Param("user_name") String user_name,@Param("mr_id") String mr_id,@Param("start_time") String start_time);
	public void deledisagree(@Param("user_name") String user_name,@Param("mr_id") String mr_id,@Param("start_time") String start_time);
//	void addMr_apply(Mr_apply mr_apply);
//	void updateapply(Mr_apply mr_apply);
}
