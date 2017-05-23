APP.define({
    name: "nextMgr",
    type: JActivity,
    init: function () {

        var self = this;
        this.addEvent('click', 'test-action', function () {
            self.transfer.loadActivity("test", "test").init().activite();
            self.transfer.sleep();
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