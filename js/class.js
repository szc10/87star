var TabPageActivity = function(newActivityAction) {
    TabPageActivity.superClass.constructor.call(this, newActivityAction); //调用父类的构造方法
    var point = this;
    this._preInit = function() {
        var action = this.config.name + '_nav';
        var main_nav = this.findDom('nav');
        var nav = J(main_nav).domAll('li');
        for(var i = 0;i<nav.length;i++){
           nav[i].dataset.action = action;
        }
        //
    };
    this.TabDel = function() {
        var action = point.config.name + '_nav';
        var main_nav = point.findDom('nav');
        var context = point.findDom('main-context');
        var model = [];
        var currentModel = null;
        var nav = J(main_nav).domAll('*[data-action="' + action + '"]');
        Action.click(action, function() {
            for (var k = 0; k < nav.length; k++) {
                var one = nav[k];
                J(one).removeClass('active');
            }
            currentModel.sleep();
            J(this).addClass('active');
            model[this.dataset.target].activite();
            currentModel = model[this.dataset.target];
        });

        var fn = {
            add: function(config) {
                var name = config.name;
                model[name] =   point.loadActivity(name,name,context).init();
                return fn;
            },
            init: function(name) {
                model[name].activite();
                currentModel = model[name];
                J(main_nav).domFirst('*[data-target="' + name + '"]').className = "active";
                return fn;
            }
        };
        return fn;
    };
}
extend(TabPageActivity, JActivity);
