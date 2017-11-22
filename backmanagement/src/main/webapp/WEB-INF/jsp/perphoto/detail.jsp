<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="hp" tagdir="/WEB-INF/tags/perphoto" %>

<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-datepicker/css/datepicker.css">
<link type="text/css" rel="stylesheet"
      href="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link type="text/css" rel="stylesheet"
      href="${webroot}/madmin/vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
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
                        <div class="input-icon">
                            <input name="type" id="invotationNo" type="text" placeholder="模版类型"
                                   class="form-control" value="${dataDetail.type}" required>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-2 control-label">音乐地址:</label>
                    <div class="col-md-5">
                        <input name="description" id="musicPath" type="text" placeholder="音乐地址"
                               class="form-control" value="${dataDetail.musicPath}" required>
                    </div>
                </div>

                <div class="static-elements-container">
                    <div class="form-group">
                        <label class="col-md-2 control-label">图片数据:</label>
                        <div class="col-md-10">
                            <table id="elements-table" class="table  table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="col-md-2">Index</th>
                                    <th class="col-md-10">详情</th>
                                </tr>
                                </thead>
                                <tbody>
                                <hp:programStaticElements elements="${element.elements}" fieldNamePrefix="${fieldNamePrefix}"  />
                                </tbody>
                            </table>
                            <button type="button" class="add-element-btn" data-field-name-prefix="${fieldNamePrefix}" onclick="addCoverTemplateElement(this)">
                                <i class="ace-icon fa fa-plus"></i>
                            </button>
                        </div>
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
                <button id="save" type="submit" class="btn btn-primary">
                    保存
                </button>
            </div>
        </div>
    </form>
</div>

<script src="${webroot}/madmin/vendors/select2/select2.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-select/bootstrap-select.min.js"></script>
<script src="${webroot}/madmin/vendors/multi-select/js/jquery.multi-select.js"></script>
<script src="${webroot}/js/ui-dropdown-select.js"></script>
<script src="${webroot}/madmin/vendors/moment/moment.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript">
    $(function () {
        $("#coverForm").validate(
            {
                submitHandler: function (form) {
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
            }
        );
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

    }



</script>
