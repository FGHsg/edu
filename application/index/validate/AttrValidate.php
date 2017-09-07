<?php
namespace app\index\validate;

use think\Validate;

class AttrValidate extends Validate{
	protected $rule = [
		'name'  =>  'require',

		'input_type' =>  'require|in:1,2',


	];
	protected $message  =   [
		'name.require' => '名称必须',

		'input_type'   => '添加类型必须',


	];
	protected $scene = [
		//'goodnew'  =>  ['name','cate_id'],

	];

}