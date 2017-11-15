/**
 * 后台管理添加优惠券 js
 * Created by maoyikun on 2017/6/13.
 */

/** 异步提交表单相关设置 **/
/**
 * 定义提交表单的属性参数
 */
var options = {
    beforeSubmit: showRequest, //提交前的回调函数
    success: showResponse, //提交后的回调函数
    dataType: "json" //html(默认), xml, script, json...接受服务端返回的类型
};

/**
 * 提交表单之前的操作
 */
function showRequest(formData, jqForm, options) {
    //禁用提交按钮
    var $saveBtn = $('#save_btn');
    $saveBtn.attr('disabled', true);

    var couponType = $('#usableVendorType').val();
    if (couponType === 'TYPE_B') {
        var receiveWays = $('input[name="receiveWays"]:checked').val();
        if (!receiveWays) {
            layer.msg('请选择领取渠道限制信息！');
            //启用提交按钮
            $saveBtn.attr('disabled', false);
            return false;
        }
        var preQuantity = $('#preQuantity').val();
        var totalQuantity = $('#totalQuantity').val();
        if(parseInt(preQuantity) > parseInt(totalQuantity)){
            layer.msg('限领数量不能大于发放数量');
            //启用提交按钮
            $saveBtn.attr('disabled', false);
            return false;
        }
    }

    for (var i = 0; i < formData.length; i++) {
        var fData = formData[i];
        //处理优惠券金额和满减金额的单位为分
        if (fData.name === 'amount' || fData.name === 'orderAmountUseLimits') {
            if (isNaN(fData.value)) {
                layer.msg("金额请填写一个数字！");
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
            if (parseFloat(fData.value) < 0) {
                layer.msg("金额不能小于零！");
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
            var amount = fData.value;
            if (amount && amount > 0) {
                fData.value = Math.round(amount * 100);
            }
        }

        if (fData.name === 'totalQuantity') {
            if (isNaN(fData.value)) {
                layer.msg("发放数量请填写一个数字！");
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
            if (parseInt(fData.value) <= 0) {
                layer.msg("发放数量必须大于零！");
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
        }

        //验证是否有选择优惠券的各种限制
        if (fData.name === 'usableVendorType' && fData.value === 'TYPE_A') {
            var selections = $('#vendor_limit_label').children();
            if (!selections) {
                layer.msg("请选择优惠券使用限制的门店！");
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
        }

        if (fData.name === 'couponLimitType' && fData.value !== 'ALL') {
            var selections = $('#product_limit_label').children();
            if (!selections) {
                layer.msg('请选择优惠券限制信息！');
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
        }

        //区域限制
        if (fData.name === 'couponUseAreaLimit' && fData.value !== 'ALL') {
            var selections = $('#province_limit_label').children();
            if (!selections) {
                layer.msg('请选择区域限制信息！');
                //启用提交按钮
                $saveBtn.attr('disabled', false);
                return false;
            }
        }


        if (!fData.value && fData.required) {
            //启用提交按钮
            $saveBtn.attr('disabled', false);
            return false;
        }

    }
    //只要不返回false，表单都会提交,在这里可以对表单元素进行验证
    return true;
}

/**
 * 保存成功之后的回调
 * @param responseText
 * @param statusText
 */
function showResponse(resp, statusText) {
    //启用提交按钮
    $('#save_btn').attr('disabled', false);
    if (resp.code != 0) {
        layer.msg(resp.msg);
    } else {
        menuopen('/bbc/coupon/list.do');
    }
}

/** 异步提交表单相关设置 **/


/** -----------------------------》图片上传《-------------------------------- */
//隐藏文件控件
$('#logo_file').hide();

//如果之前有上传过图片，将图片展示出来
if ($('#logo_container').val() != '') {
    preview();
}

//点击上传图片，弹出选择框
$('#logo_button').on('click', function () {
    var logo_file = $(this).next();
    logo_file.click();
});
/**
 * 上传图片
 */
$('#logo_file').on('change', function () {
    var hidden_input = $(this).next();
    var $this = $(this);
    var file = this.files[0];
    var formData = new FormData();
    formData.append('file', file);
    $.ajax({
        url: '/upload/execute.do',
        type: 'POST',
        cache: false,
        data: formData,
        processData: false,
        contentType: false
    }).done(function (res) {
        if (res.status === 'success') {
            layer.msg("上传图片成功");
            hidden_input.val(res.name);
            preview();
        } else {
            layer.msg("上传图片失败");
        }
    }).fail(function (res) {
        layer.msg("图片上传功能异常");
    });

});

/**
 * 预览图片
 */
function preview() {
    var image_container = $('#logo_container');
    $.ajax({
        method: 'post',
        data: {image_name: image_container.val()},
        url: "/product/fileupload/preview.do"
    }).done(function (data) {
        $('#image').attr('src', data.uri);
    });
}

/** -----------------------------》图片上传《-------------------------------- */


/**
 * 监听模态框打开事件
 */
$('#choose_window').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget); // 触发modal的Button
    var $this = $(button);
    $('#choose_label').html('');
    $('#data_table').bootstrapTable('destroy');
    var chooseType = $this.attr('data-text');
    $('#choose_type').val(chooseType);
    $modalTitle = $('#modal_title');
    var url = '';
    var columns = [
        {
            checkbox: true
        },
        {
            field: 'id',
            visible: false

        },
        {
            title: "名称",
            field: "name",
            align: "center",
            valign: "middle"
        }
    ];
    var $sureBtn = $('.sure-btn');
    var $includeBtn = $('.include-btn');
    var $skuOpt = $('#sku_opt');
    switch (chooseType) {
        case 'CHOOSE_VENDOR':
            $modalTitle.text('选择店铺');
            url = '/bbc/coupon/findVendors.do';
            $sureBtn.show();
            $includeBtn.hide();
            $skuOpt.hide();
            break;
        case 'CATEGORY_LIMIT':
            $modalTitle.text('选择商品分类');
            url = '/bbc/coupon/findCategories.do';
            $sureBtn.show();
            $includeBtn.hide();
            $skuOpt.hide();
            break;
        case 'BRAND_LIMIT':
            $modalTitle.text('选择品牌');
            url = '/bbc/coupon/findBrands.do';
            $sureBtn.hide();
            $includeBtn.show();
            $skuOpt.hide();
            break;
        case 'PRODUCT_LIMIT':
            $modalTitle.text('选择商品');
            url = '/bbc/coupon/findProducts.do';
            columns.push({
                title: "商品编码",
                field: "code",
                align: "center",
                valign: "middle"
            });
            $sureBtn.hide();
            $includeBtn.show();
            $skuOpt.show();
            break;
        case 'PROVINCE_LIMIT':
            $modalTitle.text('选择省份');
            url = '/bbc/coupon/findProvince.do';
            $sureBtn.show();
            $includeBtn.hide();
            break;

    }
    buildTable(url, columns);
});


/**
 * 创建表格
 * @param url
 */
function buildTable(url, columns) {
    $('#data_table').bootstrapTable({
        method: "post",
        toolbar: "#toolbar",
        striped: true,
        cache: false,
        pagination: true,
        sortable: false,
        sortOrder: "asc",
        pageNumber: 1,
        pageSize: 20,
        pageList: [5, 10, 20, 50],
        url: url,
        dataField: "rows",
        contentType: "application/x-www-form-urlencoded",
        dataType: "json",
        sidePagination: "server",
        queryParamsType: '',
        queryParams: queryParams,
        columns: columns/* [
            {
                checkbox: true
            },
            {
                field: 'id',
                visible: false

            },
            {
                title: "名称",
                field: "name",
                align: "center",
                valign: "middle"
            }
        ]*/,
        locale: "zh-CN",
        detailView: false,
        onCheck: checkRow,
        onUncheck: unCheckRow,
        onCheckAll: checkAll,
        onUncheckAll: unCheckAll
    });
}

/**
 * 当用户选择一行的时候触发
 * @param row 当前选中的行的数据
 */
function checkRow(row) {
    var canAdd = true;
    var chooseType = $('#choose_type').val();
    var eIdCheckboxName = '';
    var eNameCheckboxName = '';
    switch (chooseType) {
        case 'CHOOSE_VENDOR':
            eIdCheckboxName = 'vendorIds';
            eNameCheckboxName = 'vendorNames';
            break;
        case 'CATEGORY_LIMIT':
            eIdCheckboxName = 'categoryIds';
            eNameCheckboxName = 'productLimitNames';
            break;
        case 'BRAND_LIMIT':
            eIdCheckboxName = 'brandIds';
            eNameCheckboxName = 'productLimitNames';
            break;
        case 'PRODUCT_LIMIT':
            eIdCheckboxName = 'productIds';
            eNameCheckboxName = 'productLimitNames';
            break;
        case 'PROVINCE_LIMIT':
            eIdCheckboxName = 'provinceIds';
            eNameCheckboxName = 'provinceNames';
            break;

    }
    var labelHtml = '<p style="float: left;" class="' + chooseType + '" data-id="' + row.id + '">';
    labelHtml += '<span style="margin-left: 10px;" class="label label-primary" data-text="' + row.name + '" data-id="' + row.id + '">' + row.name + '<span onclick="delLabel(this);" class="del-label" style="margin-left: 10px;cursor: pointer;">X</span></span>';
    labelHtml += '<input style="display: none;" type="checkbox" name="' + eIdCheckboxName + '" value="' + row.id + '" checked="checked" />';
    labelHtml += '<input style="display: none;" type="checkbox" name="' + eNameCheckboxName + '" value="' + row.name + '" checked="checked" />';
    labelHtml += '</p>';
    //添加之前先判断是否已经存在当前选中的标签
    $('#choose-label').children().each(function (i, e) {
        var dataId = $(e).attr('data-id');
        if (row.id === dataId) {
            canAdd = false;
        }
    });
    if (canAdd) {
        $('#choose_label').append(labelHtml);
    }
}

/**
 * 当用户取消选择一行的时候触发
 * @param row 当前取消选择的行
 */
function unCheckRow(row) {
    $('#choose_label').children().each(function (i, e) {
        var dataId = $(e).attr('data-id');
        if (row.id + '' === dataId) {
            $(e).remove();
        }
    });
}

/**
 * 当选择全部表格的时候触发
 * @param rows 选择的列表行集合
 */
function checkAll(rows) {
    for (var i = 0; i < rows.length; i++) {
        checkRow(rows[i]);
    }
}

/**
 * 当取消选择全部的时候触发
 * @param rows 取消选择的列表行集合
 */
function unCheckAll(rows) {
    for (var i = 0; i < rows.length; i++) {
        unCheckRow(rows[i]);
    }
}

/**
 * 删除标签
 */
function delLabel(elm) {
    $(elm).parent().remove();
}

/**
 * 绑定选择限制列表确定按钮
 */
$('.submit-choose').on('click', function () {
    var isExclude = $(this).val();
    $('#exclude').val(isExclude);
    var chooseType = $('#choose_type').val();
    var $labelClone = $('.' + chooseType).clone();
    switch (chooseType) {
        case 'CHOOSE_VENDOR' :
            $('#vendor_limit_label').html($labelClone);
            $('#vendor_limit_label_row').show();
            break;
        case 'CATEGORY_LIMIT':
        case 'BRAND_LIMIT':
        case 'PRODUCT_LIMIT':
            if(isExclude && isExclude === 'true'){
                $('#is_exclude_label').text('不包含：');
            }else{
                $('#is_exclude_label').text('包含：');
            }
            $('#product_limit_label').html($labelClone);
            $('#product_limit_label_row').show();
            break;
        case 'PROVINCE_LIMIT':
            $('#province_limit_label').html($labelClone);
            $('#province_limit_label_row').show();
            break;

    }
    $('.close-choose-win').click();
    $('#choose_label').html('');
});

/**
 * 构建查询参数
 * @param params
 * @returns {{page: *, size: *, searchKey: (*|jQuery), searchValue: (*|jQuery)}}
 */
function queryParams(params) {
    var page = params.pageNumber;
    var size = params.pageSize;
    var searchValue = $('#search_value').val().trim();
    if(searchValue){
        page = 1;
    }
    return {
        page: page,
        size: size,
        pageIndex: page,
        searchValue: searchValue,
        searchKey : $('#sku_opt').val(),
        queryGroupProduct: $('#groupProductLimit').val() === 'onlyGroup'
    }
}

/**
 * 绑定搜索按键
 */
$('#search_btn').on('click', function () {
    $('#data_table').bootstrapTable('refresh');
});

/**
 * 初始化日期控件
 */
function initDate() {

    //初始化日期插件
    var $date = $('.date');
    $date.on('click', function () {
        WdatePicker({
            dateFmt: 'yyyy-MM-dd HH:mm:ss',
            onpicking: checkDate
        });
    });

}

/**
 * 检查时间
 * @returns {boolean}
 */
function checkDate(dp) {
    var currentSelectDateTime = new Date(dp.cal.getNewDateStr()).getTime();
    var currentDate = new Date();
    var currentDateStr = currentDate.getFullYear() + "-" + (currentDate.getMonth() + 1) + "-" + currentDate.getDate();
    var currentDateTime = new Date(currentDateStr).getTime();
    var $cleanBtn = $('#dpClearInput');
    $(this).val(dp.cal.getNewDateStr());
    $cleanBtn.click();


    //领取开始时间
    var $receiveStartDate = $('#receiveStartDate');
    var receiveStartDate = $receiveStartDate.val();
    //领取结束时间
    var $receiveEndDate = $('#receiveEndDate');
    var receiveEndDate = $receiveEndDate.val();
    //使用开始时间
    var $usageStartDate = $('#usageStartDate');
    var usageStartDate = $usageStartDate.val();
    //使用结束时间
    var $usageEndDate = $('#usageEndDate');
    var usageEndDate = $usageEndDate.val();
    var receiveStartDateTime = new Date(receiveStartDate).getTime();
    var receiveEndDateTime = new Date(receiveEndDate).getTime();
    if (receiveStartDateTime && receiveEndDateTime) {
        if (receiveStartDateTime > receiveEndDateTime) {
            layer.msg("领取结束时间必须在领取开始时间之后！");
            $receiveEndDate.val('');
            return false;
        }
    }
    if (receiveStartDateTime < currentDateTime) {
        layer.msg("领取开始时间必须在当前时间之后！");
        $cleanBtn.click();
        return false;
    }
    if (receiveEndDateTime < currentDateTime) {
        layer.msg("领取结束时间必须在当前时间之后！");
        console.log($receiveEndDate);
        $receiveEndDate.val('');
        return false;
    }
    if (usageStartDate && receiveStartDateTime) {
        usageStartDate = new Date(usageStartDate).getTime();
        receiveStartDateTime = new Date(receiveStartDateTime).getTime();
        if (usageStartDate < receiveStartDateTime) {
            layer.msg("使用时间必须在领取开始时间之后！");
            $usageStartDate.val('');
            return false;
        }
    }
    var usageStartDateTime = new Date(usageStartDate).getTime();
    var usageEndDateTime = new Date(usageEndDate).getTime();
    if (usageStartDateTime && usageEndDateTime) {
        if (usageStartDateTime > usageEndDateTime) {
            layer.msg("使用结束时间必须在使用开始时间之后！");
            $usageEndDate.val('');
            return false;
        }

    }
    if (usageEndDateTime < currentDateTime) {
        layer.msg("使用结束时间必须在使用当前时间之后！");
        $usageEndDate.val('');
        return false;
    }
}


/**
 * 设置优惠券过期时间方式
 */
function expirationTimeType(type) {
    var $usageStartDate = $('#usageStartDate');
    var $usageCountDownDays = $('#usageCountDownDays');
    var $usageEndDate = $('#usageEndDate');
    if (type === "TIME_QUANTUM") {
        $('#use_time_quantum').show();
        $('#use_count_down').hide();
        //去掉倒计时必填限制，增加时间段必填限制
        $usageCountDownDays.attr('required', false);
        $usageStartDate.attr('required', true);
        $usageEndDate.attr('required', true);
        $usageCountDownDays.val('');

    }
    if (type === "COUNT_DOWN") {
        $('#use_time_quantum').hide();
        $('#use_count_down').show();
        //去掉时间段必填限制，增加倒计时必填限制
        $usageCountDownDays.attr('required', true);
        $usageStartDate.attr('required', false);
        $usageEndDate.attr('required', false);
        $usageStartDate.val('');
        $usageEndDate.val('');
    }
}

/**
 * 页面加载完成之后执行
 */
$(document).ready(function () {

    initDate();

    //异步提交表单
    $("#coupon_form").submit(function () {
        $(this).ajaxSubmit(options);
        //阻止表单默认提交
        return false;
    });
});
