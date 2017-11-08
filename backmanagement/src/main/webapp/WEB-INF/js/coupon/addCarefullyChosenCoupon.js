/**
 * 监听模态框打开事件
 */
$('#choose_cpn_window').on('show.bs.modal', function (event) {
    var button = $(event.relatedTarget); // 触发modal的Button
    var $cpnDataTable = $('#cpn_data_table');
    $cpnDataTable.bootstrapTable('destroy');
    var columns = [{
        label: 'state',
        checkbox: true

    }, {
        title: "优惠券id",
        field: "idStr",
        sortable: true,
        align: "center",
        valign: "middle"
    }, {
        title: "优惠券名称",
        field: "couponName",
        sortable: true,
        align: "center",
        valign: "middle"
    }, {
        title: "优惠金额",
        field: "amount",
        sortable: true,
        formatter: couponAmountFormatter,
        align: "center",
        valign: "middle"
    }, {
        title: "订单满额限制",
        field: "orderAmountUseLimits",
        sortable: true,
        align: "center",
        formatter: couponAmountFormatter,
        valign: "middle"
    }, {
        title: "优惠券总数",
        field: "totalQuantity",
        sortable: true,
        align: "center",
        valign: "middle"
    }, {
        title: "已领数量",
        field: "receivedQuantity",
        sortable: true,
        align: "center",
        valign: "middle"
    }, {
        title: "优惠券领取开始时间",
        field: "receiveStartDate",
        sortable: true,
        align: "center",
        valign: "middle",
        formatter: dateFormatter
    }, {
        title: "优惠券领取结束时间",
        field: "receiveEndDate",
        sortable: true,
        align: "center",
        valign: "middle",
        formatter: dateFormatter
    }, {
        title: "是否启用",
        formatter: boolFormatter,
        field: "enable",
        sortable: true,
        align: "center",
        valign: "middle"
    }];
    buildCouponTable('cpn_data_table', '/bbc/coupon/getCoupons.do', columns, true);

});


/**
 * 创建表格
 */
function buildCouponTable(eleName, url, columns, pagination) {
    $('#' + eleName).bootstrapTable({
        method: "post",
        toolbar: "#toolbar",
        striped: true,
        uniqueId: 'id',//唯一的id，用于直接在bootstrap table中删除一行数据
        cache: false,
        pagination: pagination,
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
        columns: columns,
        locale: "zh-CN",
        detailView: false,
        onCheck: checkRow,
        onUncheck: unCheckRow,
        onCheckAll: checkAll,
        onUncheckAll: unCheckAll

    });
}

/**
 * 格式化操作列
 */
function optFormatter(value, row, index) {
    return '<button type="button" class="btn btn-primary" onclick="delCoupon(\'' + row.id + '\');">删除</button>';
}

/**
 * 是否启用格式化
 * @param value
 * @param row
 * @param index
 * @returns {string}
 */
function boolFormatter(value, row, index) {
    return value ? "是" : "否";
}

/**
 * 构建查询参数
 * @param params
 * @returns {{page: *, size: *, searchKey: (*|jQuery), searchValue: (*|jQuery)}}
 */
function queryParams(params) {
    var page = params.pageNumber;
    var size = params.pageSize;
    var searchValue = $('#search_value').val().trim();
    if (searchValue) {
        page = 1;
    }
    return {
        size: size,
        page: page,
        searchKey: 'couponName',
        searchValue: searchValue,
        receiveMode: 'AUTONOMY_RECEIVE',
        filterDisabled: true,
        filterExpired: true,
        canReceive: true,
        keyword: searchValue
    }
}


/**
 * 金额格式化
 * @param value
 * @param row
 * @param index
 * @returns {number}
 */
function couponAmountFormatter(value, row, index) {
    return value / 100.00;
}

/**
 * 自定义日期属性
 * @param format
 * @returns {*}
 */
Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1, //month
        "d+": this.getDate(), //day
        "h+": this.getHours(), //hour
        "m+": this.getMinutes(), //minute
        "s+": this.getSeconds(), //second
        "q+": Math.floor((this.getMonth() + 3) / 3), //quarter
        "S": this.getMilliseconds()
        //millisecond
    };
    if (/(y+)/.test(format))
        format = format.replace(RegExp.$1, (this.getFullYear() + "")
            .substr(4 - RegExp.$1.length));
    for (var k in o)
        if (new RegExp("(" + k + ")").test(format))
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k]
                : ("00" + o[k]).substr(("" + o[k]).length));
    return format;
};

