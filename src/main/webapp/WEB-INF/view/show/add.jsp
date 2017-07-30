<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@include file="/assets/jspfactory.jsp"%>
<script src="http://libs.baidu.com/jquery/1.9.0/jquery.js" type="text/javascript"></script> 
<!-- <script type="text/javascript" src="${ctxPath}/assets/js/addcommodity4.js"></script> --> 
</head>
<body>
	<div class="wrapper">
		<div class="sidebar" data-background-color="white"
			data-active-color="danger">
			<div class="sidebar-wrapper">
				<div class="logo">
					<a href="#" class="simple-text"> 超市管理系统 </a>
				</div>
				<ul class="nav">
					<li class="active"><a href="${ctxPath}/commodity/getCommodityShowJsp.kexin"> <i class="ti-panel"></i>
							<p>返回首页</p>
					</a></li>
					<li><a href="${ctxPath}/commodity/commoditySum.kexin"> <i class="ti-view-list-alt"></i>
							<p>用户商品总数</p>
					</a></li>
					<li><a href="${ctxPath}/commodity/daySumCommodity.kexin"> <i class="ti-text"></i>
							<p>每天录入商品总数</p>
					</a></li>
					<li><a href="${ctxPath}/commodity/classifySumCommodity.kexin"> <i class="ti-pencil-alt2"></i>
							<p>每个分类商品总数</p>
					</a></li>
				</ul>
			</div>
		</div>
		<div class="main-panel">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">添加商品信息</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-right">
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="ti-panel"></i>
								<p>用户名管理</p> <b class="caret"></b>
						</a>
					    </li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="ti-bell"></i>								 
								<p>分类管理</p> <b class="caret"></b>
						</a>
						</li>
					</ul>
				</div>
			</div>
			</nav>			 
			<div class="content">
				<div class="container-fluid">	
					<div class="row">
						<div class="col-md-12">
							<div class="card">
								<div class="header">
									<h4 class="title">添加商品信息</h4>
								</div>
								<div class="content table-responsive table-full-width">
			  <form id="addcommodity" action="${ctxPath}/commodity/addcommodity.kexin">  		
				<table class="table table-striped">
				<tr>
					<th width="30%">商品id</th>
					<td width="70%"><input type="text" id="Id" name="commodityId" value="">
				</tr>
				<tr>
					<th width="30%">商品名称</th>
					<td width="70%"><input type="text" id="name" name="commodityName" value="">
				</tr>
				<tr>
					<th width="30%">商品价格</th>
					<td width="70%"><input type="text" id="price" name="commodityPrice" value="">
				</tr>
				<tr>
					<th width="30%">商品数量</th>
					<td width="70%"><input type="text" id="much" name="commodityMuch" value="">
				</tr>
				<tr>
					<th width="30%">商品保质期</th>
					<td width="70%"><input type="text" id="period" name="commodityPeriod" value="">
				</tr>			
				<tr>
					<th width="30%">商品生产地</th>
					<td width="70%"><input type="text" id="yiedly" name="commodityYiedly" value="">
				</tr>
				<tr>
					<th width="30%">商品分类</th>
					<td width="70%">			 
					<select name="categoryId" id="categoryId">					 
					    			 
					</select> 			 
					</td> 
				</tr> 
				</table>
				<div class="text-center">								     
					<input type="button" id="putin" value="添加" class="btn btn-info btn-fill btn-wd"  >				 
				</div>
				</form>
			  </div>
			</div>
		 </div>
		</div>
      </div>
	</div>
  </div>
</div>
<script type="text/javascript">
    $(function(){
    	$.ajax({
    	   type:"get",
    	   url:"${ctxPath}/commodity/selectClassify.kexin",
    	   dataType:"json",
    	   success:function(data){
    		   alert("商品展示信息");
    		   $.each(data,function(index,value){
    			  $("#categoryId").append("<option value="+value.categoryId+">"+value.category+"</option>"); 
    		   });
    	   },
    	   error:function(){
    		   alert("操作失败");
    	   }
    	});
    });
</script>
<script type="text/javascript">
   $(function(){
	  $("#putin").click(function(){
		 $.ajax({
			 type:'get',     //提交方式 
			 url:'${ctxPath}/commodity/addCommodity.kexin',		//数据的提交路劲
			 data:{
				    commodityId:$("#Id").val(),  
				    commodityName:$("#name").val(),
				    commodityPrice:$("#price").val(),
				    commodityMuch:$("#much").val(),
				    commodityPeriod:$("#period").val(),
				    commodityYiedly:$("#yiedly").val(),
				    categoryId:$("option").val()				   
			 },   //需要提交的数据	
		     dataType:'json',	//服务器返回数据的类型，例如xml,String,Json等
		     //请求成功后的回调函数
		     success:function(data){     
		    	 alert("操作成功");
		    	 window.location.href='${ctxPath}/commodity/getCommodityShowJsp.kexin';
		     },
		     //请求失败后的回调函数
		     error: function() {   
                 alert("操作失败");
             },             
		 }) ;
	  });
   });
</script>	
</body>
</html>