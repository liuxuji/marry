<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<div>
	<div>
		<div class="col-*-12">
			<div id="toolbar">
				<div class="btn btn-primary" data-toggle="modal" data-target="#addModal">添加记录</div>
			</div>
			<table id="mytab" class="table table-hover"></table>
			<div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
							<h4 class="modal-title" id="myModalLabel">添加记录</h4>
						</div>
						<div class="modal-body">
							<form role="form" action="javascript:void(0)">
								<div class="form-group">
									<input type="text" class="form-control" id="name" placeholder="请输入名称">
								</div>
								<div class="form-group">
									<input type="text" class="form-control" id="age" placeholder="请输入年龄">
								</div>
							</form>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
							<button type="button" class="btn btn-primary" id="addRecord">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script type="text/javascript">  

	$(function() {             
		//根据窗口调整表格高度             
		$(window).resize(function() {                 
			$('#mytab').bootstrapTable('resetView', {                     
				height: tableHeight()                 
				})             
		});    
		$('#mytab').bootstrapTable({
			method: "post",//请求方式
            toolbar: "#toolbar",//工具按钮用哪个容器
            striped: true,      //是否显示行间隔色
            cache: false,       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,   //是否显示分页（*）
            sortable: false,    //是否启用排序
            sortOrder: "asc",   //排序方式
            pageNumber:1,       //初始化加载第一页，默认第一页
			url: "/console/bootsreap-table-data.do",   //数据源 //这个接口需要处理bootstrap table传递的固定参数         
			dataField: "rows",  //服务端返回数据键值 就是说记录放的键值是rows，分页时使用总记录数的键值为total                 
			height: tableHeight(),//高度调整                 
			pagination: true,   //是否分页                 
			pageSize: 20,       //单页记录数                 
			pageList: [5, 10, 20, 50],//分页步进值                 
			contentType: "application/x-www-form-urlencoded",//请求数据内容格式 默认是 application/json 自己根据格式自行服务端处理
			//如果发送的是post请求，因为bootstap table使用的是ajax方式获取数据，这时会将请求的content type默认设置为 text/plain，这样在服务端直接通过 @RequestParam参数映射是获取不到的。
			//这时就需要在bootstrap-table的参数列表中显式设置 contentType: "application/x-www-form-urlencoded"
			dataType: "json",   //期待返回数据类型                 
			searchAlign: "left",//查询框对齐方式
			buttonsAlign: "left",//按钮对齐方式                 
			toolbarAlign: "right",//工具栏对齐方式  
			
			queryParamsType:'', //默认值为 'limit' ,在默认情况下 传给服务端的参数为：offset,limit,sort 设置为 ''  在这种情况下传给服务器的参数为：pageSize,pageNumber

		    //queryParams: queryParams,//前端调用服务时，会默认传递上边提到的参数，如果需要添加自定义参数，可以自定义一个函数返回请求参数
		    //如 :
		    //queryParams: function getParams(params) {                     
			//	//params obj                     
			//	params.other = "otherInfo";                     
			//	return params;                 
			//},    
			sidePagination: "server",  //分页方式：client客户端分页，server服务端分页（*）
			//search: true,      //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
			strictSearch: true,
			minimumCountColumns: 2,    //最少允许的列数
			clickToSelect: true,    //是否启用点击选中行
			searchOnEnterKey: false,//回车搜索                 
			showRefresh: true,//刷新按钮  是否显示刷新按钮             
			showColumns: true,//列选择按钮 是否显示所有的列                
			               
			columns: [                     
			   {                         
				  title: "全选",                         
				  label: "select",
				  checkbox: true,                         
				  width: 20,//宽度                         
				  align: "center",//水平                         
				  valign: "middle"//垂直                     
			   },                     
			   {                         
				  title: "ID",//标题                         
				  label: "id",//键名
				  sortable: true,//是否可排序                         
				  order: "desc"//默认排序方式                     
			 	},                     
			 	{                         
			 		label: "name",
			 		title: "NAME",                         
			 		sortable: true,                         
			 		titleTooltip: "this is name"                     
			 	},                     
			 	{                         
			 		label: "age",
			 		title: "AGE",                         
			 		sortable: true,                     
			 	},                     
			 	{                         
			 		label: "info",
			 		title: "INFO[using-formatter]",                         
			 		formatter: 'infoFormatter',//对本列数据做格式化                     
			 	}                 
			 ],                 
			 onClickRow: function(row, $element) {                     
				 //$element是当前tr的jquery对象                     
				 $element.css("background-color", "green");                 
			 },//单击row事件                 
			 locale: "zh-CN",//中文支持,                 
			 detailView: false, //是否显示详情折叠                 
			 detailFormatter: function(index, row, element) {                     
				 var html = '';                     
				 $.each(row, function(key, val){                         
					 html += "<p>" + key + ":" + val +  "</p>"                     
					});                     
				 return html;                 
				 }             
			});             
			
		$("#addRecord").click(function(){                 
			alert("name:" + $("#name").val() + " age:" +$("#age").val());             
		});         
	})         
	
	function tableHeight() {             
		return $(window).height() - 50;         
	}         
		
	/**          
	* 列的格式化函数 在数据从服务端返回装载前进行处理          
	* @param  {[type]} value [description]          
	* @param  {[type]} row   [description]          
	* @param  {[type]} index [description]          
	* @return {[type]}       [description]          
	*/         
	function infoFormatter(value, row, index){             
		return "id:" + row.id + " name:" + row.name + " age:" + row.age;         
	}     

</script>
