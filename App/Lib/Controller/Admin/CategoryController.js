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

          this.display();
      },
      addSaveAction:function(){
          this.get('cate_name');
          D('category').add({

          });
          this.json({
              name:'222'
          });
      }

  };
});