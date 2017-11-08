/**
 * 退单管理 审核JS
 *
 * Created Evan zale on 2017/7/14.
 */

//控制需要退货详情div的显示或隐藏 (退货操作)
var return_method_div_html = '';
var real_Refund_ReturnMethod = 'hide'; /*需要退货：hide ，无需退货：show*/
function showReturnMethodDiv(value, orderReturnRequire, orderCode) {
    var html = $("#return_method_div").html();
    var orderCodeBBC = orderCode.indexOf("BBC"); /*0: A类 ，-1: B类*/
    if (return_method_div_html == '') {
        return_method_div_html = html;
    }
    if (value == 'true') { // 需要退货
        real_Refund_ReturnMethod = 'hide';
        $('#orderReturnRequire').val('RETURNS_AND_REFUNDS');
        $("#return_method_div").html(return_method_div_html);
        $('#real_Refund_Amount').hide(); // 需要退货状态下，隐藏退款金额
        if (real_Refund_AuditState == 'hide') {// 驳回状态
            if (orderReturnRequire == '仅退款') { // 仅退款单子
                if (orderCodeBBC == 0) {
                    $('#return_method_div').hide();
                } else {
                    $('#return_method_div').show(); // 显示退货方式
                }
            } else {
                $('#return_method_div').hide();
            }
        } else {// 允许状态
            if (orderCodeBBC == 0) {
                $('#return_method_div').hide();
            } else {
                $('#return_method_div').show(); // 显示退货方式
            }
        }
    } else { // 无需退货
        real_Refund_ReturnMethod = 'show';
        $('#orderReturnRequire').val('REFUND');
        $("#return_method_div").html('');
        // 无需退货状态下，当审核状态为驳回时，隐藏退款金额，否则显示
        if (real_Refund_AuditState == 'hide') { // 驳回状态
            $('#real_Refund_Amount').hide();
        } else { // 允许状态
            $('#real_Refund_Amount').show();
        }
        $('#return_method_div').hide(); // 隐藏退货方式
    }
}
//控制收货人或收货地址的显示或隐藏
function showReturnMethodDetailDiv(value) {
    if (value == 'take_their') {
        $('#return_method_detail').hide();
        $('#returnReciver').val('');
        $('#returnAddress').val('');
        $('#returnReciver').attr('required', false);
        $('#returnAddress').attr('required', false);
        $('#returnReciver').removeClass('form-control required');
        $('#returnAddress').removeClass('form-control required');
    } else {
        $('#return_method_detail').show();
        $('#returnReciver').addClass('form-control required');
        $('#returnAddress').addClass('form-control required');
        $('#returnReciver').attr('required', 'required');
        $('#returnAddress').attr('required', 'required');
    }
}
var options = {
    //target : '#output', //把服务器返回的内容放入id为output的元素中
    beforeSubmit: showRequest, //提交前的回调函数
    success: showResponse, //提交后的回调函数
    //url : url,                 //默认是form的action， 如果申明，则会覆盖
    //type : post,               //默认是form的method（get or post），如果申明，则会覆盖
    dataType: "json", //html(默认), xml, script, json...接受服务端返回的类型
    //clearForm : true,          //成功提交后，清除所有表单元素的值
    //resetForm : true,          //成功提交后，重置所有表单元素的值
    timeout: 3000
    //限制请求的时间，当请求大于3秒后，跳出请求
};
function showRequest(formData, jqForm, options) {
    //formData: 数组对象，提交表单时，Form插件会以Ajax方式自动提交这些数据，格式如：[{name:user,value:val },{name:pwd,value:pwd}]
    //jqForm:   jQuery对象，封装了表单的元素
    var text = $('#auditState option:selected').text();
    var cf = confirm("确认审核信息，当前状态：" + text);
    if (!cf) return false;

    return true; //只要不返回false，表单都会提交,在这里可以对表单元素进行验证
}
function showResponse(responseText, statusText) {
    if (statusText == "success") {
        /* var data = JSON.parse(responseText);*/
        var data = responseText;
        if (!data.code) {/* 成功返回状态码code为0*/
            layer.msg("审核成功！");
            $('#coloseModal').click();
            $('#modal-responsive').modal('hide');
            menuopen(data.data);
        } else {
            alert("审核失败！");
        }
    } else {
        alert("审核失败,请稍后重试！");
    }
}

