    var level1=[
    { "name":'山善（上海）贸易公司', "value":'1' },
    { "name":'上海', "value":'2' },
    { "name":'石家庄', "value":'3' },
    { "name":'大连', "value":'4' },
    { "name":'天津', "value":'5' },
    { "name":'秦皇岛', "value":'6' },
    { "name":'杭州', "value":'1' },
    ];
    var level2=[
    { "name":'山善（广州）贸易公司', "value":'1' },
    { "name":'秦皇岛', "value":'2' },
    { "name":'保定', "value":'3' },
    { "name":'杭州', "value":'4' },
    { "name":'张家口', "value":'5' },
    { "name":'天津', "value":'6' }
    ];
    var level3=[
    { "name":'山善（广州）贸易公司', "value":'1', "child":[{ "name":'广东', "value":'3', "child":[{ "name":'山善（上海）贸易公司', "value":'3' },
    { "name":'保定', "value":'4' },
    { "name":'天津', "value":'5' },
    { "name":'秦皇岛', "value":'6' }] },
    { "name":'上海', "value":'4', "child":[{ "name":'222', "value":'3' },
    { "name":'333', "value":'4' },
    { "name":'4444', "value":'5' },
    { "name":'555', "value":'6' }] },
    { "name":'深圳', "value":'5', "child":[{ "name":'222', "value":'3' },
    { "name":'333', "value":'4' },
    { "name":'4444', "value":'5' },
    { "name":'555', "value":'6' }] },
    { "name":'珠海', "value":'6', "child":[{ "name":'fff', "value":'3' },
    { "name":'ggg', "value":'4' },
    { "name":'hhh', "value":'5' },
    { "name":'yyy', "value":'6' }] },
    { "name":'安徽', "value":'5', "child":[{ "name":'fff', "value":'3' },
    { "name":'ggg', "value":'4' },
    { "name":'hhh', "value":'5' },
    { "name":'yyy', "value":'6' }] },
    { "name":'天津', "value":'6', "child":[{ "name":'fff', "value":'3' },
    { "name":'ggg', "value":'4' },
    { "name":'hhh', "value":'5' },
    { "name":'yyy', "value":'6' }] }] },
    { "name":'山善（上海）贸易公司', "value":'2', "child":[{ "name":'北京', "value":'3' },
    { "name":'沈阳', "value":'4' },
    { "name":'长春', "value":'5' },
    { "name":'吉林', "value":'6' }] }];
