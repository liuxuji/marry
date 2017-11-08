<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="${webroot}/madmin/js/jquery-1.10.2.min.js"></script>
<script language="javascript" type="text/javascript" src="${webroot}/js/My97DatePicker/WdatePicker.js"></script>
<script src="${webroot}/madmin/js/jquery-migrate-1.2.1.min.js"></script>
<script src="${webroot}/madmin/js/jquery-ui.js"></script>
<script src="${webroot}/js/jquery.dataTables.min.js"></script>
<script src="${webroot}/js/dataTables.bootstrap.min.js"></script>
<script src="/js/jquery.validate.min.js" type="text/javascript" charset="utf-8"></script>
<%--treeview--%>
<script src="/js/bootstrap-treeview.js" ></script>
<!--loading bootstrap js-->
<script src="${webroot}/madmin/vendors/bootstrap/js/bootstrap.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-hover-dropdown/bootstrap-hover-dropdown.js"></script>
<script src="${webroot}/madmin/js/html5shiv.js"></script>
<script src="${webroot}/madmin/js/respond.min.js"></script>
<script src="${webroot}/madmin/vendors/metisMenu/jquery.metisMenu.js"></script>
<script src="${webroot}/madmin/vendors/slimScroll/jquery.slimscroll.js"></script>
<script src="${webroot}/madmin/vendors/jquery-cookie/jquery.cookie.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/icheck.min.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/custom.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-notific8/jquery.notific8.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-pace/pace.min.js"></script>
<script src="${webroot}/madmin/vendors/holder/holder.js"></script>
<script src="${webroot}/madmin/vendors/responsive-tabs/responsive-tabs.js"></script>

<!-- 引用tablejs -->
<script src="${webroot}/madmin/vendors/bootstrap-table/bootstrap-table.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/bootstrap-table.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/bootstrap-table-mobile.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/bootstrap-table-locale-all.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/bootstrap-table-locale-all.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/bootstrap-table-demo.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/locale/bootstrap-table-zh-CN.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/extensions/editable/bootstrap-table-editable.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-table/extensions/editable/bootstrap-table-editable.min.js"></script>

<!--CORE JAVASCRIPT-->
<script src="${webroot}/madmin/main/jquery.menu.js"></script>
<script type="text/javascript">var webroot = '${webroot}';</script>
<script src="${webroot}/madmin/main/main.js"></script>
<script src="${webroot}/madmin/main/main-console.js"></script>



<!-- 引用隔壁仓库 嘴上功夫的js -->
<script type="text/javascript" src="${webroot}/old/semantic.js"></script>
<script type="text/javascript" src="${webroot}/old/manage.js"></script>
<script type="text/javascript" src="${webroot}/old/superfish.js"></script>
<script type="text/javascript" src="${webroot}/old/dist/jstree.js"></script>
<script type="text/javascript" src="${webroot}/old/dist/jstree.min.js"></script>
<script type="text/javascript" src="${webroot}/layer/layer.js"></script>
<script type="text/javascript">
    $.fn.serializeJson = function()
    {
        var arrays = {};
        var forms = this.serializeArray();
        console.log(forms);
        $.each(forms, function() {
            if (arrays[this.name]) {
                if (!arrays[this.name].push) {
                    if( arrays[this.name] != 'undefined' ||  arrays[this.name] != ''){
                        arrays[this.name] =  arrays[this.name];
                    }
                }
                arrays[this.name] =  arrays[this.name] +','+this.value || '';
            } else {
                arrays[this.name] = this.value || '';
            }
        });
        return arrays;
    };


    Date.prototype.Format = function(fmt)
    {
        var o = {
            "M+" : this.getMonth()+1,
            "d+" : this.getDate(),
            "h+" : this.getHours(),
            "m+" : this.getMinutes(),
            "s+" : this.getSeconds(),
            "q+" : Math.floor((this.getMonth()+3)/3),
            "S"  : this.getMilliseconds()
        };
        if(/(y+)/.test(fmt))
            fmt=fmt.replace(RegExp.$1, (this.getFullYear()+"").substr(4 - RegExp.$1.length));
        for(var k in o)
            if(new RegExp("("+ k +")").test(fmt))
                fmt = fmt.replace(RegExp.$1, (RegExp.$1.length==1) ? (o[k]) : (("00"+ o[k]).substr((""+ o[k]).length)));
        return fmt;
    };

</script>
<!-- 引用公共工具类js -->
<script type="text/javascript" src="${webroot}/madmin/commons/common.js"></script>
