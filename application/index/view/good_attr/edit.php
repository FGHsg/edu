{extend name='public:base' /}
{block name="title"}编辑产品中心产品{/block}

{block name="content"}
<style>
    .control-label{
        padding-right:10px;
    }
</style>

	<!--弹出添加用户窗口--><form class="form-horizontal" action="{:url('update')}" method="post" enctype="multipart/form-data" >
    <input type="hidden" name="id" value="{$row_->id}">
    <input type="hidden" name="page" value="{$page}">
		<div class="row" >
			<div class="col-xs-8">
				<div class="text-center">
					<h4 class="modal-title" id="gridSystemModalLabel">编辑产品中心产品</h4>
				</div>
				<div class="">
					<div class="container-fluid">

                        <div class="form-group">
                            <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>分类：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi" name="cate_id" id="a_cate_id">
                                    <option value="0">--默认类型--</option>
                                    <?php foreach ($list_cate as $k=>$category){?>
                                        <option value="{$category->id}" <?php echo $category->id==$row_->cate_id?'selected':''?> >{$category->name}</option>
                                    <?php }?>
                                </select>
                            </div>
                        </div>

                        <div class="form-group ">
                            <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>名称：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" name='name' value="{$row_->name}" id="" placeholder="">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="situation" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>添加类型：</label>
                            <div class="col-xs-8">
                                <label class="control-label" >
                                    <input type="radio" name="type" id="" value="1" <?php echo $row_->type=='下拉添加'?'checked':''?> onclick="showValues()">下拉添加</label> &nbsp;
                                <label class="control-label">
                                    <input type="radio" name="type" id="" value="2"   <?php echo $row_->type=='表单输入'?'checked':''?> onclick="showDefaultValue()"> 表单输入</label>
                            </div>
                        </div>

                        <div class="form-group " id="values" style="display: <?php echo  $row_->type=='下拉添加'?'block':'none'?>">
                            <label for="sName" class="col-xs-3 control-label">下拉可选值：</label>
                            <div class="col-xs-8 ">
                                <textarea name="values">{$row_->values}</textarea>
                                <br /> <span style="color:red">多个值请用英文逗号隔开</span>
                            </div>
                        </div>
                        <div class="form-group " id="default_value" style="display:<?php echo  $row_->type=='表单输入'?'block':'none'?>">
                            <label for="sName" class="col-xs-3 control-label">默认值：</label>
                            <div class="col-xs-8 ">
                                <input type="text" class="form-control input-sm duiqi" name='default_value' value="{$row_->values}" id="" placeholder="">
                            </div>
                        </div>

                        </div>
					</div>
            </div></div>
				<div class="text-center">
                    <a href="{:url('index')}"><button type="button" class="btn btn-xs btn-white" data-dismiss="modal">返回列表 </button></a>
					<button type="submit" class="btn btn-xs btn-green">保 存</button>
				</div>
			</div>
		</div>
</form>

<script>
    function showValues() {
        $('#values')[0].style.display = 'block';
        $('#default_value')[0].style.display = 'none';
    }
    function showDefaultValue() {
        $('#values')[0].style.display = 'none';
        $('#default_value')[0].style.display = 'block';
    }
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
                desc: {
                    validators:
                        {
                            notEmpty: {
                                message: '不能为空'
                            }
                        }

                },

                cate_id: {
                    validators: {
                        notEmpty: {
                            message: '请选择分类'
                        }


                    }
                },


            }
        });

    });
</script>

{/block}
