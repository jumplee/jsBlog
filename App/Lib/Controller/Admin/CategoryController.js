/**
 * controller
 * @return
 */

module.exports = Controller("Admin/BaseController", function(){
    "use strict";
    return {
        indexAction: function(){
            var self=this;
            D('category').getTreeList().then(function(list){
                self.assign('cates',list);
                self.display();
            })

        },
        treeListAction:function(){
            var self=this;
            D('category').getTreeList().then(function(data){
                self.json(data);
            });
        },
        listAction:function(){
            var pid=this.get('pid');
            var self=this;

            if(!pid){
                pid=0;
            }
            D('category').field('id,name').where({
                pid:pid
            }).select().then(function(data){
                self.json(data);
            });
        },
        addAction: function(){
            this.display();
        },
        addSaveAction:function(){
            var cate=JSON.parse(this.post('model'));
            var self=this;
            D('category').where({
                name:cate.name
            }).count('id').then(function(count){
                if(count>0){
                    self.json({
                        success:false,
                        error:'已经添加过这个分类'
                    });
                }else{
                    D('category').add(cate).then(function(){
                        self.json({
                            success:true
                        });
                    });
                }
            })
            //D('category').add(cate).then(function(){
            //    self.json({
            //        success:true
            //    });
            //}).catch(function(error){
            //    console.log(error);
            //});

        }

    };
});