/**
 * 数组拓展工具
 * @param from
 * @param to
 * @returns {*}
 */
Array.prototype.remove = function (from, to) {
    var rest = this.slice((to || from) + 1 || this.length);
    this.length = from < 0 ? this.length + from : from;
    return this.push.apply(this, rest);
};

/**
 * 日期格式化
 * @param value
 * @param row
 * @param index
 * @returns {*}
 */
function dateFormatter(value, row, index) {
    if (value) {
        return new Date(value).format("yyyy-MM-dd hh:mm:ss");
    } else {
        return "按照领取时间结算";
    }
}

/**
 * 显示行号
 * @param value
 * @param row
 * @param index
 * @returns {*}
 */
function showIndexNum(value, row, index) {
    return index + 1;
}

/**
 * 删除一行优惠券数据
 * @param id
 */
function delCoupon(id) {
    if (confirm('确认删除优惠券？')) {
        // $('#choose_cpn_table').bootstrapTable('removeByUniqueId', id);
        var ids = [];
        ids.push(id);
        doDel(ids);
    }
}

function batchDelCoupons() {
    var coupons = $('#choose_cpn_table').bootstrapTable('getSelections');
    if (!coupons || coupons.length === 0) {
        layer.msg('请选择优惠券');
    } else {
        if (confirm('确认删除优惠券？')) {
            var ids = [];
            for (var i = 0; i < coupons.length; i++) {
                ids.push(coupons[i].id);
            }
            doDel(ids);
        }
    }
}

function doDel(ids) {
    $.ajax({
        type: "POST",
        url: "/bbc/coupon/delCarefullyChosenCoupons.do",
        data: {
            'ids': JSON.stringify(ids)
        },
        dataType: "json",
        error: function (data) {
            layer.msg('删除失败，请稍后再试');
            return false;
        },
        success: function (data) {
            if (data.code !== 0) {
                layer.msg(data.msg);
            } else {
                layer.msg('删除成功');
                for (var i = 0; i < ids.length; i++) {
                    console.log(ids[i]);
                    $('#choose_cpn_table').bootstrapTable('removeByUniqueId', ids[i]);
                }
                //$('#choose_cpn_table').bootstrapTable('refresh');
            }
        }
    });

}

/**
 * 保存添加的精选优惠券
 */
function saveCoupons() {
    var coupons = $('#choose_cpn_table').bootstrapTable('getData');
    if (!coupons || coupons.length === 0) {
        layer.msg('请添加优惠券');
    } else {
        $.ajax({
            type: "POST",
            url: "/bbc/coupon/addCarefullyChosenCoupon.do",
            data: {
                'data': JSON.stringify(coupons)
            },
            dataType: "json",
            error: function (data) {
                layer.msg('保存失败，请稍后再试');
                return false;
            },
            success: function (data) {
                if (data.code !== 0) {
                    layer.msg(data.msg);
                } else {
                    layer.msg('保存成功');
                    $('#choose_cpn_table').bootstrapTable('refresh');
                }
            }
        });
    }
}

/**
 * 绑定搜索按键
 */
$('#search_btn').on('click', function () {
    $('#cpn_data_table').bootstrapTable('refresh');
});

//优惠券弹窗中选中的优惠券集合
var selectedCoupons = [];

/**
 * 添加优惠券
 */
function addCoupon() {
    var $cpnTab = $('#cpn_data_table');
    var $chooseCpnTable = $('#choose_cpn_table');
    //var selectedCoupons = $cpnTab.bootstrapTable('getSelections');
    if (selectedCoupons.length === 0) {
        layer.msg("请选择优惠券");
    } else {
        console.log(selectedCoupons);
        for (var i = 0; i < selectedCoupons.length; i++) {
            if (checkCouponIsNotExist(selectedCoupons[i].id)) {
                $chooseCpnTable.bootstrapTable('prepend', selectedCoupons[i]);
            } else {
                console.log("优惠券已经存在，不添加");
            }
        }
        $('.close-choose-win').click();
        $cpnTab.bootstrapTable('destroy');
    }
    selectedCoupons = [];
}

