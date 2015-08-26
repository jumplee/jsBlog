/**
 * controller
 * @return
 */
module.exports = Controller("Home/BaseController", function(){
    "use strict";
    return {
        indexAction: function(){
            //render View/Home/index_index.html file
            this.display();
        },
        listAction:function(){
            var self=this;
            var page=this.param('page');
            console.log(page);
            if(!page){
                page=1;
            }
            //
            D('blog').field('*,c.name as category_name').join({
                table:'category',
                join: 'left',
                as:'c',
                on:['category','id']
            }).page(page,10).countSelect().then(function(data){
                self.json(data);
            }).catch(function(error){
                console.log(error);
            });
        }
    };
});