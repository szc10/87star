APP.define({
    name: "revise",
    type: JActivity,
    init: function() {
      var self = this;
      this.addEvent("click","back",function(){
         self.transfer.activite();
         self.destroy();
      });
     
    },

});