//  { "name":'www', "value":'3', "child":[{ "name":'北京', "value":'3' },
//  { "name":'啦啦啦', "value":'4' },
//  { "name":'饿的方式度过', "value":'5' },
//  { "name":'收到额外人', "value":'6' }] },
//  { "name":'rrr', "value":'4', "child":[{ "name":'沈阳', "value":'3' },
//  { "name":'啦啦啦', "value":'4' },
//  { "name":'饿的方式度过', "value":'5' },
//  { "name":'收到额外人', "value":'6' }] },
//  { "name":'yyy', "value":'5', "child":[{ "name":'长春', "value":'3' },
//  { "name":'啦啦啦', "value":'4' },{ "name":'饿的方式度过', "value":'5' },
//  { "name":'收到额外人', "value":'6' }] },{ "name":'uuu', "value":'6', "child":[{ "name":'收到额外人', "value":'3' },
//  { "name":'啦啦啦', "value":'4' },{ "name":'饿的方式度过', "value":'5' },
//  { "name":'收到额外人', "value":'6' }] }];
var cityData=[
{"id":"130000","name":"山善（上海）贸易公司","shortName":"上海","parentId":"100000","level":"1"},
{"id":"130100","name":"大连","shortName":"石家庄","parentId":"130000","level":"2"},
{"id":"130200","name":"天津","shortName":"唐山","parentId":"130000","level":"2"},
{"id":"130300","name":"秦皇岛","shortName":"秦皇岛","parentId":"130000","level":"2"},
{"id":"130400","name":"杭州","shortName":"邯郸","parentId":"130000","level":"2"},
{"id":"130500","name":"宁波","shortName":"邢台","parentId":"130000","level":"2"},
{"id":"130600","name":"保定","shortName":"保定","parentId":"130000","level":"2"},
{"id":"130700","name":"张家口","shortName":"张家口","parentId":"130000","level":"2"},
{"id":"130800","name":"承德","shortName":"承德","parentId":"130000","level":"2"},
{"id":"130900","name":"沧州","shortName":"沧州","parentId":"130000","level":"2"},
{"id":"131000","name":"廊坊市","shortName":"廊坊","parentId":"130000","level":"2"},
{"id":"131100","name":"衡水市","shortName":"衡水","parentId":"130000","level":"2"},
{"id":"140000","name":"山善（深圳）贸易公司","shortName":"山西","parentId":"100000","level":"1"},
{"id":"140100","name":"广东","shortName":"太原","parentId":"140000","level":"2"},
{"id":"140200","name":"珠海","shortName":"大同","parentId":"140000","level":"2"},
{"id":"140300","name":"上海","shortName":"阳泉","parentId":"140000","level":"2"},
{"id":"140400","name":"天津","shortName":"长治","parentId":"140000","level":"2"},
{"id":"140500","name":"宁波","shortName":"晋城","parentId":"140000","level":"2"},
{"id":"140600","name":"沈阳","shortName":"朔州","parentId":"140000","level":"2"},
]
//借用上展的json转换器
;(function(){
    var data = [],data2 = [];
    cityData = JSON.stringify(cityData).replace(/\"id\":/g, "\"value\":");
	cityData=JSON.parse(cityData);
    for (var i = 0,length = cityData.length; i < length; i++) {
        if (cityData[i].parentId !== '100000') {
            data2.push(cityData[i]);
        }else{
            data.push(cityData[i]);
        }
    };
    $.each(data, function(index, val) {
        var parentId = val.value;
        var _val = val;
        _val.child = [];
        $.each(data2, function(index, val) {
            if (val.parentId === parentId) {
                _val.child.push(val);
            };
        });
    });
    window.dataJson = data;
})();

/**
 * mPicker 组件
 *
 * *** options ***
 *
 * @param {Str}                                 display    显示的方式，默认是显示在底部    'bottom'/'modal'
 * @param {Boolean}                             shadow     点击遮罩隐藏组件 - 默认为false;若为false，则禁止点击遮罩隐藏组件
 * @param {Number}                              level      显示的层级，默认：1
 * @param {Number}                              rows       picker显示的行数，默认：4
 * @param {Boolean}                             Linkage    选择联动 - 若为false，则不联动
 * @param {Array}                               dataJson   渲染picker的json - 有规定的格式，可查看json文件。不联动默认遍历获取第一个json
 * @param {Number}                              height     每一行的高度
 * @param {Boolean}                             idDefault  匹配默认值 - 若为false，则不匹配
 * @param {Str}                                 splitStr   设置分割value的符号，与默认值和显示在input里的值有关
 * @param {Boolean}                             isshort    是否开启简写，默认是关闭的
 * @param {Element selector}                    header     picker头部html
 *@param {function}                             confirm: function() {}
 *@param {function}                             cancel: function() {}
 *
 * *** 关于json格式 ***
 *jsonChange.js是针对campaign里的json做的格式转换
 *
 * *** 关于value值 ***
 *
 *$('.select-value').data('value1')：第一级的value值
 *$('.select-value').data('value2')：第二级的value值
 *
 *
 * *** methods ***
 *
 *  show                详情请查阅源码部分
 *  hide                详情请查阅源码部分
 *  updateData          详情请查阅源码部分
 *
 */
