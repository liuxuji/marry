/**
 * 退单管理JS
 *
 * Created by Evan on 2017/7/13.
 */

/**
 * 格式化金额
 */
function amountFormat(val) {
    if (val) {
        var value = val / 100;
        var xsd = value.toString().split(".");
        if (xsd.length == 1) {
            value = value.toString() + ".00";
            return '&yen;&nbsp;' + value;
        }
        if (xsd.length > 1) {
            if (xsd[1].length < 2) {
                value = value.toString() + "0";
            }
            return '&yen;&nbsp;' + value;
        }
    } else {
        return '&yen;&nbsp;' + '0.00';
    }
}

/**
 * 是否秒杀
 */
function secKillFormatter(value, row, index) {
    var result = row.orderCode;
    if (value) {
        result = '<span style="color: red" title="秒杀退单">秒&nbsp;</span>'+result;
    }else {
        result = '<span>&nbsp;&nbsp;</span>'+result;
    }
    return result;
}


