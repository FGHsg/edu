{extend name='public:base' /}
{block name="title"}完善资料参数{/block}
{block name="content"}
<style>
    .control-label{
        padding-right:10px;
    }
</style>
	<!--弹出添加用户窗口--><form class="form-horizontal" action="{:url('create2')}" method="post"  >
    <input type="hidden" name="good_id" value="{$row_good->id}">
    <input type="hidden" name="referer" value="{$referer}">
		<div class="row" >
			<div class="col-xs-8">
				<div class="text-center">
					<!---->
					<h4 class="modal-title" id="gridSystemModalLabel">完善 {$row_good->title} 参数</h4>
				</div>
				<div class="">
					<div class="container-fluid">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>类型：</label>
                            <div class="col-xs-8">
                                <select  class=" form-control select-duiqi" name="type" id="">
                                    <?php foreach (\app\common\model\Cate::$type_cate as $row_) { ?>
                                        <option value="{$row_['type_id']}" >{$row_['title']}</option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>


				</div>
				<div class="text-center">
                    <a href="javascript:history.back()">
                        <button type="button" class="btn btn-xs btn-white" data-dismiss="modal">返回</button>
                    </a>
					<button type="submit" class="btn btn-xs btn-green">下一步</button>
				</div>
			</div>
		</div>
</form>

<script>
    $(function () {
        $('form').bootstrapValidator({
            fields: {
                type: {
                    validators: {
                        notEmpty: {
                            message: '请选择'
                        }


                    }
                }

            }
        });

    });

</script>

{/block}
