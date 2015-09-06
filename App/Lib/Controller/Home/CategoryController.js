/**
 * controller
 * @return
 */
module.exports = Controller("Home/BaseController", function(){
    "use strict";
    return {
        indexAction: function(){
            var self=this;
            D('blog').where({
                category:self.get('id')
            }).select().then(function(data){
                self.display();
            })
        }
    };
});