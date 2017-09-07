{extend name='public:base' /}
{block name="title"}产品属性列表{/block}
{block name="content"}
<style>
	.pagination li.disabled>a, .pagination li.disabled>span{color:inherit;}
	.pagination li>a, .pagination li>span{color:inherit}
</style>
<div role="tabpanel" class="tab-pane" id="user" style="display:block;">
	<div class="check-div form-inline row">
				<div class="col-xs-2">
                    <a href="{:url('create')}"><button class="btn btn-yellow btn-xs" id="create">添加产品属性</button></a>
		</div>
		<div class="col-xs-10">
			<form method="get" action="{:url('index')}">
			<select name="cate_id" style="color:inherit">
				<option value="0">--默认类型--</option>
                <?php foreach($list_cate as $category){?>
				<option value="{$category->id}"  {eq name="Think.get.cate_id" value="$category->id"}selected{/eq}>{$category->name}</option>
                <?php }?>
			</select>
			<!--<input type="text" name="name" value="{$Think.get.name}" class="form-control input-sm" placeholder="输入名称搜索">-->
			<button class="btn btn-white btn-xs " type="submit">查 询 </button>
			</form>
		</div>
		<!--<div class="col-lg-3 col-lg-offset-2 col-xs-4" style=" padding-right: 40px;text-align: right;">
			<label for="paixu">排序:&nbsp;</label>
			<select class=" form-control">
				<option>地区</option>
				<option>地区</option>
				<option>班期</option>
				<option>性别</option>
				<option>年龄</option>
				<option>份数</option>
			</select>
		</div>-->
	</div>
	<div class="data-div">
		<div class="row tableHeader">
            <div class="col-xs-1 ">
                编 号
            </div>
            <div class="col-xs-2">
                分类
            </div>
			<div class="col-xs-1">
                名称
			</div>
			<div class="col-xs-1">
                添加类型
			</div>
           <div class="col-xs-4">
               下拉列表值
           </div>

         <!--   <div class="col-xs-1">
				状 态
			</div>-->
			<div class="col-xs-3">
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
                <div class="col-xs-2 " title="{$row_->cate_name}">
                 <!--   <?php /*if($row_->cate_name==null){*/?>--><?php /*}*/?>
                    {$row_->cate_name}
                </div>
				<div class="col-xs-1 " title="{$row_->name}">
					{$row_->name}
				</div>

                <div class="col-xs-1">
                    {$row_->type}
                </div>
                <div class="col-xs-4">
                    {$row_->values}
                </div>
             <!--   <div class="col-xs-1">
                    {$row_->status}
                </div>-->
				<div class="col-xs-3">
                    <a href="{:url('edit')}?id={$row_->id}&page={$page}"><button class="btn btn-success btn-xs edit_" >修改/查看</button></a>
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
		{$list_->render()}
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
                        <input type="hidden" name="page" value="{$page}" id="del_id">
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