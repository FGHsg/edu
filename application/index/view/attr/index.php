{extend name='public:base' /}
{block name="title"}资料参数列表{/block}
{block name="content"}
<style>
	.pagination li.disabled>a, .pagination li.disabled>span{color:inherit;}
	.pagination li>a, .pagination li>span{color:inherit}
</style>
<div role="tabpanel" class="tab-pane" id="user" style="display:block;">
	<div class="check-div form-inline row">
				<div class="col-xs-2">
                    <a href="{:url('create')}"><button class="btn btn-yellow btn-xs" id="create">添加资料参数</button></a>
		</div>
		<div class="col-xs-10">
			<form method="get" action="{:url('index')}">
			<select name="type_id" style="color:inherit">
				<option value="">--请选择类型--</option>
                <?php foreach(\app\common\model\Cate::$type_cate as $category){?>
				<option value="{$category['type_id']}"  {eq name="Think.get.type_id" value="$category['type_id']"}selected{/eq}>{$category['title']}</option>
                <?php }?>
			</select>
			<!--<input type="text" name="name" value="{$Think.get.name}" class="form-control input-sm" placeholder="输入名称搜索">-->
			<button class="btn btn-white btn-xs " type="submit">查 询 </button>
			</form>
		</div>

	</div>
	<div class="data-div">
		<div class="row tableHeader">
            <div class="col-xs-1 ">
                编号
            </div>
            <div class="col-xs-1">
                类型
            </div>
			<div class="col-xs-1">
                名称
			</div>
			<div class="col-xs-1">
                添加类型
			</div>
           <div class="col-xs-5">
               下拉列表值/输入值
           </div>
			<div class="col-xs-">
				操 作
			</div>
		</div>
		<div class="tablebody">
			<?php if(count($list_)>0){?>
			<?php foreach($list_ as $key=>$row_){?>
			<div class="row cont_nowrap">
                <div class="col-xs-1 ">
                    {$row_->id}
                </div>
                <div class="col-xs-1 " title="{$row_->type_id}">
                    {$row_->type_id}
                </div>
				<div class="col-xs-1 " title="{$row_->name}">
					{$row_->name}
				</div>

                <div class="col-xs-1">
                    {$row_->input_type}
                </div>
                <div class="col-xs-4">
                    {$row_->values}
                </div>
				<div class="col-xs-3">
                    <a href="{:url('edit')}?id={$row_->id}"><button class="btn btn-success btn-xs edit_" >修改/查看</button></a>
                    <button class="btn btn-danger btn-xs del_cate" data-toggle="modal" data-target="#deleteSource" data-id="<?= $row_['id']?>" onclick="del_(this)"> 删除</button>
				</div>

			</div>
			<?php }?>
			<?php }else{?>
				<div class="row">
					<div class="col-xs-12 ">
						<h3 class="" align="center" style="color:red;font-size:18px">结果不存在</h3>
					</div>
				</div>
			<?php }?>

		</div>

	</div>

	<!--页码块-->
	<footer class="footer">
		{$page_str}
	</footer>

	<!--弹出删除用户警告窗口-->
	<div class="modal fade" id="deleteSource" role="dialog" aria-labelledby="gridSystemModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
					<h4 class="modal-title" id="gridSystemModalLabel">提示</h4>
				</div>
				<div class="modal-body">
					<div class="container-fluid">
						确定删除数据吗？
					</div>
				</div>
				<div class="modal-footer">
					<form action="{:url('delete')}" method="post" >
						<input type="hidden" name="id" value="" id="del_id">
                        <input type="hidden" name="url" value="{$url}" id="">
						<button type="button" class="btn btn-xs btn-white" data-dismiss="modal">取 消</button>
						<button type="submit" class="btn  btn-xs btn-danger">确 定</button>
					</form>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
</div>
<script>

	function del_(obj) {
		var id = $(obj).attr('data-id');
		$('#del_id').val(id);
    }

</script>

{/block}