//模型定义
var _=require('lodash');
module.exports = Model(function(){
    return {
        //获取分类列表
        getTreeList: function(){
            var self=this;
            return self.select().then(function(data){
                var list=_.where(data,{
                    pid:0
                });
                _.forEach(list,function(item){
                    item.children=_.where(data,{pid:item.id})
                });
                return list;
            });
        }
    }
})