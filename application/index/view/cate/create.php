{extend name='public:base' /}
{block name="title"}{$title}{/block}
{block name="content"}
<style>
    .control-label {
        padding-right: 10px;
    }
</style>
<script src="__EDITOR__/kindeditor.js"></script>
<script src="__EDITOR__/lang/zh_CN.js"></script>
<script>
    KindEditor.ready(function (K) {
        // var editor = K.create('#desc_textarea');
        var editor = K.create('textarea[name="desc"]',{
            themeType: 'simple',
            resizeType: 1,
            uploadJson: '__EDITOR__/php/upload_json.php',
            fileManagerJson: '__EDITOR__/php/file_manager_json.php',
            allowFileManager: true,
            //下面这行代码就是关键的所在，当失去焦点时执行 this.sync();
            afterBlur: function(){this.sync();}
        });

    });

</script>
<!--弹出添加用户窗口-->
<form class="form-horizontal" action="{:url($act)}" method="post" >
    <?php if($act=='update'){?>
    <input type="hidden" name="id" value="{$row_->id}">
    <input type="hidden" name="referer" value="{$referer}">
<?php }?>
    <div class="row">
        <div class="col-xs-8">
            <div class="text-center">
                <!---->
                <h4 class="modal-title" id="gridSystemModalLabel">{$title}</h4>
            </div>
            <div class="">
                <div class="container-fluid">
                    <div class="form-group ">
                        <label for="sName" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>类型：</label>
                        <div class="col-xs-8 ">
                            <?php if($act=='save'){?>
                            <label class="control-label" >
                                <input type="radio" name="type" id="" value="1" checked >图书</label> &nbsp;
                            <label class="control-label">
                                <input type="radio" name="type" id="" value="2" >真题</label>
                            <?php }else{?>
                                <label class="control-label" >
                                    <input type="radio" name="type" id="" value="1" <?php echo $row_->type=='图书'?'checked':''?> >图书</label> &nbsp;
                                <label class="control-label">
                                    <input type="radio" name="type" id="" value="2" <?php echo $row_->type=='真题'?'checked':''?>>真题</label>
                            <?php }?>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sKnot" class="col-xs-3 control-label"><span style="color:red;">*&nbsp;&nbsp;</span>名称：</label>
                        <div class="col-xs-8 ">
                            <input type="text" class="form-control input-sm duiqi" name='title' value="{$row_->title|default=''}" id=""
                                   placeholder="">
                        </div>
                    </div>
                    <div class="form-group" id="diliver_fee_wrap" style=";">
                        <label for="situation" class="col-xs-3 control-label">排序：</label>
                        <div class="col-xs-8">
                            <label class="control-label">
                                <input type="number" name="sort" class="form-control input-sm duiqi" id=""
                                       value="{$row_->sort|default=0}"></label> &nbsp;

                        </div>
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
                title: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }

                },
                type: {
                    validators: {
                        notEmpty: {
                            message: '不能为空'
                        }
                    }

                }
            }
        });

    });

</script>

{/block}
