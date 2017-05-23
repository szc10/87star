APP.define({
    name: "main",
    type: TabPageActivity,
    init: function() {
    this.TabDel().add({
      name:"my"
    }).add({
      name:"gameMgr"
    }).add({
name:"rechargeList"
    }).add({
      name:"notice"
    }).init("gameMgr");

    },
    activite:function(){

    },
    sleep:function(){
        //console.log("sleep");
    }
});
