APP.define({
    name: "my",
    type: JActivity,
    init: function () {
        var context = this.getContext();
        var revise = this.findDom('my-revise')
        var self = this;


        xhrSend({
            url: "userRun/select_one",
            data: {
                id: user.id
            },
            sucFn: function (data) {

                console.log(data);


                self.findDom('my-name-name').innerHTML = data.username+"/"+data.name;

                self.findDom('my-money-count').innerHTML = data.coins;

                // var context_list = self.findDom("custom_context_list");
                // var template = self.loadTemplate("custom_context_list", context_list);


            },
            errFn: function (data) {
                inf_notify(data.msg);
            }
        });


        Action.click('my-revise', function () {
            self.transfer.loadActivity("revise", "revise").init().activite();
            self.transfer.sleep();
        });
        this.addEvent('click','switch-coin',function(){
             self.transfer.loadActivity("nextMgr", "nextMgr1").init(1).activite();
             self.transfer.sleep();
        })
        /**
         * 推出登录
         */
        this.addEvent('click', 'exit', function () {
            alert("推出登录");
            user.clearData();
            self.transfer.loadActivity("login", "login").init().activite();
            self.transfer.destroy();
        });
    },
    activite: function () {


    },
    sleep: function () {

    }
});
