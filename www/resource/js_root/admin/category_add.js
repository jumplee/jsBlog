var Select = antd.Select;
var Option = Select.Option;
//var Validation = antd.Validation;
//var Validator = Validation.Validator;
function save(){
    alert(save);
}


    var AddForm=React.createClass({
        mixins: [React.addons.LinkedStateMixin],
        getInitialState() {
            return {
                checked: true,
                categoryName: '',
                categoryDescription:'',
                categoryList:[]
            }
        },
        componentDidMount() {
            var self=this;
            $.getJSON('/admin/category/list',function(json){
                self.setState({
                        categoryList:json
                });
            });
        },
        save(event){
            event.preventDefault();
            alert(this.state.categoryName);
            return false;
        },
        render(){
            var cateOptions=this.state.categoryList.map(function(cate){
                return  <Option value="{cate.id}">{cate.name}</Option>
            });
            return <form className="ant-form-horizontal">
                <div className="ant-form-item">
                    <label htmlFor="category" className="col-6" required>父类：</label>
                    <div className="col-14">
                        <div className="col-14">
                            <Select defaultValue="1" style={{width:200}} >
                                {cateOptions}
                            </Select>
                        </div>
                    </div>
                </div>
                <div className="ant-form-item">
                    <label htmlFor="category" className="col-6" required>分类名：</label>
                    <div className="col-14">
                        <div className="col-14">
                            <input className="ant-input" type="text"  valueLink={this.linkState('categoryName')} id="category_name"  placeholder="请输入分类名"/>
                        </div>
                    </div>
                </div>
                <div className="ant-form-item">
                    <label htmlFor="category" className="col-6" required>描述：</label>
                    <div className="col-14">
                        <div className="col-14">
                            <textarea className="ant-input" style={{height:200}} rows="5" valueLink={this.linkState('categoryDescription')} id="category_name"  placeholder="请输入分类名"/>
                        </div>
                    </div>
                </div>
                <div className="row">
                    <div className="col-14 col-offset-6">
                        <input type="button" onClick={this.save} className="ant-btn ant-btn-primary" value="确 定" />
                    </div>
                </div>
            </form>
        }
    })
    React.render(
        <AddForm/>
        , document.getElementById('add_cate_panel'));