function __dealCssEvent(eventNameArr, callback) {
    var events = eventNameArr,
        i, dom = this; // jshint ignore:line

    function fireCallBack(e) {
        /*jshint validthis:true */
        if (e.target !== this) return;
        callback.call(this, e);
        for (i = 0; i < events.length; i++) {
            dom.off(events[i], fireCallBack);
        }
    }
    if (callback) {
        for (i = 0; i < events.length; i++) {
            dom.on(events[i], fireCallBack);
        }
    }
}

//动画结束事件兼容
$.fn.animationEnd = function(callback) {
    __dealCssEvent.call(this, ['webkitAnimationEnd', 'animationend'], callback);
    return this;
};
$.fn.transitionEnd = function(callback) {
    __dealCssEvent.call(this, ['webkitTransitionEnd', 'transitionend'], callback);
    return this;
};
$(function(){
    var mPickerDefaults = {
        display: 'bottom',
        shadow: false,
        level: 1,
        rows: 4,
        Linkage: false,
        dataJson: '',
        height: 36,
        idDefault: false,
        splitStr: ' ',
        isshort : false,
        header: '<div class="mPicker-header"></div>',
        footer: '<div class="mPicker-footer"><a href="javascript:;" class="mPicker-confirm">确定</a><a href="javascript:;" class="mPicker-cancel">取消</a></div>',
        confirm: function() {},
        cancel: function() {}
    };

    var moveStartLock;

    var ulWidth = ['100%', '50%'];

    var $body = $('body');

    var $mask=$('<div class="mPicker-mask hide"></div>');

    var $mPicker=$('<div class="mPicker hide"></div>');

    var lock,timeTouchend;
    /**
     * 添加mPicker容器
     */
    if (!$('.mPicker').length) {
        $body.append($mPicker);
        $mPicker.append($mask);
    }
    /**
     * 阻止默认滚动
     */
    $body.on('touchmove', function(event) {
        if (lock) {
            event.preventDefault();
            event.stopPropagation();
        }
    });
    /**
     * 禁止滚动－－防止滚动选择时页面滚动
     */
    $body.on({
        touchstart: function(event) {
            event.preventDefault();
            lock = 1;
        },
        touchmove: function(event) {
            event.preventDefault();
            //兼容部分手机有时候没有触发touchend
            clearTimeout(timeTouchend);
            timeTouchend = setTimeout(function() {
                lock = 0;
            }, 100);
        },
        touchend: function(event) {
            event.preventDefault();
            lock = 0;
        }
    }, '.mPicker-main');

    function MPicker(ele,options){
        if (!ele.length) {
            return false;
        }
        this.container=ele;
        this.mpicker=$('.mPicker');
        this.mask=this.mpicker.find('.mPicker-mask');
        this.options = $.extend({}, mPickerDefaults, options);
        this.init();
        this.event();
        this.container.data('mPicker', this);

    }


    MPicker.prototype={
        //初始化MPicker
        init:function(ele,options){

            /**
             * 根据行数计算居中的位置
             */
            this.middleRowIndex=parseInt(this.options.rows / 2.5);
            //展示方式
            this.disy = this.options.display === 'bottom' ? 'mPicker-bottom down' : 'mPicker-modal';

            this.container.attr('readonly',true);
        },
        //初始化mpicker,根据json渲染html结构,添加遮罩，边框等
        render:function(){
            /**
             *  初始化mpicker,根据json渲染html结构
             *  添加遮罩，边框等
             */
            var listStr;
            var jsonData = [];
            var mainStr;
            var self=this;
            /**
             * 添加 mPicker-main元素
             */
            jsonData.push(self.options.dataJson);
            if (self.options.level === 2) {
                var childStr = getChildJson(self.options.dataJson[0]);
                jsonData.push(childStr);
            }
            listStr = concatHtmlList.call(self,jsonData);
            mainStr = '<div class="mPicker-main '+ self.disy +'" data-pickerId="' + self.pickerId + '">' + self.options.header + '<div class="mPicker-content">' + listStr + '</div><div class="mPicker-shadow"></div>' + self.options.footer + '</div>';
            self.mpicker.append(mainStr);
            /**
             * 设置变量
             */
            self.mpickerMain = self.mpicker.find('.mPicker-main');
            //元素集合
            var $content=self.mpickerMain.find('.mPicker-content');
            var $list=self.mpickerMain.find('.mPicker-list');
            var $listUl=$list.find('ul');
            //var $itemOne=$listUl.eq(0);
            //var $itemTwo=self.options.level === 2?$listUl.eq(1):false;
            //设置多列宽度
            self.options.level > 1 ?$list.width(ulWidth[self.options.level - 1]):false;

            //添加选中的边框
            $list.append('<div class="mPicker-active-box"></div>');
            $list.find('.mPicker-active-box').height(self.options.height);
            /**
             * 设置选中的边框位置
             */
            var activeBoxMarginTop = self.options.rows % 2 === 0 ? -self.options.height - 2 + 'px' : -self.options.height * 0.5 - 2 + 'px';

            $content.find('.mPicker-active-box').css({
                'margin-top': activeBoxMarginTop
            });
            /**
             * 设置内容高度
             */
            $content.height(self.options.height * self.options.rows);
            $list.height(self.options.height * self.options.rows);

        },
        showPicker:function(){
            var self=this;
            self.mpicker.data('object',self);
            //元素集合
            //var $content=this.mpickerMain.find('.mPicker-content');

            //var $listUl=$list.find('ul');
            // var $itemOne=$listUl.eq(0);
            // var $itemTwo=this.options.level === 2?$listUl.eq(1):false;
            self.render();
            var $list=self.mpicker.find('.mPicker-list');
            self.container.focus();
            self.container.blur();
            self.mpicker.removeClass('hide');
            self.mask.removeClass('hide');

            clearTimeout(self.timer);
            self.timer=setTimeout(function() {
                self.mpickerMain.removeClass('down');
            }, 10);
            /**
             * 显示默认值(判断点击确定选择后不再获取默认值)
             */
            if (!self.noFirst && self.options.idDefault) {
                matchDefaultData.call(self);
            }
            /**
             * 获取input的data-id显示选中的元素
             */
            var id = [];
            setTransitionY(self.container, 0);
            $list.each(function(index, ele) {
                var dataVal = self.container.data('id' + (index + 1)) ? self.container.data('id' + (index + 1)) : 0;
                id.push(dataVal);
            });
            //获得选中的元素
            setItemMultiple.call(self,id);
        },
        hidePicker:function(callback){
            var self=this;
            self.mask.addClass('hide');

            if(self.options.display === 'bottom'){
                self.mpicker.find('.mPicker-main').addClass('down').transitionEnd(function() {
                    self.mpicker.addClass('hide');
                    self.mpicker.find('.mPicker-main').remove();
                    if (typeof(callback) === 'function') {
                        callback.call(self);
                    }
                });
                return false;
            }

            self.mpicker.addClass('hide');
            callback.call(self);
            self.mpicker.find('.mPicker-main').remove();
        },
        updateData:function(data){
            var self=this;
            if (!data.length) {
                return;
            }
            self.noFirst = false;
            for (var i = 0; i < self.options.level; i++) {
                self.container.data('id' + (i + 1), 0);
                self.container.data('value' + (i + 1), '');
            }
            self.options.dataJson = data;
            self.mpicker.find('.mPicker-main').remove();
        },
        confirm:function(){
            var self=this;
            var str = '';
            var $list=self.mpicker.find('.mPicker-main').find('.mPicker-list');
            var $listUl=$list.find('ul');
            self.noFirst = true;
            $.each($listUl, function(index, ele) {
                var $active = $(ele).find('.active');
                var splitStr = index === 0 ? '' : self.options.splitStr;
                if ($active.length > 0) {
                    index = index + 1;
                    self.container.data('value' + index, $active.data('value'));
                    self.container.data('id' + index, $active.data('id'));
                    str += splitStr + $active.text();
                }
            });
            self.container.val(str);
            self.hidePicker(self.options.confirm);

        },
        cancel:function(){
            var self=this;
            self.hidePicker(self.options.cancel);
        },
         /**
         *  事件
         *  取消，确定，点击遮罩，列表滑动事件
         */
        event : function() {
            /**
             * 点击打开选择
             */
            var self=this;
            this.container.off('touchstart.container click.container').on('touchstart.container click.container', function(e) {
                e.preventDefault();
                e.stopPropagation();
                self.showPicker();
            });
            //点击确定
            this.mpicker.off('touchstart.confirm click.confirm').on('touchstart.confirm click.confirm','.mPicker-confirm', function(e) {
                e.preventDefault();
                var self=$('.mPicker').data('object');
                self.confirm();
            });

            //点击取消
            this.mpicker.off('touchstart.cancel click.cancel').on('touchstart.cancel click.cancel','.mPicker-cancel', function(e) {
                e.preventDefault();
                var self=$('.mPicker').data('object');
                self.cancel();
            });

            //点击遮罩取消
            this.mpicker.off('touchstart.mask click.mask').on('touchstart.mask click.mask','.mPicker-mask', function(e) {
                e.preventDefault();
                var self=$('.mPicker').data('object');
                if(self.options.shadow){
                    self.cancel();
                }
            });

            //遍历下拉列表
            var startY;
            var curY;
            var moveY;


            this.mpicker.off('touchstart.list mousedown.list').on('touchstart.list mousedown.list','.mPicker-list', function(event) {
                fnTouches(event);

                var $this = $(this).find('ul');

                var tranY = getTranslateY($this);

                startY = getTouches(event).y - tranY;

                changeTime(0, $this);

                moveStartLock=true;
            });

            this.mpicker.off('touchmove.list mousemove.list').on('touchmove.list mousemove.list', '.mPicker-list',function(event) {
                event.preventDefault();
                if(!moveStartLock){
                    return false;
                }
                var self=$('.mPicker').data('object');

                fnTouches(event);

                var translate;

                var $this = $(this).find('ul');

                var listHeight = $this.height();

                var itemHeight = self.options.height * self.options.rows;

                var transMaxY = itemHeight - listHeight - parseInt(self.options.rows / 2) * self.options.height;

                var transMinY = self.middleRowIndex * self.options.height;

                curY = getTouches(event).y;

                moveY = curY - startY;

                translate = Math.round(moveY);
                //过了
                translate = translate > transMinY ? transMinY : translate;
                translate = translate < transMaxY ? transMaxY : translate;
                // console.info(self.options.rows)
                setTransitionY($this, translate);
                //兼容部分手机有时候没有触发touchend
                clearTimeout(self.timeTouchend);
                self.timeTouchend = setTimeout(function() {
                    touchEndFn.call(self,$this);
                }, 100);
            });

            this.mpicker.off('touchend.list mouseup.list').on('touchend.list mouseup.list', '.mPicker-list',function(event) {
                event.preventDefault();
                var self=$('.mPicker').data('object');
                var $this = $(this).find('ul');
                touchEndFn.call(self,$this);

            });
        }
    }
    function getTouches(event) {
        if (event.touches !== undefined) {
            return {
                x : event.touches[0].pageX,
                y : event.touches[0].pageY
            };
        }

        if (event.touches === undefined) {
            if (event.pageX !== undefined) {
                return {
                    x : event.pageX,
                    y : event.pageY
                };
            }
            if (event.pageX === undefined) {
                return {
                    x : event.clientX,
                    y : event.clientY
                };
            }
        }
    }


    /**
     *  滑动结束执行函数
     *  ele:对应的list==>ul
     *  如果是联动，则更新相应的list html
     */
    function touchEndFn(ele) {
        clearTimeout(this.timeTouchend);
        var result = setActiveItem.call(this,ele);

        var resultId = result.target.data('id');

        var itemIndex = this.mpicker.find('.mPicker-list ul').index(ele);
        // this.lock=0;
        //点第一个联动
        if (this.options.Linkage && itemIndex === 0) {
            refreshItemTwo.call(this,resultId);
        }
        //回调函数
        // callbackFnName[itemIndex].call(ele, result);

        changeTime(400, ele);

        moveStartLock=false;
    }

    /**
     *  第一次打开匹配默认值
     */
    function matchDefaultData() {
        var self=this;
        var inputVal = this.container.val().split(this.options.splitStr);
        var defaultId = [];
        var defaultValue = [];
        var dataLevel2;
        var hasLevel2;
        //遍历获取id
        var nameEach = function(data, index) {
            $.each(data, function(key, val) {
                if (val.name == inputVal[index]) {
                    defaultId[index] = key;
                    defaultValue[index] = val.value;
                    self.container.data('value' + (index + 1), defaultValue[index]);
                    self.container.data('id' + (index + 1), defaultId[index]);
                    return false;
                }
            });
        };
        if (typeof(inputVal) !== 'object' || !inputVal.length || !self.mpicker.find('.mPicker-main')) {
            return;
        }

        //将name值默认匹配成id，一旦匹配就跳出循环，多个匹配取第一个
        //匹配一级
        nameEach(this.options.dataJson, 0);
        //匹配二级
        dataLevel2 = this.options.Linkage ? this.options.dataJson[defaultId[0]] : this.options.dataJson[0];

        if (this.options.Linkage && this.options.level === 2 && defaultId[0] && inputVal.length > 1) {
            hasLevel2 = 1;
        }

        if (!this.options.Linkage && this.options.level === 2 && inputVal.length > 1) {
            hasLevel2 = 1;
        }

        if (hasLevel2) {
            dataLevel2 = getChildJson(dataLevel2);
            nameEach(dataLevel2, 1);
        }

    }
    /**
     *  滑动结束，设置transtion值，返回当前选中的li index和元素
     *  obj:滑动的元素
     *  val:可有可没有。可传入data-id或不传
     */
    function setActiveItem(obj, val) {
        var result;
        var y = Math.round((getTranslateY(obj) / this.options.height));
        //得到选中的index
        var index = typeof(val) === 'number' ? obj.find('li').index(obj.find('li[data-id="' + val + '"]')) : this.middleRowIndex - y;

        var y2 = -this.options.height * (index - this.middleRowIndex);
        setTransitionY(obj, y2);
        //添加选中样式
        obj.find('li').eq(index).addClass('active').siblings('li').removeClass('active');

        result = {
            target: obj.find('li').eq(index),
            index: index
        };
        return result;
    }
    /**
     *  传入第一级index，更新第二级html（联动的情况下）
     */
    function refreshItemTwo(index) {
        //兼容不存在child
        var $itemTwo=this.mpicker.find('.mPicker-list ul').eq(1);
        var data = getChildJson(this.options.dataJson[index]);
        if (this.options.level === 2) {
            var str = concatHtmlItem.call(this,data);
            $itemTwo.html(str);
            setActiveItem.call(this,$itemTwo, 0);
        }
    }
    /**
     *  传入数组，设置多级html
     *  index:数组
     */
    function setItemMultiple(index) {
        var $item=this.mpicker.find('.mPicker-list ul');
        var index1 = index[0] ? index[0] : 0;
        var index2 = index[1] ? index[1] : 0;

        if (this.options.Linkage) {
            refreshItemTwo.call(this,index1);
        }
        setActiveItem.call(this,$item.eq(0), index1);

        if (this.options.level === 2) {
            setActiveItem.call(this,$item.eq(1), index2);
        }
    }

    /**
     *  传入json,判断返回json,child
     *  兼容不存在child报错的情况
     */
    function getChildJson(data) {
        if (!data) {
            return [];
        }
        var result = ({}).hasOwnProperty.call(data, 'child') ? data.child : [];
        return result;
    }
    /**
     *  传入json拼接html，只有li级别
     */
    function concatHtmlItem(data) {
        var str = '';
        var self=this;
        $.each(data, function(index, val) {
            var name = self.options.isshort ? val.shortName : val.name;
            str += '<li data-value="' + val.value + '" data-id="' + index + '">' + name + '</li>';
        });
        return str;
    }
    /**
     *  传入li html 拼接ul
     */
    function concatHtmlList(data) {
        var html = '';
        for (var i = 0; i < data.length; i++) {
            var itemStr = concatHtmlItem.call(this,data[i]);
            html += '<div class="mPicker-list"><ul>' + itemStr + '</ul></div>';
        }
        return html;
    }
    /**
     *  设置运动时间
     */
    function changeTime(times, obj) {
        obj.css({
            '-webkit-transition-duration': times + 'ms',
            'transition-duration': times + 'ms'
        });
    }
    /**
     *  touches兼容
     */
    function fnTouches(e) {
        if (!e.touches) {
            e.touches = e.originalEvent.touches;
        }
    }
    /**
     *  设置translateY
     */
    function setTransitionY(obj, y) {
        obj.css({
            "-webkit-transform": 'translateY(' + y + 'px)',
            transform: 'translateY(' + y + 'px)'
        });
    }
    /**
     *  获取translateY
     */
    function getTranslateY(obj) {
        var transZRegex = /\.*translateY\((.*)px\)/i;
        var result;
        if (obj[0].style.WebkitTransform) {
            result = parseInt(transZRegex.exec(obj[0].style.WebkitTransform)[1]);
        } else if (obj[0].style.transform) {
            result = parseInt(transZRegex.exec(obj[0].style.transforms)[1]);
        }
        return result;
    }

     $.fn.mPicker = function(options) {
       return this.each(function () {
            new MPicker($(this), options);
        });
    };

}());

