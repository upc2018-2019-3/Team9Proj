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
    <script type="text/javascript" src="/text2/js/jquery-1.8.3.min.js"></script>
    <script type="text/javascript" src="/text2/js/jquery-ui-datepicker.js"></script>
    <script type="text/javascript" src="/text2/js/jquery.validate.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/text2/css/jquery-ui.css"/>
   <style>
   

.error {
  
  font-size:13px;
  color: red;
  
}

   </style>
    <script type="text/javascript">
    $().ready(function() {
        // 在键盘按下并释放及提交后验证提交表单
        
        $("#date").datepicker();
        $("#myform").validate({
        	
            rules : {
            	date:{
            		required:true,
            	},
            	detail:{
            		required:true,
            	
            	}
            },
            messages : {
            	date:{
            		required:"日期不能为空",
            	},
            	detail:{
            		required:"报障内容不能为空",
            		
            	}
            }
        });
    })
    
    
	</script>
	
</head>
<body>

<div class="result-title">
<h1>添加报障信息</h1>
</div>
<div class="result-content">
<div class="sidebar-title">
        <form action="/text2/wrong/insertwrong.action" method="post" id="myform" name="myform" enctype="multipart/form-data" >
                    <table class="insert-tab" width="100%">
                        <tbody>
                                <th><i class="require-red">*</i>会议室id：</th>
                                <td>
                                    <input class="common-text required" value="${wrong.house_id}" id="house_id" name="house_id" size="50" type="text">
                                </td>
                            </tr>
                            <tr>
                                <th><i class="require-red">*</i>地址：</th>
                                <td><input class="common-text" name="address" value="${wrong.address }" id="address" size="50" type="text" ></td>
                            </tr>
                         
                           <tr>
                                <th><i class="require-red">*</i>报障日期：</th>
                                <td><input class="common-text" name="date" value="${wrong.date }" id="date" size="50" type="text"></td>
                            </tr>
                             <tr>
                                <th><i class="require-red">*</i>报障内容：</th>
                                <td><textarea class="common-text" name="detail" value="${wrong.detail}" id="detail" style="width:430px;height:80px;"></textarea></td>
                            </tr>
                                <input type="hidden" name="userlist_id" id="userlist_id" value=""/>
								<tr>
                                <th></th>
                                <td>
                                    <input class="btn btn-primary btn6 mr10" value="提交" type="submit">
                                    <input class="btn btn6" onclick="history.go(-1)" value="返回" type="button">
                                </td>
                            </tr>
							<tr>
                                <font id="error" color="red">${error }</font>
                            </tr>	
                        </tbody></table>
                </form>
          </div>
          </div>
    
</body>
</html>