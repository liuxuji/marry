<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="hp" tagdir="/WEB-INF/tags/perphoto" %>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-datepicker/css/datepicker.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css">

<%--<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-colorpicker/css/colorpicker.css">--%>
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">
<%--<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-clockface/css/clockface.css">--%>
<%--<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-switch/css/bootstrap-switch.css">--%>
<%--<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/iCheck/skins/all.css">--%>
<script src="${webroot}/madmin/vendors/jquery-validate/jquery.validate.min.js"></script>
<script src="${webroot}/madmin/js/jquery.form.js"></script>
<%--<script src="${webroot}/js/form-validation.js"></script>--%>
<%--<script src="${webroot}/js/ui-checkbox-radio.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/select2/select2.min.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/bootstrap-select/bootstrap-select.min.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/multi-select/js/jquery.multi-select.js"></script>--%>
<%--<script src="${webroot}/js/ui-dropdown-select.js"></script>--%>

<script src="${webroot}/madmin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${webroot}/madmin/vendors/moment/moment.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<%--<script src="${webroot}/madmin/vendors/bootstrap-clockface/js/clockface.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/jquery-maskedinput/jquery-maskedinput.js"></script>--%>
<%--<script src="${webroot}/madmin/vendors/charCount.js"></script>--%>
<script src="${webroot}/madmin/vendors/iCheck/icheck.min.js"></script>
<%--<script src="${webroot}/madmin/vendors/iCheck/custom.min.js"></script>--%>
<%--<script src="${webroot}/js/form-components.js"></script>--%>
<script src="${webroot}/madmin/vendors/kindeditor/kindeditor.js"></script>
<script src="${webroot}/madmin/vendors/kindeditor/lang/zh-CN.js"></script>
<style type="text/css">
    tr.detail-row {
        display: none;
    }

    tt{}

    tr.detail-row.open {
        display: block;
        display: table-row;
    }
