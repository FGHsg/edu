{extend name='public:base' /}
{block name="title"}完善资料参数{/block}
{block name="content"}
<style>
    .control-label{
        padding-right:10px;
    }
</style>
	<!--弹出添加用户窗口--><form class="form-horizontal" action="{:url('save')}" method="post"  >
    <input type="hidden" name="good_id" value="{$row_good->id}">
    <input type="hidden" name="referer" value="{$referer}">
		<div class="row" >
			<div class="col-xs-8">
				<div class="text-center">
					<!---->
					<h4 class="modal-title" id="gridSystemModalLabel">完善 {$row_good->title} 参数第二步</h4>
				</div>
				<div class="">
					<div class="container-fluid">
                        <?php if(count($list_attr)>0){?>
<?php foreach($list_attr as $k=>$attr){?>
                                <?php if($attr->input_type=='下拉添加'){?>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>{$attr->name}：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi" name="attr_value[{$attr->id}]" id="a_cate_id"> <option value="">-请选择-</option>
                                    <?php foreach ($attr->values as $k2=>$value){?>
                                        <option value="{$value}">{$value}</option>
                                    <?php }?>
                                </select>
                            </div>
                        </div><?php }elseif($attr->input_type=='表单输入'){?>
                                    <div class="form-group ">
                                        <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>{$attr->name}：</label>
                                        <div class="col-xs-8 ">
                                            <input type="text" class="form-control input-sm duiqi" name='attr_value[{$attr->id}]' value="{$attr->values}" id="" placeholder="">
                                        </div>
                                    </div>
                                <?php }?>
<?php  }?>
                        <?php }else{?>
                            <div class="form-group">
                                <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>此类型没有添加属性</label>
                                <div class="col-xs-8">
                                <a href="{:url('attr/create')}">前去完善</a>
                                </div>
                            </div>
                        <?php }?>

				</div>
				<div class="text-center">
                    <a href="javascript:history.back()">
                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">返回</button>
                    </a>
					<button type="submit" class="btn btn-xs btn-green"> 确定 </button>
				</div>
			</div>
		</div>
</form>

<script>

</script>

{/block}
