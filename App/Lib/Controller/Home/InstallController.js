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
      saveAction:function(){
          var self=this;
          var username=this.post('username');
          var salt=Math.random().toString(36).substr(2,12);
          var password=md5(this.post('password')+salt);
          D('login').add({
              username:username,
              salt:salt,
              password:password
          }).then(function(){
              return self.redirect("/admin/index");
          })
      }
  };
});