/**
 * Created by szmg on 17/9/21.
 */
myAjax ={
    post: function () {
        var list = resolveAjax(arguments);
        var settings = {
            url:  list[0],
            dataType: 'json',
            type: 'POST',
            data: list[1],
            cache: false
        };
        $.ajax(settings).done(list[2]).fail(function (XMLHttpRequest, textStatus, errorThrown) {
            if (XMLHttpRequest.status == 200 && XMLHttpRequest.responseText.indexOf('<title>CAS – Central Authentication Service</title>') > 0) {
                utils.modal.alert('登录超时', function () {
                    location.reload();
                });
            } else {
                list[3](XMLHttpRequest, textStatus, errorThrown)
            }
        });
    },
    get: function () {
        var list = resolveAjax(arguments);
        var settings = {
            url: list[0],
            dataType: 'json',
            type: 'GET',
            data: list[1],
            cache: false
        };
        $.ajax(settings).done(list[2]).fail(function (XMLHttpRequest, textStatus, errorThrown) {
            if (XMLHttpRequest.status == 401) {
                location.reload();
            }
            else {
                list[3](XMLHttpRequest, textStatus, errorThrown)
            }
        });
    }
};
var resolveAjax = function (arg) {
    if (!arg.length) {
        throw 'URL不能为空'
    }
    var result = [];
    for (var i = 0; i < arg.length; i++) {
        result.push(arg[i]);
    }
    if ($.type(result[1]) == 'function') {
        result.splice(1, 0, '');
    }
    if (!result[3]) {
        result.push($.noop);
    }
    return result;
};

/*

 utils.myAjax.post("../test/data",{},function(){
 alert("11");
 });

*/
