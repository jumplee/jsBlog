function ele(ele){
    return document.getElementById(ele);
}
var Select = antd.Select;
var Option = Select.Option;

function handleChange(value) {
    console.log('selected ' + value);
}
$('#blog_content').summernote({
    height: 300
});
$('#blog_add_btn').click(function(){
   $.post('')
});
React.render(
    <form className="ant-form-horizontal">
        <div className="ant-form-item">
            <label htmlFor="category" className="col-6" required>分类：</label>
            <div className="col-14">
                <Select value="lucy" style={{width:200}} onChange={handleChange}>
                    <Option value="jack">Jack</Option>
                    <Option value="lucy">Lucy</Option>
                    <Option value="disabled" disabled>Disabled</Option>
                    <Option value="yiminghe">yiminghe</Option>
                </Select>
            </div>
        </div>

    </form>
    , document.getElementById('blog_category'));