/**
 * controller
 * @return
 */
module.exports = Controller("Home/BaseController", function(){
    "use strict";
    return {
        indexAction: function(){
            this.display();
        },
        listAction:function(){
            var self=this;
            var page=self.param('page');
            if(!page){
                page=1;
            }
            var category=self.param('category');
            var where_obj={};
            if(category){
                where_obj={
                    category:category
                }
            }
            //
            D('blog').field('js_blog.*,c.name as category_name').join({
                table:'category',
                join: 'inner',
                as:'c',
                on:['category','id']
            }).where(
                where_obj
            ).page(page,self.param('limit')).order(
                {
                    add_time:'desc'
                }
            ).countSelect().then(function(data){
                var moment = require('moment');
                var trimHtml = require('trim-html');
                moment.locale('zh-cn');
                var list=data.data;
                for(var i=0;i<list.length;i++){
                    list[i]['add_time_name']=moment(list[i]['add_time']).fromNow();
                    list[i]['content']=trimHtml(list[i]['content'],{
                        limit:300
                    }).html;
                }

                self.json(data);
            }).catch(function(error){
                console.log(error);
            });
        },
        detailsAction:function(){
            var self=this;
            var id=self.get('id');
            D('blog').where({
                id:id
            }).select().then(function(data){
                if(data.length>0){
                    self.assign(data[0]);
                }else{
                    self.redirect('/static/about.html');
                }

                self.display();
            });

        }
    };
});