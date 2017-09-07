<?php
namespace app\index\validate;

use think\Validate;

class CateArticleValidate extends Validate{
	protected $rule = [
		'name'  =>  'require',
		'sort' =>  'number',


	];
	protected $message  =   [
		'name.require' => '名称必须',
		'sort.number'   => '排序为数字',


	];
	protected $scene = [
		//'goodnew'  =>  ['name','cate_id'],

	];

}