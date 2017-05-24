APP.define({
    name: "reg",
    type: JActivity,
    init: function () {
        var self = this;
        var costom_reg = this.findDom('costom_reg');
        var shop_reg = this.findDom('shop_reg');
        var costom_reg_wrap = this.findDom('costom_reg_wrap');
        var shop_reg_wrap = this.findDom('shop_reg_wrap');
        load_costom_reg();
        Action.click('shop_reg', function () {
            load_shop_reg();
        });
        Action.click('costom_reg', function () {
            load_costom_reg();
        });

   
        this.addEvent("click",'c_submit',sub_costom_reg);

        // Action.click("test",function(){
        //     alert();
        //     sub_costom_reg();
        // });
        this.addEvent("click",'s_submit',sub_shop_reg);

        function load_costom_reg() {
            J(shop_reg).removeClass('rl-record');
            J(costom_reg).addClass('rl-record');
            J(shop_reg_wrap).setcss("display", "none");
            J(costom_reg_wrap).setcss("display", "block");
        }

        function load_shop_reg() {
            J(shop_reg).addClass('rl-record')
            J(costom_reg).removeClass('rl-record')
            J(shop_reg_wrap).setcss("display", "block");
            J(costom_reg_wrap).setcss("display", "none");
        }


        /**
         *  提交顾客的提交信息
         */
        function sub_costom_reg() {
            var phone = self.findDom('c_phone').value;
            var name = self.findDom('c_name').value;
            var username = self.findDom('c_username').value;
            var password = self.findDom('c_password').value;

            if (!phone) {
                inf_notify("电话不能为空");
                return;
            }

            if (!name) {
                inf_notify("商店名不能为空");
                return;
            }

            if (!username) {
                inf_notify("账号不能为空");
                return;
            }


            if (!password) {
                inf_notify("密码不能为空");
                return;
            }
            xhrSend({
                url: "userRun/reg",
                data: {
                    phone: phone,
                    name: name,
                    username: username,
                    password: password,
                    type: 2
                },
                sucFn: function (data) {
                    console.log(data);
         

                },
                errFn: function (data) {
                    inf_notify(data.msg);
                }
            });
        }
        /**
         *  提交商户的提交信息
         */
        function sub_shop_reg() {
            var phone = self.findDom('s_phone').value;
            var name = self.findDom('s_name').value;
            var username = self.findDom('s_username').value;
            var address = self.findDom('s_address').value;
            var password = self.findDom('s_password').value;


            if (!phone) {
                inf_notify("电话不能为空");
                return;
            }

            if (!name) {
                inf_notify("商店名不能为空");
                return;
            }

            if (!username) {
                inf_notify("账号不能为空");
                return;
            }

            if (!address) {
                inf_notify("地址不能为空");
                return;
            }

            if (!password) {
                inf_notify("密码不能为空");
                return;
            }

            xhrSend({
                url: "userRun/reg",
                data: {
                    phone: phone,
                    name: name,
                    username: username,
                    password: password,
                    type: 1,
                    address: address
                },
                sucFn: function (data) {
                    console.log(data);

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

    }
});