/**
         * 联动的picker
         * 两级
         */
        $('.select-value').mPicker({
            level:2,
            dataJson:dataJson,
            Linkage:true,
            rows:6,
            idDefault:true,
            splitStr:'-',
            header:'<div class="bot"><div class="tt"><span class="nn mPicker-cancel">取消</span><span class="tap">设备采购途径</span><span class="ys mPicker-confirm">确定</span></div></div>',
            confirm:function(){
                //更新json
                this.container.data('mPicker').updateData(level3);
                //console.info($('.select-value').data('value1')+'-'+$('.select-value').data('value2'));
            },
            cancel:function(){
                //console.info($('.select-value').data('value1')+'-'+$('.select-value').data('value2'));
            }
        })
        // var method= $('.select-value').data('mPicker');
        // console.info(method)
        // method.showPicker();
        // method.hide(function(){
        //     console.info(this)
        // });

        /**
         * 不联动的picker
         * 两级
         */
        var method2=$('.select-value2').mPicker({
            level:2,
            dataJson:level3,
            rows:5,
            Linkage:false,
            header:'<div class="mPicker-header">非联动选择插件</div>',
            idDefault:true,
            confirm:function(){
                //console.info($('.select-value2').data('id1')+'-'+$('.select-value2').data('id2')+'-'+$('.select-value2').data('id3'));
            }
        })

        /**
         * 一级
         */
        var method3=$('.select-value3').mPicker({
            level:1,
            dataJson:dataJson,
            Linkage:false,
            rows:6,
            idDefault:true,
            header:'<div class="mPicker-header">单级选择</div>',
            confirm:function(){
                //console.info($('.select-value3').data('id1'));
            },
            cancel:function(){
                //console.info($('.select-value3').data('id1'));
            }
        })