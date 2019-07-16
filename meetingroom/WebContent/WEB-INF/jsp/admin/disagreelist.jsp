<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <title>会议室借记系统</title>
    <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
</head>
<body>
<div>
<div class="result-title">
<h1>已拒借会议室</h1>
</div>
	<form id="houseForm" name="houseForm"
		action="/text2/mr_apply3.action"
		method=post >
						 <div class="result-title">
                    <div class="result-list">
                      
                        
                    </div>
                </div>

					<div class="result-content">
						<table id=grid
							class="result-tab" width="100%" >
							<tbody>
								<tr 
									style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>id</td>
									<td>会议室</td>
									<td>借用者</td>
									<td>开始时间</td>
									<td>结束时间</td>
									<td>用途</td>
									<td align="center">操作</td>
									
								</tr>
								<c:forEach items="${mr_apply}" var="mr_apply">
								
									<tr
										style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
										<td>${mr_apply.mr_id }</td>
										<td>${mr_apply.mr_name}</td>
										<td>${mr_apply.user_name}</td>
										<td>${mr_apply.start_time}</td>
										<td>${mr_apply.end_time}</td>
										<td>${mr_apply.apply_res}</td>
										<td align="center">
											<a href ="deledisagree.action?user_name=${mr_apply.user_name}&mr_id=${mr_apply.mr_id }&start_time=${mr_apply.start_time}">删除</a>
										
										</td>
								
										
	
										
										
									</tr>

								</c:forEach>

							</tbody>
						</table>
						</div>
					

						<tr>
						<tr>
							<span id=pagelink>
								<div style="LINE-HEIGHT: 20px; HEIGHT: 20px; TEXT-ALIGN: right; margin-top:10px">
									共[<B>${p.total}</B>]条记录，共[<B>${p.pages}</B>]页
									,

									<c:if test="${ p.pageNum > 1 }">
													[<A href="javascript:to_page(${p.prePage})">前一页</A>]
												</c:if>
										<input type="hidden" name="page" id="page" value=""/>
									第<B>${p.pageNum}</B>页

									<c:if test="${ p.pageNum < p.pages }">
													[<A href="javascript:to_page(${p.nextPage})">后一页</A>] 
												</c:if>

									
								</div>
							</span>
						
						</tr>
						</tbody>
					
					

					
						</tbody>
				

					</form>
</div>
 <script language=javascript>
	// 提交分页的查询的表单
	function to_page(page) {
		if (page) {
			$("#page").val(page);
		}
		document.houseForm.submit();
	}
</script>
</body>
</html>