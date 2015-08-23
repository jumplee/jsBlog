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
      listAction:function(){
          var pid=this.get('pid');
          var self=this;

        if(!pid){
            pid=0;
        }
          D('category').where({
              pid:pid
          }).select().then(function(data){
              self.json(data);
          });
      },
      addAction: function(){
          this.display();
      },
      addSaveAction:function(){
          var name=this.get('cate_name');
          D('category').add({
            name:name
          });
          this.json({
              name:'222'
          });
      }

  };
});