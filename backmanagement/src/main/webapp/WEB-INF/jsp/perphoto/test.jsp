<%@ page contentType="text/html; charset=UTF-8" language="java"%>
<%@ include file="/WEB-INF/jsp/include/base-param.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-colorpicker/css/colorpicker.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-datepicker/css/datepicker.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker-bs3.css">
<link type="text/css" rel="stylesheet"
      href="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/css/bootstrap-datetimepicker.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-timepicker/css/bootstrap-timepicker.min.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-clockface/css/clockface.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/bootstrap-switch/css/bootstrap-switch.css">
<link type="text/css" rel="stylesheet" href="${webroot}/madmin/vendors/iCheck/skins/all.css">
<style>
    .hidden{
        display:none;
    }
</style>

<div class="panel panel-primary">
    <div class="panel-heading"><span>编辑七星彩活动</span><span><button class="btn btn-primary" id="goBack">&nbsp;&nbsp;返回列表&nbsp;&nbsp;</button></span></div>
    <div class="panel-body pan">
        <form id="shareForm" action="${webroot }/sevenColor/doEdit.do" class="form-validate form-horizontal" method="post">
            <input type="hidden" id="lotteryDate" name="lotteryDate" value="${activity.lotteryTime}" />
            <input type="hidden" name="id" value="${activity.id}" />
            <input type="hidden" id="shareIcon" name="shareIcon" value="${activity.shareIcon}" />
            <div class="form-body pal">

                <div class="form-group">
                    <label  class="col-md-3 control-label">分享标题
                        <span class='require'>*</span>
                    </label>
                    <div class="col-md-9">
                        <input type="text" name="promotionName" required="required"  value="${activity.promotionName }" id="name" class="form-control required" />
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-md-3 control-label">分享内容
                        <span class='require'>*</span>
                    </label>
                    <div class="col-md-9">
                        <input type="text" name="introduction" required="required"  value="${activity.introduction }" id="introduction" class="form-control required" />
                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-md-3 control-label">分享url
                        <span class='require'>*</span>
                    </label>
                    <div class="col-md-9">
                        <input type="text" name="shareUrl" required="required"  value="${activity.shareUrl }" id="shareUrl" class="form-control required" />
                    </div>
                </div>

                <div class="form-group icon-div">
                    <label class="control-label col-md-3">分享icon
                        <span class='require'>*</span></label>
                    <div class="col-md-9 row">
                        <div class="col-md-12">
                            <div class="gallery product">
                                <c:if test="${not empty activity.shareIcon}">
                                    <div class="gallery-row">
                                        <div class="gallery-item">
                                            <img class="new" class="new" src="${activity.shareIcon}"/>
                                            <input class="gallery-file" type="file" style="display:none"/>
                                        </div>
                                    </div>
                                </c:if>
                            </div>
                        </div>

                        <div class="p_image btn btn-info" >添加图片</div>

                    </div>
                </div>

                <div class="form-group">
                    <label  class="col-md-3 control-label" style="padding-top:2px">是否启用
                    </label>
                    <div class="col-md-9">
                        是：<input type="radio"  <c:if test="${activity.enable==true}"> checked="checked" </c:if> id="enable" name="enable" value="true"/>&nbsp;&nbsp;否：<input type="radio" id="enable" <c:if test="${activity.enable==false}"> checked="checked"</c:if>name="enable" value="false"/>
                    </div>
                </div>



                <div class="form-group">
                    <label class="col-md-3 control-label">开始时间&nbsp;<span class='require'>*</span></label>
                    <div class="col-md-6">
                        <div class="input-group  date">
                            <input type="text" readonly="readonly" id="startTime1" name="startTime1" value = "${activity.startTime }"class="form-control required" />
                            <a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar"></i></a>
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="col-md-3 control-label">结束时间&nbsp;<span class='require'>*</span></label>
                    <div class="col-md-6">
                        <div class="input-group  date">
                            <input type="text" id="endTime1" readonly="readonly" value = "${activity.endTime }"name="endTime1" class="form-control required" />
                            <a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-calendar"></i></a>
                        </div>
                    </div>
                </div>


                <div class="form-group">
                    <label class="col-md-3 control-label">开奖详细时间</label>
                    <div class="col-md-6">
                        <div class="input-group  date">
                            <input type="text" readonly="readonly" id="lotteryDate1" value = "${activity.lotteryTime }" name="lotteryDate1" class="form-control" />
                            <a href="javascript:void(0);" class="input-group-addon"><i class="fa fa-clock-o"></i></a>
                        </div>
                    </div>
                </div>


            </div>
            <div class="form-group">
                <label  class="col-md-3 control-label" style="">&nbsp;</label>
                <div class="col-md-9">
                    <table  class="input1" style="width:100%">
                        <tr>
                            <th style="text-align:center;" class="col-md-3">
                                优惠券id
                            </th>
                            <th style="text-align:center;" class="col-md-6">
                                优惠券名称
                            </th>
                            <th style="text-align:center;" class="col-md-2">
                                操作
                            </th>
                        </tr>
                    </table>
                </div>
            </div>
            <div class="form-group">
                <label  class="col-md-3 control-label" style="padding:8px 0px 0px 30px;">参与奖优惠券</label>
                <div class="col-md-9">
                    <table  class="input1">
                        <tr>
                            <td style="text-align:center;" class="col-md-3">
                                <input  class="form-control required CouponsIds" type="text" onclick="changeProducts(this);" id="targCouponsIds" readonly="readonly"  name="couponIds"  value='<c:forEach items="${activity.coupons }" var ="coupon" varStatus="idx"><c:choose><c:when test="${idx.index==0 }">${coupon.id}</c:when><c:otherwise>,${coupons.id}</c:otherwise></c:choose></c:forEach>'  />
                            </td>

                            <td style="text-align:center;" class="col-md-6">
                                <input class="form-control required couponNames" type="text" readonly="readonly"  id="couponNames" name="couponNames"  value='<c:forEach items="${activity.coupons }" var ="coupon" varStatus="idx"><c:choose><c:when test="${idx.index==0 }">${coupon.couponName}</c:when><c:otherwise>,${coupon.couponName}</c:otherwise></c:choose></c:forEach>'  />
                            </td>
                            <td style="text-align:center;" class="col-md-2" id="weather_hidden">
                                <button type="button" class="btn chooseProduct btn-primary clearBtn">清除</button>
                                <button type="button" data-target="#choose-coupon" data-toggle="modal" class="btn chooseProduct btn-primary">选券</button>
                            </td>
                        </tr>
                    </table>
                </div>
            </div>

            <div class="form-group">
                <label class="col-md-3 control-label">富文本</label>
                <div class="col-md-9">
                    <textarea id="richText" name="richText" rows="12" class="kindEditor form-control">${activity.richText }</textarea>
                </div>
            </div>

            <div class="form-actions">
                <div class="col-md-offset-5 col-md-7">
                    <button type="submit" class="btn btn-primary">立即公布</button>
                    &nbsp;
                    <button type="button" class="btn btn-gray" onclick="menuopen('/sevenColor/sevenColorList.do');">取消</button>
                </div>
            </div>

            <div id="choose-coupon" tabindex="-1" role="dialog" aria-labelledby="modal-default-label" aria-hidden="true"
                 class="modal fade">
                <div class="modal-dialog modal-shop" style="width:60%">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" data-dismiss="modal" aria-hidden="true" class="close">&times;</button>
                            <h4 id="modal-default-label" class="modal-title">添加优惠券</h4>
                        </div>
                        <div class="modal-body">
                            <div class="col-*-12">
                                <div class="row1"></div>
                                <div class="form-inline">
                                    <div class="form-group">
                                        <label for="search_key" class="col-md-2 col-lg-2 control-label" style="padding-right:0px;">搜索条件</label>
                                        <div class="col-md-10 col-lg-10">
                                            <select class="list-select new-shop-select" id="search_key1" name="search_key" style="padding:0px;">
                                                <option value="couponName">优惠券名称</option>
                                            </select>
                                            <input type="text" class="form-control" id="search_value1" name="search_value" style="margin-top:-3px;"/>
                                            <input type="button" class="btn btn-primary" id="search1" value="搜索"/>
                                        </div>
                                    </div>
                                </div>
                                <table id="protable1" class="table1 table-hover1"></table>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" data-dismiss="modal" class="btn btn-default">关闭</button>
                            <button type="button" id="surechoose1" data-dismiss="modal" class="btn btn-primary">确定</button>
                        </div>
                    </div>
                </div>
            </div>

        </form>
    </div>
