/**
 * controller
 * @return
 */
module.exports = Controller("Admin/BaseController", function(){
    "use strict";
    return {
        indexAction: function(){
            //render View/Home/index_index.html file
            this.display();
        },
        addAction: function(){
            //render View/Home/index_index.html file
            this.display();
        },
        saveAction:function(){
            var blog=JSON.parse(this.post('model'));
            var self=this;
            D('blog').add(blog).then(function(){
                self.json({
                    success:true
                });
            }).catch(function(){

            });
        }

    };
});