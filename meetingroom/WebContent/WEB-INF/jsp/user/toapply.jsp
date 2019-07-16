<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <meta charset="UTF-8">
    <title>会议室借记系统</title>
    <link rel="stylesheet" type="text/css" href="/text2/css/common.css"/>
    <link rel="stylesheet" type="text/css" href="/text2/css/main.css"/>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery.validate.min.js"></script>
    <script type="text/javascript" src="/text2/js/libs/modernizr.min.js"></script>

 	<link type="text/css" href="css/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
     <link type="text/css" href="css/jquery-ui-timepicker-addon.css" rel="stylesheet" />
    <script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-timepicker-addon.js"></script>
    <script type="text/javascript" src="js/jquery-ui-timepicker-zh-CN.js"></script>
   <script type="text/javascript">
    $(function () {
        $(".ui_timepicker").datetimepicker({
            //showOn: "button",
            //buttonImage: "./css/images/icon_calendar.gif",
            //buttonImageOnly: true,
            showSecond: true,
            timeFormat: 'hh:mm',
            stepHour: 1,
            stepMinute: 1,
        })
    })
    </script>
   <style>
   

.error {
  
  font-size:13px;
  color: red;
  
}

   </style>
    <script type="text/javascript">
    $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        $("#myform").validate({
        	
            rules : {
            	mr_id : {
                    required : true,
                },
               
                address : {
                    required : true,
                  
                },
                area : {
                    required : true,
                    min: 0
                  
                },
                floor: {
                    required : true,
                    min: 0
                  
                }
                
            },
            messages : {
            	mr_id : {
                    required : "房屋id不能为空！",
                },
               
                address : {
                    required : "地址不能为空！",
                  
                },
                area : {
                    required : "面积不能为空！",
                    min:"请输入正确的面积"
                  
                },
                floor: {
                    required :  "楼层不能为空！",
                    min:"请输入正确的楼层"
                  
                }
                
            }
        });
    })
	</script>
	   
</head>
<body>

	

<div class="result-title">
<h1>申请会议室</h1>
</div>
<div class="result-content">
<div class="sidebar-title">
        <form action="addmyapply.action" method="post" id="myform" name="myform" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                        <tr>
                                <th><i class="require-red">*</i>id：</th>
                                <td>
                                    <input class="common-text required" value="${mr.mr_id}" id="mr_id" name="mr_id" size="50" type="text">
                                </td>
                            </tr>
                                 <tr>
                                <th><i class="require-red">*</i>会议室：</th>
                                <td>
                                    <input class="common-text required" value="${mr.mr_name}" id="mr_name" name="mr_name" size="50" type="text">
                                </td>
                            </tr>
                            
                             <tr>
                                <th><i class="require-red">*</i>借用人：</th>
                                <td>
                                    <input class="common-text required" value="${mr.user_name}" id="user_name" name="user_name" size="50" type="text">
                                </td>
                            </tr>
                            
                            
                            <tr>
                            <th> <i class="require-red">*</i>起始日期:</th>
                             <td><input type="text" name="start_time" id="start_time" class="ui_timepicker" value="${mr.start_time }" readonly ></td>  
                             </tr>
                            <tr>
                            <th> <i class="require-red">*</i>终止日期:</th>
                            <td><input type="text" name="end_time" id="end_time" class=" ui_timepicker" value="${mr.end_time } " readonly ></td>  
                            </tr>
                           
                            <tr>
                                <th><i class="require-red">*</i>用途：</th>
                                <td><input class="common-text" name="apply_res" value="${mr.apply_res }"  size="50" type="text" id="apply_res" ></td>
                            </tr>
                            
								<tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>	
                        </tbody></table>
                </form>
          </div>
          </div>
    
</body>
</html>
