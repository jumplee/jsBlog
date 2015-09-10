var Select = antd.Select;
var Option = Select.Option;
var CategorySelect=React.createClass({
    getInitialState(){
      return {
          categoryList:[],
          pid:1
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
        //onChange={this.onPidChange}
        return   <Select defaultValue="1" style={{width:100}} onChange={this.onPidChange}>
                        {cateOptions}
        </Select>

    },
    onPidChange(value){
        this.state.pid=value;
        pid=value;
    }
});
React.render(<CategorySelect/>,$('#blog_category').get(0));


var tpl_table=Handlebars.compile($('#tpl_table').html());
var options={
    url:'/blog/list',
    dataName:"data",
    totalName:"count",
    rowLimit:10,
    tpl:tpl_table,
    element:"#example_table",
    onrender:function(){
        $('body').scrollTop(0);
    }
};
var pp=new Table(options);