//选择审核状态之后，调整页面展示内容
var real_Refund_AuditState = 'show'; // 驳回：hide  允许：show
function changeAuditState(auditState, orderReturnRequire, orderCode) {
    var orderCodeBBC = orderCode.indexOf("BBC"); // 0: A类 ，-1: B类
    if (auditState == 'true') { // 允许状态
        real_Refund_AuditState = 'show';
        $('#is_need_return_div').show();
        // 允许状态时，需要判断退货操作，当前选项为无需退货时显示退款金额，否则隐藏
        if (real_Refund_ReturnMethod == 'show') { // 无需退货
            $('#real_Refund_Amount').show();
        } else { // 需要退货
            $('#real_Refund_Amount').hide();
            if (orderCodeBBC == 0) {
                $('#return_method_div').hide();
            } else {
                $('#return_method_div').show(); // 显示退货方式
            }
        }
    } else { // 驳回状态
        if (orderReturnRequire == '退货退款') {//审核  驳回需要显示退款操作，当且为仅退款时
            $('#is_need_return_div').hide();
            $('#return_method_div').hide(); // 隐藏退货方式
        } else { // 仅退款单子
            if (real_Refund_ReturnMethod == 'hide') { // 需要退货选项
                if (orderCodeBBC == 0) {
                    $('#return_method_div').hide();
                } else {
                    $('#return_method_div').show(); // 显示退货方式
                }
            } else { // 无需退货选项
                $('#return_method_div').hide(); // 隐藏退货方式
            }


        }
        real_Refund_AuditState = 'hide';
        $('#real_Refund_Amount').hide(); // 驳回状态下，隐藏退款金额
    }
}
$(document).ready(function () {

    /*退单详情页图片凭证放大*/
    $(".pimg").click(function(){
        var _this = $(this);//将当前的pimg元素作为_this传入函数
        imgShow("#outerdiv", "#innerdiv", "#bigimg", _this);
    });

    $('#auditing_return_form_saveBtn').click(function () {
        if ($('#auditing_return_form').valid()) {// 通过表单校验
            checkRealRefundAmountAudit();
        }
    });
});

/**
 * 校验退款金额合法性
 */
var realRefundAmountAudit;
var $needReturnAudit = $('#needReturn');// 需要退货 （成立条件：无需退货）
var $orderReturnRequire_hidden = $('#orderReturnRequire_hidden');// 退款要求 （成立条件：仅退款）
function checkRealRefundAmountAudit(returnId) {


    if ($('#auditState').val() == 'false' || ($needReturnAudit.val() != 'false')) {
        $('#realRefundAmountAudit').val(0.00);
        /*layer.msg("不用校验！");*/
        $('#auditing_return_form').ajaxSubmit(options);
        return true;
    }
    realRefundAmountAudit = $('#realRefundAmountAudit');
    if (realRefundAmountAudit.val().trim() == "" || realRefundAmountAudit.val().trim() == null) {
        layer.msg("必须填写退款金额！");
        realRefundAmountAudit.select();
        return false;
    }
    if (parseFloat(realRefundAmountAudit.val().trim()) < 0 || isNaN(realRefundAmountAudit.val().trim())) {
        layer.msg("必须填写合法的退款金额格式！");
        realRefundAmountAudit.select();
        return false;
    }
    var refundAmountMax = $('#refundAmountMax').val();
    if (refundAmountMax != '' && refundAmountMax != null) {
        if (parseFloat(refundAmountMax) < parseFloat(realRefundAmountAudit.val().trim())) {
            layer.msg("退款金额应不大于实际退款金额！");
            realRefundAmountAudit.select();
            return;
        }
    }

    if (parseFloat(realRefundAmountAudit.val().trim()) == 0){
        layer.confirm('确定退款金额为 0？', {
            btn: ['是', '否'] //按钮
        }, function (index) {
            layer.close(index);
            $('#auditing_return_form').ajaxSubmit(options);
        }, function (index) {
            layer.close(index);
            realRefundAmountAudit.select();
            return false;
        });
    }else {
        $('#auditing_return_form').ajaxSubmit(options);
    }
}

function imgShow(outerdiv, innerdiv, bigimg, _this){
    var src = _this.attr("src");//获取当前点击的pimg元素中的src属性
    $(bigimg).attr("src", src);//设置#bigimg元素的src属性

    /*获取当前点击图片的真实大小，并显示弹出层及大图*/
    $("<img/>").attr("src", src).load(function(){
        var windowW = $(window).width();//获取当前窗口宽度
        var windowH = $(window).height();//获取当前窗口高度
        var realWidth = this.width;//获取图片真实宽度
        var realHeight = this.height;//获取图片真实高度
        var imgWidth, imgHeight;
        var scale = 0.8;//缩放尺寸，当图片真实宽度和高度大于窗口宽度和高度时进行缩放

        if(realHeight>windowH*scale) {//判断图片高度
            imgHeight = windowH*scale;//如大于窗口高度，图片高度进行缩放
            imgWidth = imgHeight/realHeight*realWidth;//等比例缩放宽度
            if(imgWidth>windowW*scale) {//如宽度仍大于窗口宽度
                imgWidth = windowW*scale;//再对宽度进行缩放
            }
        } else if(realWidth>windowW*scale) {//如图片高度合适，判断图片宽度
            imgWidth = windowW*scale;//如大于窗口宽度，图片宽度进行缩放
            imgHeight = imgWidth/realWidth*realHeight;//等比例缩放高度
        } else {//如果图片真实高度和宽度都符合要求，高宽不变
            imgWidth = realWidth;
            imgHeight = realHeight;
        }
        $(bigimg).css("width",imgWidth);//以最终的宽度对图片缩放

        var w = (windowW-imgWidth)/2;//计算图片与窗口左边距
        var h = (windowH-imgHeight)/2;//计算图片与窗口上边距
        $(innerdiv).css({"top":h, "left":w});//设置#innerdiv的top和left属性
        $(outerdiv).fadeIn("fast");//淡入显示#outerdiv及.pimg
    });

    $(outerdiv).click(function(){//再次点击淡出消失弹出层
        $(this).fadeOut("fast");
    });
}
