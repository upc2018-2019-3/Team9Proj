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
<h1>已处理报障列表</h1>
</div>
	
						 <div class="result-title">
                    <div class="result-list">
                      
                        
                    </div>
                </div>
				<form action="/text2/wrong/findwrongsolve.action" method=post >
					<div class="result-content">
						<table id=grid
							class="result-tab" width="100%">
							<tbody>
								<tr
									style="FONT-WEIGHT: bold; FONT-STYLE: normal; BACKGROUND-COLOR: #eeeeee; TEXT-DECORATION: none">
									<td>会议室id</td>
									<td>地址</td>
									<td>报障日期</td>
									<td>报障内容</td>
									<td>状态</td>
									<td>操作</td>
								
									
								</tr>
								<c:forEach items="${solves}" var="solves">
									<tr
										style="FONT-WEIGHT: normal; FONT-STYLE: normal; BACKGROUND-COLOR: white; TEXT-DECORATION: none">
										<td>${solves.house_id }</td>
										<td>${solves.address}</td>
										<td>${solves.date}</td>
										<td>${solves.detail}</td>
										<td>${solves.status}</td>
										<td>
										
													<a class="link-update"
											href="/text2/wrong/deletewrong.action?id=${solves.id}"
											onclick="return window.confirm('确定删除吗？')">删除</a>
											&nbsp;&nbsp; 
												
										
											
									</td>		
										
										
									</tr>

								</c:forEach>

							</tbody>
						</table>
						</div>
					</form>

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