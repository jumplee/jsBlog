/**
 * controller
 * @return 
 */
module.exports = Controller("Home/BaseController", function(){
  "use strict";
  return {
    indexAction: function(){
        var self=this;
        D('category').getTreeList().then(function(data){
            self.assign({
                cates:data
            });
            self.session('userInfo').then(function(info){
                if(info){
                    self.assign('isAdmin',true)
                }
                self.display();
            });
        })

    },
      about:function(){
        this.display();
      },
      loginAction:function(){
          this.display();
      },
      loginValidateAction:function(){
          var self=this;
          var username=this.post('username');
          D('login').where({
              username:username
          }).select().then(function(data){

                if(data.length==1){
                    var password=md5(self.post('password')+data[0].salt);


                    if(password==data[0]['password']){
                        console.log('----');
                        self.session('userInfo',{
                            username:username,
                            id:data[0]['id']
                        }).then(function(data){
                            self.json({
                                success:true,
                                href:'/admin'
                            });
                        });
                    }else{
                      var  error='密码与用户名不匹配';
                        self.json({
                            success:false,
                            error:error
                        })
                    }
                }
                //else{
                //    error='密码与用户名不匹配';
                //    self.json({
                //        success:false,
                //        error:error
                //    })
                //}
          });

      }
  };
});