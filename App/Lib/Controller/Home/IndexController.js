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
                    //var password=md5(this.post('password')+data[0].salt);
                    //self.json({
                    //    success:true,
                    //    href:'/admin'
                    //});

                    if(password==data[0]['password']){
                        console.log('----');
                        self.session('userInfo',{
                            username:username,
                            id:data[0]['id']
                        }).then(function(){

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