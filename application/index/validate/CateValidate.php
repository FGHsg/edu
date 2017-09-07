<?php
namespace app\index\validate;

use think\Validate;

class CateValidate extends Validate{
	protected $rule = [
		'title'  =>  'require',
		'type' =>  'require|number',


	];
	protected $message  =   [
		'title.require' => '名称必须',
		'type.require'   => '分类必须',


	];
	protected $scene = [
		//'goodnew'  =>  ['name','cate_id'],

	];

}