/**
 * 检查要添加的优惠券是否已经存在
 * @param id
 */
function checkCouponIsNotExist(id) {
    if(!id){
        return false;
    }
    var chooseCoupon = $('#choose_cpn_table').bootstrapTable('getRowByUniqueId', id);
    return !chooseCoupon;
}

/**
 * 添加选中的优惠券到集合
 * @param row
 */
function addCoupon2List(row) {
    var now = new Date();
    var appendRow = {
        idx: 0,
        name: row.couponName,
        id: row.idStr,
        couponId: row.idStr,
        canReceive: row.receiveStartDate <= now.getTime() && row.receiveEndDate >= now.getTime()
    };
    if (selectedCoupons) {
        for (var i = 0; i < selectedCoupons.length; i++) {
            if (selectedCoupons[i].id === appendRow.id) {
                return false;
            }
        }
        selectedCoupons.push(appendRow);
    } else {
        selectedCoupons.push(appendRow);
    }
}

/**
 * 从list中删除元素
 * @param row
 */
function delCoupon4List(row) {
    if (selectedCoupons) {
        var isExistIndex = null;
        for (var i = 0; i < selectedCoupons.length; i++) {
            if (selectedCoupons[i].id === row.idStr) {
                isExistIndex = i;
            }
        }
        if (isExistIndex !== null) {
            selectedCoupons.remove(isExistIndex);
        }
    }

}

/**
 * 当用户选择一行的时候触发
 * @param row 当前选中的行的数据
 */
function checkRow(row) {
    addCoupon2List(row);
}

/**
 * 当用户取消选择一行的时候触发
 * @param row 当前取消选择的行
 */
function unCheckRow(row) {
    delCoupon4List(row);
}


/**
 * 当选择全部表格的时候触发
 * @param rows 选择的列表行集合
 */
function checkAll(rows) {
    for (var i = 0; i < rows.length; i++) {
        addCoupon2List(rows[i]);
    }

}

/**
 * 当取消选择全部的时候触发
 * @param rows 取消选择的列表行集合
 */
function unCheckAll(rows) {
    for (var i = 0; i < rows.length; i++) {
        delCoupon4List(rows[i]);
    }
}

$(document).ready(function () {
    //构建已添加的精选优惠券列表
    var columns = [
        {
            checkbox: true

        },
        {
            field: 'couponId',
            visible: false

        },
        {
            title: '序号',
            field: "index",
            align: "center",
            valign: "middle",
            formatter: showIndexNum
        },
        {
            title: '优惠券ID',
            field: "id",
            align: "center",
            valign: "middle"

        },
        {
            title: "优惠券名称",
            field: "name",
            align: "center",
            valign: "middle"
        },
        {
            title: "优惠券领取开始时间",
            field: "receiveStartDate",
            sortable: true,
            align: "center",
            valign: "middle",
            formatter: dateFormatter
        }, {
            title: "优惠券领取结束时间",
            field: "receiveEndDate",
            sortable: true,
            align: "center",
            valign: "middle",
            formatter: dateFormatter
        },
        {
            title: "可领取",
            formatter: boolFormatter,
            field: "canReceive",
            sortable: true,
            align: "center",
            valign: "middle"
        },
        {
            title: "排序",
            field: "idx",
            align: "center",
            valign: "middle",
            //启用行内编辑
            editable: {
                type: 'text',
                title: '排序',
                validate: function (v) {
                    if (v === '') {
                        return '排序字段不能为空！';
                    }
                    if (isNaN(v) || parseInt(v) < 0 || parseFloat(v) % 1 !== 0) {
                        return '请输入一个正整数！';
                    }
                }
            }
        },
        {
            title: "操作",
            formatter: optFormatter,
            align: "center",
            valign: "middle"
        }
    ];
    buildCouponTable('choose_cpn_table', '/bbc/coupon/findCarefullyChosenCoupons.do', columns, false);
});