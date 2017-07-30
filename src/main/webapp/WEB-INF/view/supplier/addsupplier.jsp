<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<%@include file="/assets/jspfactory.jsp"%>
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
					<li><a href="${ctxPath}/classify/getFindClassifyJsp.kexin"> <i class="ti-map"></i>
							<p>商品分类管理</p>
					</a></li>
					<li><a href="${ctxPath}/user/getFindUserJsp.kexin"> <i class="ti-bell"></i>
							<p>用户名管理</p>
					</a></li>
				</ul>
			</div>
		</div>

		<div class="main-panel">
			<nav class="navbar navbar-default">
			<div class="container-fluid">
				<div class="navbar-header">
					<a class="navbar-brand" href="#">供货商信息</a>
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
									<h4 class="title">添加供货商信息</h4>
								</div>
								<div class="content table-responsive table-full-width">				 				
				<table class="table table-striped">
				<tr>
               <th width="30%">供货商ID</th>
               <td width="70%"><input type="text" name="supplierID" id="ID" value=""></td>
               </tr>
               <tr>
                <th width="30%">供货商姓名</th>
                 <td width="70%"><input type="text" name="supplierName" id="name" value=""></td>
              </tr>
              <tr>
                <th width="30%">供货商地址</th>
                <td width="70%"><input type="text" name="supplierAddress" id="address" value=""></td>
              </tr>
              <tr>
               <th width="30%">供货商电话</th>
               <td width="70%"><input type="text" name="supplierPhone" id="phone" value=""></td>
              </tr>
				</table>
				<div class="text-center">
				<input type="button" id="putin" class="btn btn-info btn-fill btn-wd" value="添加">  
			</div>		 
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
      $("#putin").click(function(){	
    	 $.ajax({   		 
    			type:"get",
    			url:"${ctxPath}/supplier/addSupplier.kexin",
    			data:{
    				supplierID:$("#ID").val(),
    			    supplierName:$("#name").val(),
    			    supplierAddress:$("#address").val(),
    			    supplierPhone:$("#phone").val(),
    			},
    			dataType:"json",
    			success:function(data){
    				alert("操作成功");
    				window.location.href="${ctxPath}/supplier/getSupplierShowJsp.kexin";
    			},
    			error:function(){
    				alert("操作失败");
    			}
    		});
    	});
    });
</script>
</body>
</html>