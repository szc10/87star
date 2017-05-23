function xhrSend(url, data, sucFn, delFn, errFn) {
    if (arguments[0] instanceof Object && arguments.length == 1) {
        var _url = arguments[0].url;
        var _data = arguments[0].data;
        var _sucFn = arguments[0].sucFn;
        var _delFn = arguments[0].delFn;
        var _errFn = arguments[0].errFn;
    } else {
        var _url = url;
        var _data = data;
        var _sucFn = sucFn;
        var _delFn = delFn;
        var _errFn = errFn;
    }
    if (jsBox.isFunction(_delFn)) {
        _delFn.call();
    }
    Jajax({
        url: postUrl + _url,
        data: _data,
        json_back: true,
        complete: function(json) {
            if (json.errcode == 10000) {
                _sucFn(json.data,json);
            } else {
                console.log(json.msg);
                errorDel(json);
            }
        },
        error: errorDel
    });

    /**
     * [请求失败以后的处理过程]
     * @return {[type]} [description]
     */
    function errorDel(json) {
        if (jsBox.isFunction(_errFn)) {
            _errFn(json);
        } else {
            return;
        }

    }
}

var Time = {
    /**
     * [时间戳转时间]
     * @param  {[type]} time [description]
     * @return {[type]}      [description]
     */
    timeTodate: function(time) {
        var date = new Date(time * 1000);
        return date.getFullYear() + "/" + parseInt(date.getMonth() + 1) + "/" + date.getDate();
    },
    /**
     * [时间转时间戳]
     * @param  {[type]} datestr [description]
     * @return {[type]}         [description]
     */
    dateTotime: function(datestr) {
        var date = new Date();
        var datestr = datestr.split("-");
        date.setFullYear(datestr[0], datestr[1] - 1, datestr[2]);
        return parseInt(date.getTime() / 1000) - date.getHours() * 3600 - date.getMinutes() * 60 - date.getSeconds();
    },
    getNowTime: function() {
        return parseInt(new Date().getTime() / 1000);
    },
    getNowDate: function() {
        var date = new Date();
        return date.getFullYear() + "-" + parseInt(date.getMonth() + 1) + "-" + date.getDate();
    },
    getLocalTime: function(nS) {
        if (nS) {
            return (new Date(parseInt(nS) * 1000).toLocaleString("en-GB").replace(/:\d{1,2}$/, ' ')).split(' ')[1];
        } else {
            return "";
        }
    },
    getDaysInOneMonth:function(year, month) {
        month = parseInt(month, 10);
        var d = new Date(year, month, 0);
        return d.getDate();
    }
}