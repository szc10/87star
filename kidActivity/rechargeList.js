APP.define({
    name: "rechargeList",
    type: JActivity,
    init: function () {
        var self = this;
        var sell = this.findDom('rl-sell');
        var buy = this.findDom('rl-buy');
        rl_sell();
        Action.click('rl-buy', function () {

            J(buy).toggleClass('rl-record')
            J(sell).toggleClass('rl-record')
            rl_buy();
        });
        Action.click('rl-sell', function () {
            J(buy).toggleClass('rl-record')
            J(sell).toggleClass('rl-record')
            rl_sell();
        });


        function rl_buy() {


            self.findDom("context_list").innerHTML = "";

            xhrSend({
                url: "coinsRun/select_p",
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

        }

        function rl_sell() {


            self.findDom("context_list").innerHTML = "";

            xhrSend({
                url: "coinsRun/select_a",
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
        }

    },
    activite: function () {

    },
    sleep: function () {

    },
    template: {
        rList: {
            data: {
                info: [{
                    id: "买家ID",
                    name: "马家昵称",
                    count: "元宝数量",
                    date: "时间"
                }]
            },
            method: {

            }

        }
    }
});
