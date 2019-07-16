<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="Pojo.Mr_apply"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.Import"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<% List< Mr_apply > mr = (ArrayList)request.getAttribute("mr_applies"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>会议室借记系统</title>
   <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-ui-datepicker.js"></script>
    <script type="text/javascript" src="/text2/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/text2/css/jquery-ui.css"/>
	</script>
	<style type="text/css">
	.sum{
	float:right;
	}
	
	</style>
	<script type="text/javascript">
	 $().ready(function() {
	        // 在键盘按下并释放及提交后验证提交表单
	        $("#fromdate").datepicker();
	        $("#todate").datepicker();
	 });
		
	</script>
	
</head>
<body>
<div>
<div class="result-title">
<h1>会议室列表</h1>
</div>
<div class="search-wrap">
            <div class="search-content">
                <form action="/text2/findapplybytime.action" method="post" name="myform">
                    <table class="search-tab">
                 <tr>
                           <td width='350'></td>         
                            <th >选择日期:</th>
                            <td><input class="common-text" name="fromdate" placeholder="查询时间"  value="${vo.fromdate}" id="fromdate" type="text" readonly></td>  
                            <td><input class="btn btn-primary btn2" name="sub" value="查询" type="submit"></td> 
                        </tr>
                     
                    </table>
                </form>
            </div>
        </div>
	
						 <div class="result-title">
                    <div class="result-list">
                      
                        
                    </div>
                </div>

					<div class="result-content">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr
									style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td width = "100px">会议室id</td>
									<td>借用情况</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
									
									
								</tr>
								<tr>
								 <td>w236</td>
								 
								<% 
										for(int i=0;i<mr.size();i++)
										{
											if(mr.get(i).getMr_id().equals("w236")){
												%>
												<th>
													<%out.print(mr.get(i).getStart_time().substring(11)); %>
													<%out.print(mr.get(i).getEnd_time().substring(11)); %>
												</th>
												<%
											}
										}
								 %>
								
								</tr>
								<tr>
								<td>w357</td>
								<% 
										for(int i=0;i<mr.size();i++)
										{
											if(mr.get(i).getMr_id().equals("w357")){
												%>
												<th>
													<%out.print(mr.get(i).getStart_time().substring(11)); %>
													<%out.print(mr.get(i).getEnd_time().substring(11)); %>
												</th>
												<%
											}
										}
								 %>
								
								</tr> 
								<tr><td>w544</td>
	<% 
										for(int i=0;i<mr.size();i++)
										{
											if(mr.get(i).getMr_id().equals("w544")){
												%>
												<th>
													<%out.print(mr.get(i).getStart_time().substring(11)); %>
													<%out.print(mr.get(i).getEnd_time().substring(11)); %>
												</th>
												<%
											}
										}
								 %>
								</tr>
								<tr>
									<td>w545</td>
									<% 
										for(int i=0;i<mr.size();i++)
										{
											if(mr.get(i).getMr_id().equals("w545")){
												%>
												<th>
													<%out.print(mr.get(i).getStart_time().substring(11)); %>
													<%out.print(mr.get(i).getEnd_time().substring(11)); %>
												</th>
												<%
											}
										}
								 %>
								</tr>
								<tr>
									<td>w543</td>
										<% 
										for(int i=0;i<mr.size();i++)
										{
											if(mr.get(i).getMr_id().equals("w543")){
												%>
												<th>
													<%out.print(mr.get(i).getStart_time().substring(11)); %>
													<%out.print(mr.get(i).getEnd_time().substring(11)); %>
												</th>
												<%
											}
										}
								 %>
								</tr>
								<tr>
									<td>w185</td>
								<% 
										for(int i=0;i<mr.size();i++)
										{
											if(mr.get(i).getMr_id().equals("w185")){
												%>
												<th>
													<%out.print(mr.get(i).getStart_time().substring(11)); %>
													<%out.print(mr.get(i).getEnd_time().substring(11)); %>
												</th>
												<%
											}
										}
								 %>
								</tr>

							</tbody>
						</table>
						</div>
					

						<tr>
						<tr>
							</span>
						
						</tr>
						</tbody>
					
					

					
						</tbody>
				

	
</div>
 <script language=javascript>
	// 提交分页的查询的表单
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.myform.submit();
	}
</script>
</body>
</html>