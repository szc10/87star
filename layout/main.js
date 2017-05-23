APP.define({
    name: "main",
    type: TabPageActivity,
    init: function() {
    this.TabDel().add({
      name:"my"
    }).add({
      name:"nextMgr"
    }).add({
name:"rechargeList"
    }).add({
      name:"notice"
    }).init("nextMgr");

    },
    activite:function(){

    },
    sleep:function(){
        //console.log("sleep");
    }
});