</style>
<div class="panel panel-default new-add-brand">
    <div><button onclick="tt()" >TEST</button></div>
    <div class="panel-heading">
            <button class="btn btn-link pull-right" onclick="menuopen('/perphoto/list.do');">返回</button>
        <h3 class="panel-title">数据编辑</h3>
    </div>
    <form role="form" id="coverForm" class="form-horizontal form-bordered" onsubmit="return false;">
        <div class="panel-body pan">
            <div class="form-body pal">
                <div class="form-group">
                    <label for="invotationNo" class="col-md-2 control-label">模版类型:</label>
                    <div class="col-md-5">
                        <select id ="invotationNo" name = "invotationNo" class="form-control valid">
                            <option value="0" selected>不使用模版</option>
                        </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">音乐地址:</label>
                    <div class="col-md-5">
                        <input name="musicPath" id="musicPath" type="text" placeholder="音乐地址"
                               class="form-control" value="${dataDetail.musicPath}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">标题:</label>
                    <div class="col-md-5">
                        <input name="title" id="title" type="text" placeholder="标题"
                               class="form-control" value="${dataDetail.title}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">正文内容:</label>
                    <div class="col-md-5">
                        <input name="content" id="content" type="text" placeholder="正文内容"
                               class="form-control" value="${dataDetail.content}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">背景大图:</label>
                    <div class="col-md-5">
                        <input name="mainPhotoPath" id="mainPhotoPath" type="text" placeholder="背景大图"
                               class="form-control" value="${dataDetail.mainPhotoPath}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">生效时间:</label>
                    <div class="col-md-5">
                        <div class="input-group datetimepicker-disable-time date">
                            <input name="beginTime" id="beginTime" type="text" placeholder="生效时间"
                                   class="form-control" value="${dataDetail.beginTime}" required>
                            <a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar timepicker"></i></a>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">结束时间:</label>
                    <div class="col-md-5">
                        <div class="input-group datetimepicker-disable-time date">
                            <input name="endTime" id="endTime" type="text" placeholder="结束时间"
                                   class="form-control" value="${dataDetail.endTime}" required>
                            <a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar timepicker"></i></a>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">婚礼时间:</label>
                    <div class="col-md-5">
                        <div class="input-group datetimepicker-disable-time date">
                            <input name="marryTime" id="marryTime" type="text" placeholder="婚礼时间"
                                   class="form-control" value="${dataDetail.marryTime}" required>
                            <a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar timepicker"></i></a>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">男名称:</label>
                    <div class="col-md-5">
                        <input name="maleName" id="maleName" type="text" placeholder="男名称"
                               class="form-control" value="${dataDetail.maleName}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">女名称:</label>
                    <div class="col-md-5">
                        <input name="femaleName" id="femaleName" type="text" placeholder="女名称"
                               class="form-control" value="${dataDetail.femaleName}" required>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">开始地点:</label>
                    <div class="col-md-5">
                        <input name="marryAddress" id="marryAddress" type="text" placeholder="开始地点"
                               class="form-control" value="${dataDetail.marryAddress}" required>
                    </div>
                </div>

                <div class="static-elements-container">
                    <div class="form-group">
                        <label class="col-md-2 control-label">更多图片数据:</label>
                        <div class="col-md-10">
                            <table id="elements-table" class="table  table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Index</th>
                                    <th class="col-md-10">详情</th>
                                </tr>
                                </thead>
                                <tbody>
                                <hp:programStaticElements elements="${dataDetail.photoInfos}" fieldNamePrefix="${fieldNamePrefix}"  />
                                </tbody>
                            </table>
                            <button type="button" class="add-element-btn" data-field-name-prefix="${fieldNamePrefix}" onclick="addCoverTemplateElement(this)">
                                <i class="ace-icon fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">富文本内容:</label>
                    <div class="col-md-9">
                        <textarea name="textArea" id="textArea" rows="12" class="form-control kindEditor">
                            ${dataDetail.textArea}
                        </textarea>
                    </div>
                </div>

                <hr>
                <%--<hp:coverTemplateData element="${dataDetail.photoInfos}" fieldNamePrefix=""/>--%>
            </div>
        </div>
        <input type="hidden" name="id" value="${dataDetail.id}">
        <input type="hidden" name="userId" value="${dataDetail.userId}">
        <input type="hidden" name="canComeNum" value="${dataDetail.canComeNum}">
        <input type="hidden" name="modelNo" value="${dataDetail.modelNo}">

        <div class="form-actions">
            <div class="col-md-offset-5 col-md-7">
                <button id="save" type="submit" class="btn btn-primary" onclick="saveData()">
                    保存
                </button>
            </div>
        </div>
    </form>
</div>

