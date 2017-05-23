var postUrl = "http://192.168.199.149:9300/admin/";  //请求目标的地址


var user = {
    saveData: function (data) {
        localStorage.setItem("_userDb", JSON.stringify(data));
        this.reload();
    },
    reload: function () {
        if (localStorage.getItem("_userDb")) {
            var userJson = JSON.parse(localStorage.getItem("_userDb"));
            for (var k in userJson) {
                this[k] = userJson[k];
            }
        }
    },
    getHead:function(url){
        if(!url){
            return "img/touxiang.png";
        } else{
            return url;
        }
    },
    clearData:function(){
         localStorage.setItem("_userDb", "");
         this.id = null; 

    }
}

user.reload();
