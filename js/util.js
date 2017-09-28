//接口地址
var GET_ADMIN_PRODUCT_LIST = "/shop/getProductList";
var DO_DELETE_PRODUCT_BY_IDS = "/shop/doDeleteProductByIds";
var ADD_PRODUCT = "/shop/addProduct";
var DO_UPDATE_PRODUCT = "/shop/doUpdateProduct";
var DO_DELETE_PRODUCT_BY_ID = "/shop/doDeleteProductById";
var GET_PRODUCT_DETAIL = "/getProductDetail";
var GET_ALL_PRODUCT_CATEGORY_LIST = "/getAllProductCategoryList";
var GET_ALL_PRODUCT_TAG_LIST = "/getAllProductTagList";
var GET_ORDER_LIST = "/shop/getOrderList";
var DO_SHOP_LOGIN = "/shopLogin";
var DO_USER_REGIST = "/userRegist";
var DO_USER_LOGIN = "/userLogin";
var GET_ORDER_STATUS_COUNT = "/shop/findOrderStatusCount";





/*
* 日期时间工具类 start
* */
//扩展Date的format方法
Date.prototype.format = function (format) {
    var o = {
        "M+": this.getMonth() + 1,
        "d+": this.getDate(),
        "h+": this.getHours(),
        "m+": this.getMinutes(),
        "s+": this.getSeconds(),
        "q+": Math.floor((this.getMonth() + 3) / 3),
        "S": this.getMilliseconds()
    }
    if (/(y+)/.test(format)) {
        format = format.replace(RegExp.$1, (this.getFullYear() + "").substr(4 - RegExp.$1.length));
    }
    for (var k in o) {
        if (new RegExp("(" + k + ")").test(format)) {
            format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));
        }
    }
    return format;
}
/**
 *转换日期对象为日期字符串
 * @param date 日期对象
 * @param isFull 是否为完整的日期数据,
 * 为true时, 格式如"2013-12-06 01:05:04"
 * 为false时, 格式如 "2013-12-06"
 * @return 符合要求的日期字符串
 */
function getSmpFormatDate(date, isFull) {
    var pattern = "";
    if (isFull == true || isFull == undefined) {
        pattern = "yyyy-MM-dd hh:mm:ss";
    } else {
        pattern = "yyyy-MM-dd";
    }
    return getFormatDate(date, pattern);
}
/**
 *转换当前日期对象为日期字符串
 * @param date 日期对象
 * @param isFull 是否为完整的日期数据,
 * 为true时, 格式如"2013-12-06 01:05:04"
 * 为false时, 格式如 "2013-12-06"
 * @return 符合要求的日期字符串
 */
function getSmpFormatNowDate(isFull) {
    return getSmpFormatDate(new Date(), isFull);
}
/**
 *转换long值为日期字符串
 * @param l long值
 * @param isFull 是否为完整的日期数据,
 * 为true时, 格式如"2013-12-06 01:05:04"
 * 为false时, 格式如 "2013-12-06"
 * @return 符合要求的日期字符串
 */
function getSmpFormatDateByLong(l, isFull) {
    return getSmpFormatDate(new Date(l), isFull);
}
/**
 *转换long值为日期字符串
 * @param l long值
 * @param pattern 格式字符串,例如：yyyy-MM-dd hh:mm:ss
 * @return 符合要求的日期字符串
 */
function getFormatDateByLong(l, pattern) {
    return getFormatDate(new Date(l), pattern);
}
/**
 *转换日期对象为日期字符串
 * @param l long值
 * @param pattern 格式字符串,例如：yyyy-MM-dd hh:mm:ss
 * @return 符合要求的日期字符串
 */
function getFormatDate(date, pattern) {
    if (date == undefined) {
        date = new Date();
    }
    if (pattern == undefined) {
        pattern = "yyyy-MM-dd hh:mm:ss";
    }
    return date.format(pattern);
}
//alert(getSmpFormatDate(new Date(1279849429000), true));
//alert(getSmpFormatDate(new Date(1279849429000),false));
//alert(getSmpFormatDateByLong(1279829423000, true));
//alert(getSmpFormatDateByLong(1279829423000,false));
//alert(getFormatDateByLong(1279829423000, "yyyy-MM"));
//alert(getFormatDate(new Date(1279829423000), "yy-MM"));
//alert(getFormatDateByLong(1279849429000, "yyyy-MM hh:mm"));

/*
* 日期时间工具类 end
* */


/*
    2017/02/20
    cookie操作
 */
function setCookie(key, value, iDay) {
    if(iDay==undefined){
        iDay=7;
    }
    var oDate = new Date();
    oDate.setDate(oDate.getDate() + iDay);
    document.cookie = key + '=' + value + ';expires=' + oDate;
}
function removeCookie(key) {
    setCookie(key, '', -1);//这里只需要把Cookie保质期退回一天便可以删除
}
function getCookie(key) {
    var cookieArr = document.cookie.split('; ');
    for(var i = 0; i < cookieArr.length; i++) {
        var arr = cookieArr[i].split('=');
        if(arr[0] === key) {
            return arr[1];
        }
    }
    return false;
}