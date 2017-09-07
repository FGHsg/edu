{extend name='public:base' /}
{block name="title"}{$title}{/block}

{block name="content"}
<style>
    .control-label{
        padding-right:10px;
    }
</style>
	<!--弹出添加用户窗口--><form class="form-horizontal" action="{:url($act)}" method="post" enctype="multipart/form-data" >
    <input type="hidden" name="id" value="{$row_->id}">
    <input type="hidden" name="referer" value="{$referer}">
		<div class="row" >
			<div class="col-xs-8">
				<div class="text-center">
					<h4 class="modal-title" id="gridSystemModalLabel">{$title}</h4>
				</div>
				<div class="">
                    <div class="container-fluid">
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>院校：</label>
                            <div class="col-xs-8">
                                <select class=" form-control select-duiqi" name="school_id" id="">
                                    <?php foreach ($list_school as $row_s) { ?>
                                        <option value="{$row_s['id']}" <?php echo $row_s->id==$row_->school_id?'selected':''?>>{$row_s['title']}</option>
                                    <?php } ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>推荐位置：</label>
                            <div class="col-xs-8">
                                <label class="control-label" >
                                    <input type="radio" name="type" class="index_show yes" <?php echo $row_->type=='区块上部'?'checked':''?> id="rec_1" value="1"  >区块上部</label> &nbsp;
                                <label class="control-label">
                                    <input type="radio" name="type" class="index_show no" id="rec_2" <?php echo $row_->type=='区块下部'?'checked':''?>  value="2"> 区块下部</label>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="sOrd" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>推荐图：</label>
                            <div class="col-xs-4 ">
                                <img src="__IMGURL__{$row_->img}" alt="没有上传图片" width="88"/>
                                <input type="file" title='' class="form-control  duiqi" id="sOrd" name="img" placeholder=""><span style="color:red">尺寸要求（<span id="size_rec">350*240</span>），大小不超过<?php echo floor(config('upload_size')/1024/1024);?>M。不选择表示不修改。</span>
                            </div>

                        </div>

                        <div class="form-group" id="diliver_fee_wrap" style=";">
                            <label for="situation" class="col-xs-3 control-label">排序：</label>
                            <div class="col-xs-8">
                                <label class="control-label">
                                    <input type="number" name="sort" class="form-control input-sm duiqi" id=""
                                           value="{$row_->sort}"></label> &nbsp;

                            </div>
                        </div>

                    </div>
				<div class="text-center">
                    <a href="javascript:history.back()"><button type="button" class="btn btn-xs btn-white" data-dismiss="modal">返回列表 </button></a>
					<button type="submit" class="btn btn-xs btn-green">保 存</button>
				</div>
			</div>
		</div>
</form>

<script>
    $('#rec_2').click(function () {
        $('#size_rec').html('300*300');
    });
    $('#rec_1').click(function () {
        $('#size_rec').html('350*240');
    });
    if('{$row_->type}'=='区块上部'){
        $('#size_rec').html('350*240');
    }else{
        $('#size_rec').html('300*300');
    }

    $(function () {
        $('form').bootstrapValidator({
            fields: {
                school_id: {
                    validators:
                        {
                            notEmpty: {
                                message: '不能为空'
                            }
                        }

                },


            }
        });

    });
</script>

{/block}
