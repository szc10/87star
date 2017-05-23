APP.define({
	name: "login",
	type: JActivity,
	init: function () {
		var rep = true;
		var self = this;
		var yesBtn = this.findDom("lg-con-yesBtn");
		var noBtn = this.findDom("lg-con-noBtn");
		var username = document.getElementById("username");
		var password = document.getElementById("password");



		function loadMain() {

            var url = "";

                if(user.type==1){
                   url = "config/shop.json";
				} else{
					url = "config/custom.json";
				}
			APP.loadManifest(null,url).then(function () {
				APP.loadJActivity(null, 'main', 'main', null, TabPageActivity).init().activite();
				self.destroy();
			})

		}


		if (user.id) {
			loadMain();
		}
		Action.click("no", function () {
			Toggle(yesBtn, noBtn, "lg-con-style")
		});
		Action.click("yes", function () {
			Toggle(yesBtn, noBtn, "lg-con-style")
		});
		function Toggle(act1, act2, ClassName) {
			J(act1).toggleClass(ClassName)
			J(act2).toggleClass(ClassName)
		};
		Action.click("submit", function () {
			if (username.value && password.value) {

				// APP.loadJActivity(null,'main','main',null,TabPageActivity).init().activite();
				// self.destroy();

				xhrSend({
					url: "userRun/login",
					data: {
						username: username.value,
						password: password.value
					},
					sucFn: function (data) {
						inf_notify("登录成功");
						console.log(data);
						user.saveData(data);

						loadMain();

					},
					errFn: function (data) {
						inf_notify(data.msg);
					}
				});

			} else {
				inf_notify("用户名密码不能为空");
			}


		})

	},
	activite: function () {

	},
	sleep: function () {

	}

})