APP.define({
    name: "notice",
    type: JActivity,
    init: function () {

        // var addnew = this.findDom('addnewOne');
        // var self = this;
        // Action.click('addnewOne', function () {
        //     self.transfer.loadActivity("addNotice", "addNotice").init().activite();
        //     self.transfer.sleep();
        // })
    },
    activite: function () {
        var self = this;
        self.findDom("context_list").innerHTML = "";

        xhrSend({
            url: "infRun/select",
            data: {
                id: user.id
            },
            sucFn: function (data) {
                console.log(data);
                var context_list = self.findDom("context_list");
                var template = self.loadTemplate("context_list", context_list);

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
