APP.define({
    name: "nextMgr",
    type: JActivity,
    init: function (sign) {

        var back = this.findDom('back');
        var nav = this.findDom('nav');

        var self = this;

        if (sign) {
            J(back).setcss("display", "block");
            J(nav).setcss("display", "none");
            self.addEvent("click", "back", function () {
                self.transfer.activite();
                self.destroy();
            });
        } else {
            J(back).setcss("display", "none");
            J(nav).setcss("display", "block");
        }

        var self = this;
        // this.addEvent('click', 'test-action', function () {
        //     self.transfer.loadActivity("test", "test").init().activite();
        //     self.transfer.sleep();
        // });

           this.addEvent('click', 'switch_pay', function (dom) {
            //    console.log("当前捕获的元素",dom);
               var a_id= dom.dataset.id; 
            self.loadActivity("switch_pay", "switch_pay").init().activite();
            self.sleep();
        });

        // console.log(this.findDom('test').innerHTML);
    },
    activite: function () {

        var self = this;
        self.findDom("custom_context_list").innerHTML = "";

        xhrSend({
            url: "userRun/select_custom",
            data: {
                id: user.id
            },
            sucFn: function (data) {
                var context_list = self.findDom("custom_context_list");
                var template = self.loadTemplate("custom_context_list", context_list);

                template.start("str", data);

            },
            errFn: function (data) {
                inf_notify(data.msg);
            }
        });

    },
    sleep: function () {

    }
});