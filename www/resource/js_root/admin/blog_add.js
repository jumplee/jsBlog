function ele(ele){
    return document.getElementById(ele);
}
var Select = antd.Select;
var Option = Select.Option;
var $content=$('#blog_content');
var pid=1;
var blogTitle='';
$content.summernote({
    height: 300
});
$('#blog_add_btn').click(function(){
    var self=this;
    var content=$content.code();
    if($(content).text()==''){
        antd.message.info('内容不能为空',10);
        return false;
    }
    var data={
        content:content,
        category:pid,
        title:blogTitle
    };
    var btn=$(this)
    btn.attr('disabled',true);
    setTimeout(function(){
       btn.attr('disabled',false)
    },5000);
    $.post('save',{
        model:JSON.stringify(data)
    },function(json){
        if(json.success){
            antd.message.success('添加成功');
            setTimeout()
        }else{
            antd.message.error(json.error);
        }
    });
});
var BlogForm=React.createClass({
    mixins: [React.addons.LinkedStateMixin],
    getInitialState() {
        return {
            title:'',
            content:'',
            pid:"0",
            categoryList:[]
        }
    },
    componentDidMount() {
        var self=this;
        $.getJSON('/admin/category/treeList',function(json){
            self.setState({
                categoryList:json
            });
        });
    },
    save(event){

    },
    onPidChange(value){
        this.state.pid=value;
        pid=value;
    },
    onTitleChange(event){
        this.state.title=event.target.value;
        blogTitle=event.target.value;
    },
    render(){
        var cateOptions=[];
        this.state.categoryList.forEach(function(cate){
            var str= <Option key={cate.id}>{cate.name}</Option>;
                cateOptions.push(str);
            if(cate.children){
                cate.children.forEach(function(item){
                    str = <Option key={item.id}>----{item.name}</Option>;
                    cateOptions.push(str);
                });
            }

        });

        return     <form className="ant-form-horizontal">

            <div className="ant-form-item">
                <label htmlFor="category" className="col-6" required>分类：</label>
                <div className="col-14">
                    <Select defaultValue="1" style={{width:200}} onChange={this.onPidChange}>
                        {cateOptions}
                    </Select>
                </div>
            </div>
            <div className="ant-form-item">
                <label htmlFor="title" className="col-6" required>标题：</label>
                <div className="col-14">
                    <input className="ant-input" type="text"  id="title" onChange={this.onTitleChange}  placeholder="请输入标题"/>
                </div>
            </div>
        </form>
    }
});
React.render(<BlogForm/>, document.getElementById('blog_category'));