</div>
<script type="text/javascript">
    var startTime = new Date($("#startTime1").val()).getTime();
    var endTime = new Date($("#endTime1").val()).getTime();
    var timestamp = Date.parse(new Date());
    //	if((timestamp > startTime) && (timestamp < endTime)){
    //// 		console.log("不显示");
    //		$("#weather_hidden").addClass('hidden');
    //	}
    //活动结束了，不能更改券
    if(timestamp > endTime){
        $("#weather_hidden").addClass('hidden');
    }
</script>
<script type="text/javascript">
    var default_image_uri = "${webroot}/images/1919.jpg";
    var $body = $("#shareForm");
    var $icon = $("#shareIcon");

    var options = {
        //target : '#output', //把服务器返回的内容放入id为output的元素中
        beforeSubmit : showRequest, //提交前的回调函数
        success : showResponse, //提交后的回调函数
        //url : url,                 //默认是form的action， 如果申明，则会覆盖
        //type : post,               //默认是form的method（get or post），如果申明，则会覆盖
        dataType : "text",           //html(默认), xml, script, json...接受服务端返回的类型
        //clearForm : true,          //成功提交后，清除所有表单元素的值
        //resetForm : true,          //成功提交后，重置所有表单元素的值
        timeout : 5000 //限制请求的时间，当请求大于3秒后，跳出请求
    }

    function showRequest(formData, jqForm, options) {
        //formData: 数组对象，提交表单时，Form插件会以Ajax方式自动提交这些数据，格式如：[{name:user,value:val },{name:pwd,value:pwd}]
        //jqForm:   jQuery对象，封装了表单的元素
        //验证所有的参数必须存在有值
        var form = jqForm[0];
        if (!form.promotionName.value
        ) {

            return false;
        }
        return true; //只要不返回false，表单都会提交,在这里可以对表单元素进行验证
    };

    function showResponse(responseText, statusText) {
        if(responseText == "success"){
            menuopen('/sevenColor/sevenColorList.do');
            layer.msg("保存成功");
        }
        else if(responseText == "dateerror"){
            layer.msg("开始时间不能大于或等于结束时间");
        }else if(responseText == "mucherror"){
            layer.msg("同一时间段不能开启多个活动");
        }else if(responseText == "onlysiglede"){
            layer.msg("只允许存在一个默认分享");
        }else if(responseText == "onlysigleen"){
            layer.msg("只能存在一个开启活动");
        }else{
            layer.msg("保存失败");
        }
    };

    $(document).ready(function() {
        $("#shareForm").submit(function() {
            $("#richText").val(window.editor.html());
            $(this).ajaxSubmit(options);
            return false; //阻止表单默认提交
        });
    });

    <c:if test="${not empty activity.shareIcon}">
    hiddenBtnAdd();
    </c:if>

    var $table1 = $("#protable1");
    var coupon_uri = "${webroot}/sevenColor/couponList.do";

    //根据窗口调整表格高度
    $(window).resize(function () {
        $table1.bootstrapTable('resetView', {
            height: tableHeight()
        })
    });

    var aa=$table1.bootstrapTable({
        method: "post",
        toolbar: "#toolbar",
        striped: true,
        cache: false,
        pagination: true,
        sortable: false,
        sortOrder: "asc",
        pageNumber: 1,
        url: coupon_uri,
        dataField: "rows",
        pageSize: 20,
        showRefresh: true,
        pageList: [5, 10, 20, 50],
        contentType: "application/x-www-form-urlencoded",
        dataType: "json",
        sidePagination: "server",
        queryParamsType: '',
        queryParams: queryParams1,
        columns: [{
            label: 'state', checkbox: true

        },  {
            title: "优惠券id", field: "couponId", sortable: true, align: "center", valign: "middle"
        },{
            title: "优惠券名称", field: "couponName", sortable: true, align: "center", valign: "middle"
        },{
            title: "优惠金额", field: "couponAmount", sortable: true, align: "center", valign: "middle"
        },{
            title: "订单满额限制", field: "orderAmountLimit", sortable: true, align: "center", valign: "middle"
        },{
            title: "优惠券总数", field: "totalQuantity", sortable: true, align: "center", valign: "middle"
        },{
            title: "已领数量", field: "receivedQuantity", sortable: true, align: "center", valign: "middle"
        },{
            title: "优惠券生效时间", formatter: dateFormatter,field: "startDate", sortable: true, align: "center", valign: "middle"
        },{
            title: "优惠券失效时间",formatter: dateFormatter, field: "endDate", sortable: true, align: "center", valign: "middle"
        },{
            title: "是否启用",formatter: boolFormatter, field: "enable", sortable: true, align: "center", valign: "middle"
        }],
        locale: "zh-CN",
        detailView: false
    });
    //     console.log(aa);

    function tableHeight() {
        return $(window).height() - 50;
    }


    function boolFormatter(value, row, index){
        return value?"是":"否";

    }

    function queryParams1(params) {
        return {
            pageSize: params.pageSize,
            pageIndex: params.pageNumber,
            searchKey: $('#search_key1').val(),
            searchValue: $('#search_value1').val()
        }
    }
    $('#search1').on('click', function () {
        $table1.bootstrapTable('refresh');
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
    function dateFormatter(value, row, index){
        var date = new Date(value).format("yyyy-MM-dd hh:mm:ss");
        return date;
    }

    var currentTr = null;

    $(".chooseProduct").live("click",function(){
        var $this = $(this);
        currentTr = $this.closest("tr");
    });
    $(".chooseProduct1").live("click",function(){
        var $this = $(this);
        currentTr = $this.closest("tr");
    });




    //     $("#surechoose1").click(function(){
    //     	var datas = $table1.bootstrapTable('getSelections');
    //     	var idInput = currentTr.find("input1[name='targCouponsIds']");
    //     	var snInput = currentTr.find("input1[name='couponNames']");
    //     	var idstr = "";
    //     	var snstr = "";
    //     	$(datas).each(function (index,item){
    //     		console.debug(item.couponId);
    //     		idstr+=item.couponId+",";
    //     		snstr+=item.couponName+",";
    //     	});
    //    		idInput.val(idstr.length>0?idstr.substring(0,idstr.length-1):"");
    //    		snInput.val(snstr.length>0?snstr.substring(0,snstr.length-1):"");
    //     });
    $("#surechoose1").click(function(){
        var datas = $table1.bootstrapTable('getSelections');
        var idInput = currentTr.find("input.CouponsIds");
        var snInput = currentTr.find("input.couponNames");
        var idstr = "";
        var snstr = "";
        $(datas).each(function (index,item){
            console.debug(item.couponId);
            idstr+=item.couponId+",";
            snstr+=item.couponName+",";
        });
        idstr = idstr.length>0?idstr.substring(0,idstr.length-1):"";
        snstr = snstr.length>0?snstr.substring(0,snstr.length-1):"";
        idInput.val(idInput.val()==""?idstr:idInput.val()+","+idstr);
        snInput.val(snInput.val()==""?snstr:snInput.val()+","+snstr);
    });

    function showBtnAdd() {
        $(".p_image").show();
    }
    function hiddenBtnAdd() {
        $(".p_image").hide();
    }
    var fill_image_data = function (image_string, image_container) {
        $.ajax({
            url: "${webroot}/product/fileupload/preview/batch.do",
            data: {image_name: image_string},
            method: 'post'
        }).done(function (data) {
            for (var i = 0; i < data.uri.length; i++) {
                var target_row = find_target_row(image_container);
                if (target_row == null) return;
                target_row.append('<div class="gallery-item"><img src="'
                    + data.uri[i]
                    + '" /></div>');
            }
        });
    };

    var inilizeImage = function () {
        var logoName = "${oldProduct.image}";
        // 初始化商品Logo图片
        fill_image_data(logoName, $('div.gallery.logo'));

        var productImageName = new Array();

        productImageName = "${oldProduct.productImages}".replace("[", "")
            .replace("]", "")
            .split(",");

        for (var i = 0; i < productImageName.length; i++) {
            fill_image_data($.trim(productImageName[i]), $('div.gallery.product'));
        }

        var introImageName = new Array();

        introImageName = "${oldProduct.introImages}".replace("[", "")
            .replace("]", "")
            .split(",");
        for (var i = 0; i < introImageName.length; i++) {
            // 初始化商品介绍图片
            fill_image_data($.trim(introImageName[i]), $('div.gallery.intro'));
        }
    }
    inilizeImage();

    $('input').iCheck({
        checkboxClass: 'icheckbox_minimal-grey',
        radioClass: 'iradio_minimal',
        increaseArea: '20%' // optional
    });

    $body.on('click', '.gallery-item img.new', function (event) {
        $(this).next().click();
        event.stopPropagation();
    });

    $body.on('click', '.gallery-item img', function () {

        if ($(this).hasClass('new')) return;

        var $img = $(this);

        layer.confirm('您想进行什么图片操作？', {
            btn: ['更新', '删除']
        }, function () {
            update_uploaded_image($img);
        }, function () {
            delete_uploaded_image($img);

        });
    });

    var update_uploaded_image = function (img) {
        var img_parent = img.parent();
        img_parent.append('<input type="file" style="display:none;" class="gallery-file"/>');
        img.next().click();
    };

    var delete_uploaded_image = function (img) {
        var image_stack = [];
        get_neighbour_images(img, image_stack);
        get_gallery_row_image_html(img, image_stack);
        var row = img.parent().parent();
        img.parent().remove();
        var current_item_count = row.children().length;
        for (var i = 0; i < image_stack.length; i++) {
            if (current_item_count == 3) {
                row.parent().append('<div class="gallery-row"></div>');
                row = row.parent().children().last();
                current_item_count = row.children().length
            }
            row.append('<div class="gallery-item"></div>');
            row.children().last().append(image_stack[i]);
            current_item_count++;
        }
        $icon.val("");
        showBtnAdd();
    };

    var get_neighbour_images = function (img, image_stack) {
        var image_item = img.parent().next();
        while (image_item.length != 0) {
            image_item.find('img').each(function () {
                image_stack.push($(this).parent().html());
                $(this).parent().remove();
            });
            image_item = image_item.next();
        }
    };

    var get_gallery_row_image_html = function (img, image_stack) {
        var image_row = img.parent().parent();
        while (image_row.length != 0) {
            image_row = image_row.next();
            image_row.find('img').each(function () {
                image_stack.push($(this).parent().html());
                $(this).parent().remove();
            });
        }
    };

    $body.on('change', '.gallery-file', function () {
        var $this = $(this);
        var file = this.files[0];
        var reader = new FileReader();
        reader.onload = function (e) {
            var base64stream = this.result;
            var dataObj = {
                base64stream: base64stream
            };
            $.ajax({
                type: "POST",
                url: "${webroot}/product/fileupload/upload.do",
                enctype: 'multipart/form-data',
                data: dataObj
            }).done(function (data) {
                if (data.status == 'success') {
                    layer.msg("上传图片成功");
                    get_image_uri(data.name, $this.prev());
                    $this.remove();
                } else {
                    layer.msg("上传图片失败");
                }
            });
        };
        reader.readAsDataURL(file);

    });

    var get_image_uri = function (image_name, image_container) {
        $.ajax({
            method: 'post',
            data: {image_name: image_name},
            url: "${webroot}/product/fileupload/preview.do"
        }).done(function (data) {
            $icon.val(data.uri);

            image_container.prop("src", data.uri).removeClass('new');
        });
    };

    var validate_append_action = function (gallery_row, image_uri) {
        if (gallery_row.find('.gallery-item').last().length == 1) {
            if (gallery_row.find('.gallery-item')
                    .last()
                    .children()
                    .first()
                    .prop("src")
                    .indexOf(image_uri) != -1) {
                layer.msg("请上传图片");
                return false;
            }
        }
        return true;
    };

    var validate_logo_append_action = function (image_container) {
        if (image_container.find('div.gallery-item').length >= 1) {
            layer.msg("只能上传一张Logo图片");
            return false;
        }
        return true;
    };

    $('.p_image').bind('click', function () {
        var image_container = $(this).prev();
        var target_row;
        if ((image_container.hasClass('logo'))) {
            if (!validate_logo_append_action(image_container)) return;
            target_row = find_target_row(image_container);
        } else {
            target_row = find_target_row(image_container.find('.gallery').first());
        }
        if (target_row == null) return;
        target_row.append('<div class="gallery-item"><img class="new" src="'
            + default_image_uri
            + '" /><input class="gallery-file" type="file" style="display:none"/></div>');
        $icon.val(window.location.protocol+"//"+window.location.host+default_image_uri);
        hiddenBtnAdd();
    });
    var find_target_row = function (image_container) {
        var target_row;
        if (image_container.find('div.gallery-row').length == 0) {
            image_container.append('<div class="gallery-row"></div>');
            target_row = image_container.children().first();
        } else {
            var row = image_container.children().last();
            if (row.children().length < 3) {
                target_row = row;
            } else {
                if (!validate_append_action(image_container.children()
                        .last(), default_image_uri)) return null;

                image_container.append('<div class="gallery-row"></div>');
                target_row = image_container.children().last();
            }
        }
        if (!validate_append_action(target_row, default_image_uri)) return null;

        return target_row;
    };

    $(".clearBtn").on('click',function(){
        $("#couponNames").val("");
        $("#targCouponsIds").val("");
    });
    $(".clearBtn1").on('click',function(){
        $("#sourceCouponsIds").val("");
        $("#couponNames1").val("");
    });

    $("#goBack").click(function(){
        menuopen('/sevenColor/sevenColorList.do');
    });


</script>
<script src="${webroot}/madmin/vendors/jquery-validate/jquery.validate.min.js"></script>
<script src="${webroot}/madmin/js/jquery.form.js"></script>
<script src="${webroot}/js/form-validation.js"></script>
<script src="${webroot}/js/ui-checkbox-radio.js"></script>

<script src="${webroot}/madmin/vendors/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-daterangepicker/daterangepicker.js"></script>
<script src="${webroot}/madmin/vendors/moment/moment.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-datetimepicker/build/js/bootstrap-datetimepicker.min.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-clockface/js/clockface.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script src="${webroot}/madmin/vendors/bootstrap-switch/js/bootstrap-switch.min.js"></script>
<script src="${webroot}/madmin/vendors/jquery-maskedinput/jquery-maskedinput.js"></script>
<script src="${webroot}/madmin/vendors/charCount.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/icheck.min.js"></script>
<script src="${webroot}/madmin/vendors/iCheck/custom.min.js"></script>
<script src="${webroot}/js/form-components.js"></script>
<script src="${webroot}/madmin/vendors/kindeditor/kindeditor.js"></script>