<script type="text/javascript">
    function tt() {menuopen('${webroot}/perphoto/test.do')}
    function saveData(){
        var url = "${webroot}/perphoto/save.do";
        console.log($('#coverForm').serialize());
        $.ajax({
            cache: true,
            type: "POST",
            url: url,
            data: $('#coverForm').serialize(),
            async: false
        }).done(function (data) {
            layer.msg("保存成功");
            console.log(data);
            menuopen('${webroot}/perphoto/list.do');
        }).fail(function () {
            layer.msg("保存失败");
        });
    }

    $(function () {
        init();
    });

    function updateElementDataConfigContainerDisplayStatus() {
        var value = $('input.element-data-policy[type=radio]:checked').val();
        if (value == 'STATIC') {
            $(".dynamic-provider-container").hide();
            $(".static-elements-container").show();
        } else if (value == 'DYNAMIC') {
            $(".dynamic-provider-container").show();
            $(".static-elements-container").hide();
        }
    }

    function updateTimeRangePolicyContainerDisplayStatus() {
        var value = $('input.time-range-policy[type=radio]:checked').val();
        if (value == 'STANDARD') {
            $(".time-range-standard-container").show();
        } else if (value == 'INHERIT') {
            $(".time-range-standard-container").hide();
        }
    }

    function addCoverTemplateElement() {
        console.log("add CoverTemplateEmement");
        var orderIndex = $("#elements-table tbody tr").size() / 2;
        $.get("${webroot}/perphoto/elements.do?index=" + orderIndex, function (elementTr) {
            $("#elements-table tbody").append(elementTr);
        });
    }

    function updateElementDataConfigContainerDisplayStatus(toggle) {
        console.log(toggle);
        console.log("切换集合数据加载方式");
        var $toggle = toggle ? $(toggle) : $('input.element-data-policy[type=radio]:checked:first');
        var value = $toggle.val() || $('input.element-data-policy[type=radio]:checked:first').val();
        var parentOfToggle = $toggle.closest(".form-group").parent();
        console.log(parentOfToggle);
        if (value == 'STATIC') {
            parentOfToggle.children(".dynamic-provider-container:first").hide();
            parentOfToggle.children(".static-elements-container:first").show();
        } else if (value == 'DYNAMIC') {
            parentOfToggle.children(".dynamic-provider-container:first").show();
            parentOfToggle.children(".static-elements-container:first").hide();
        }
    }

    function addCoverTemplateElement(toggle) {
        var $toggle = $(toggle);
        var fieldNamePrefix = $toggle.data("field-name-prefix");
        var orderIndex = $toggle.parent().find("table:first>tbody:first>tr").size() / 2;
        $.get("${webroot}/perphoto/elements.do?index=" + orderIndex, function (elementTr) {
            $(toggle).parent().find("table:first>tbody:first").append(elementTr);
            init();
        });
    }

    function showCoverElementDetails(e) {
        var $this = $(e);
        var $nextTr = $this.closest('tr').next();
        $nextTr.toggleClass('open');
        $this.find("i.fa").toggleClass('fa-angle-double-down').toggleClass('fa-angle-double-up');
        updateElementDataConfigContainerDisplayStatus($nextTr.find("input.element-data-policy:checked"));
    }

    function deleteCoverElementDetails(e) {
        if (confirm("您确定要删除该条数据")) {
            var $toggle = $(e);
            var currentTr = $toggle.closest('tr');
            var $table = $toggle.closest("table");
            currentTr.next().remove();
            currentTr.remove();
            var index = -1;
            $table.find("tbody tr.tt").each(function () {
                var $td = $(this).find("td:first");
                $td.html(++index);
            });
        }
    }

    function deleteProgram(id, name) {
        if (confirm("您确定要删除成员:" + name)) {
            $.post("${webroot}/covers/${cover.id}/programs/delete.do?programId=" + id, function () {
                menuopen('/covers/${cover.id}/programs/${programDetail.program.id}.do');
            });
        }
    }

    function get_image_uri (image_name, image_container) {
        image_container.prev().prev().prev().prop("src", image_name);
        image_container.next().attr("value", image_name);
    };
    function init() {
        console.log("init");

        $('input.timepicker').datetimepicker({
            format: 'YYYY-MM-DD HH:mm:ss',//选择完日期后，input框里的时间值的格式
            startDate: new Date(),//开始日期时间，在此之前的都不可选，同理也有endDate
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            forceParse: 0,
            showMeridian: 1,
            sideBySide: true //可以同时选择日期和时间
        });

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

        $('input.element-data-policy[type=radio]').change(function () {
            updateElementDataConfigContainerDisplayStatus(this);
        });
        updateElementDataConfigContainerDisplayStatus();
        $('input.time-range-policy[type=radio]').change(function () {
            updateTimeRangePolicyContainerDisplayStatus();
        });
        updateTimeRangePolicyContainerDisplayStatus();


        $('.logo_button').on('click', function () {
            var logo_file = $(this).next().next();
            logo_file.click();
        });

        $('.del_logo_button').on('click', function () {
            $(this).next().next().attr("value", "");
            $(this).prev().prev().attr("src", "");
        });

        $('.logo_file').on('change', function () {
            var $this = $(this);
            var file = this.files[0];
            var formData = new FormData();
            formData.append('file', file);
            $.ajax({
                url: '/fileupload/upload.do',
                type: 'POST',
                cache: false,
                data: formData,
                processData: false,
                contentType: false
            }).done(function (res) {
                if (res.code == 0) {
                    layer.msg("上传图片成功");
                    get_image_uri(res.message, $this);
                } else {
                    layer.msg("上传图片失败");
                }
            }).fail(function (res) {
                layer.msg("图片上传功能异常");
            });
        });

        KindEditor.ready(function (K) {
            K.create('#textArea');
        });

    }



</script>
