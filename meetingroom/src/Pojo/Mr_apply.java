package Pojo;

public class Mr_apply {
	// TODO Auto-generated constructor stub
	private String user_name;
	private String mr_id;
	private String apply_res;
	private String start_time;
	private String end_time;
	private String mr_name;
	private int mr_state;
	private String ref_res;
	private String fromdate;
	private String todate;

	public String getTodate() {
		return todate;
	}
	public void setTodate(String todate) {
		this.todate = todate;
	}
	public String getFromdate() {
		return fromdate;
	}
	public void setFromdate(String fromdate) {
		this.fromdate = fromdate;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getMr_id() {
		return mr_id;
	}
	public void setMr_id(String mr_id) {
		this.mr_id = mr_id;
	}
	public String getApply_res() {
		return apply_res;
	}
	public void setApply_res(String apply_res) {
		this.apply_res = apply_res;
	}
	public String getStart_time() {
		return start_time;
	}
	public void setStart_time(String start_time) {
		this.start_time = start_time;
	}
	public String getEnd_time() {
		return end_time;
	}
	public void setEnd_time(String end_time) {
		this.end_time = end_time;
	}
	public String getMr_name() {
		return mr_name;
	}
	public void setMr_name(String mr_name) {
		this.mr_name = mr_name;
	}
	public int getMr_state() {
		return mr_state;
	}
	public void setMr_state(int mr_state) {
		this.mr_state = mr_state;
	}
	public String getRef_res() {
		return ref_res;
	}
	public void setRef_res(String ref_res) {
		this.ref_res = ref_res;
	}
	@Override
	public String toString() {
		return "mr_apply [user_name=" + user_name + ", mr_id=" + mr_id + ", apply_res=" + apply_res + ", start_time="
				+ start_time + ", end_time=" + end_time + ", mr_name=" + mr_name + ", mr_state=" + mr_state
				+ ", ref_res=" + ref_res + "]";
	}
	
	

}
