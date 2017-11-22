<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>

<div>
    <div>
        <div class="col-*-12">
            <div class="row">
            <div class="col-md-3">
             <button class="btn btn-primary" onclick="menuopen('/perphoto/detail.do');">&nbsp;&nbsp;添加&nbsp;&nbsp;</button>
            </div>
            </div>
         <table id="protable" class="table table-hover"></table>
        </div>
    </div>
</div>
<script src="/js/jquery.js"></script>
<script src="/madmin/vendors/bootstrap-table/bootstrap-table.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${webroot}/madmin/vendors/moment/moment.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-clockface/js/clockface.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-maskedinput/jquery-maskedinput.js"></script>
<script type="text/javascript">
    var category_uri = "${webroot}/perphoto/allData.do";
    var $table = $("#protable");
    //根据窗口调整表格高度
    $(window).resize(function () {
        $table.bootstrapTable('resetView', {
            height: tableHeight()
        })
    });

    $table.bootstrapTable({
        method: "post",
        toolbar: "#toolbar",
        striped: true,
        cache: false,
        pagination: true,
        sortable: false,
        sortOrder: "asc",
        pageNumber: 1,
        url: category_uri,
        dataField: "rows",
        pageSize: 5,
        showRefresh: true,
        pageList: [5, 10, 20, 50],
        contentType: "application/x-www-form-urlencoded",
        dataType: "json",
        sidePagination: "server",
        queryParamsType: '',
        queryParams: queryParams,
        columns: [{
            label: 'state', checkbox: true

        },  {
            title: "编号", field: "id", sortable: true, align: "center", valign: "middle"
        },{
            title: "音乐地址", field: "musicPath", sortable: true, align: "center", valign: "middle"
        },{
            title: "邀请函编号", field: "invotationNo", sortable: true, align: "center", valign: "middle"
        },
//            {
//            title: "封面图标",formatter: imgFormatter, field: "shareIcon", sortable: true, align: "center", valign: "middle"
//        },
            {
            title: "模版编号",  field: "modelNo", sortable: true, align: "center", valign: "middle"
        },{
            title: "模版类型", field: "type", sortable: true, align: "center", valign: "middle"
        },{
            title: "&nbsp;&nbsp;&nbsp;创建时间&nbsp;&nbsp;&nbsp;", formatter: dateFormatter,field: "createTimestamp", sortable: true, align: "center", valign: "middle"
        }, {
            title: "目前人数", field: "canComeNum", sortable: false, align: "center", valign: "middle"
        }, {
            title: "操作", formatter: infoFormatter, align: "center", valign: "middle"
        }],
        locale: "zh-CN",
        detailView: false
    });

    function tableHeight() {
        return $(window).height() - 50;
    }

    function infoFormatter(value, row, index) {
        var edit_url = "/perphoto/detail.do?id="+row.id;
        out_html = out_html + "<button class='btn btn-primary' onclick='menuopen(\""+edit_url+"\");' >编辑</button>"
        out_html += "&nbsp;<button onclick='deleteSevenColor(\"" + row.id + "\");' class='btn btn-gray'>删除</button>";
        return out_html;
    }
    function imgFormatter(value, row, index){
        return '<img  src="'+value+'" width="150"/>'
    }

    Date.prototype.format =function(format)
    {
        var o = {
            "M+" : this.getMonth()+1, //month
            "d+" : this.getDate(), //day
            "h+" : this.getHours(), //hour
            "m+" : this.getMinutes(), //minute
            "s+" : this.getSeconds(), //second
            "q+" : Math.floor((this.getMonth()+3)/3), //quarter
            "S" : this.getMilliseconds() //millisecond
        }
        if(/(y+)/.test(format)) format=format.replace(RegExp.$1,
            (this.getFullYear()+"").substr(4- RegExp.$1.length));
        for(var k in o)if(new RegExp("("+ k +")").test(format))
            format = format.replace(RegExp.$1,
                RegExp.$1.length==1? o[k] :
                    ("00"+ o[k]).substr((""+ o[k]).length));
        return format;
    }
    function dateFormatter(value, row, index){
        var date = new Date(value).format("yyyy-MM-dd hh:mm:ss");
        return date;
    }

    function queryParams(params) {
        return {
            pageSize: params.pageSize,
            pageIndex: params.pageNumber,
            searchKey: $('#search_key').val(),
            searchValue: $('#search_value').val()
        }
    }

    $('#search').on('click', function () {
        $table.bootstrapTable('refresh');
    });
    function deleteSevenColor(id){
        var isdel = confirm("确定删除？");
        if(isdel){
            $.ajax({
                cache : true,
                type : "POST",
                url : "${webroot }/perphoto/del.do?type=1&id=" + id,
                data : {'id' : id},
                async : false,
                error : function(request) {
                    alert("操作错误！");
                    return false;
                },
                success : function(data) {
                    if(data == "success"){
                        layer.msg("删除成功");
                        menuopen("/perphoto/list.do");
                    }else{
                        layer.msg("删除失败");
                    }
                }
            });
        }
    }
</script>
