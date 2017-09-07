{extend name='public:base' /}
{block name="title"}{$title}{/block}
{block name="content"}
<style>
    .control-label{
        padding-right:10px;
    }
</style>
	<!--弹出添加用户窗口--><form class="form-horizontal" action="{:url($act)}" method="post"  >
		<div class="row" >
			<div class="col-xs-8">
				<div class="text-center">
					<!---->
					<h4 class="modal-title" id="gridSystemModalLabel">{$title}</h4>
				</div>
				<div class="">
					<div class="container-fluid">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>类型：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi" name="type_id" id="">
                                    <?php foreach(\app\common\model\Cate::$type_cate as $category){?>
                                        <option value="{$category['type_id']}" >{$category['title']}</option>
                                    <?php }?>
                                </select>
                            </div>
                        </div>

							<div class="form-group ">
                                <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>名称：</label>
								<div class="col-xs-8 ">
									<input type="text" class="form-control input-sm duiqi" name='name' value="" id="" placeholder="">
								</div>
							</div>
                        <div class="form-group">
                            <label for="situation" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>添加类型：</label>
                            <div class="col-xs-8">
                                <label class="control-label" >
                                    <input type="radio" name="input_type" id="" value="1" checked onclick="showValues()">下拉添加</label> &nbsp;
                                <label class="control-label">
                                    <input type="radio" name="input_type" id="" value="2" onclick="showDefaultValue()"> 表单输入</label>
                            </div>
                        </div>

                        <div class="form-group " id="values" style="display: block;">
                            <label for="sName" class="col-xs-3 control-label">下拉可选值：</label>
                            <div class="col-xs-8 ">
                                <textarea name="values" style="width:600px;height:100px;" placeholder="如：第一个,第二个,第三个,第四个"></textarea>
                               <br /> <span style="color:red">多个值请用英文逗号隔开</span>
                            </div>
                        </div>
                        <div class="form-group " id="default_value" style="display:none">
                            <label for="sName" class="col-xs-3 control-label">默认值：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" name='default_value' value="" id="" placeholder="">
                            </div>
                        </div>

				</div>
				<div class="text-center">
                    <a href="javascript:history.back()">
                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">返回</button>
                    </a>
					<button type="submit" class="btn btn-xs btn-green">保 存</button>
				</div>
			</div>
		</div>
</form>

<script>
    $(function () {
        $('form').bootstrapValidator({
            fields: {
                name: {
                    validators:
                        {
                            notEmpty: {
                                message: '名称不能为空'
                            }
                        }

                },
                type_id: {
                    validators: {
                        notEmpty: {
                            message: '请选择'
                        }


                    }
                }

            }
        });

    });
    function showValues() {
        $('#values')[0].style.display = 'block';
        $('#default_value')[0].style.display = 'none';
    }
    function showDefaultValue() {
        $('#values')[0].style.display = 'none';
        $('#default_value')[0].style.display = 'block';
    }
</script>

{/block}
