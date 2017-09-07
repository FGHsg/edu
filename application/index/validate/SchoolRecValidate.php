<?php
namespace app\index\validate;

use think\Validate;

class SchoolRecValidate extends Validate{
	protected $rule = [
		'school_id'  =>  'require|number',
		'sort'  =>  'number',
		'type' =>  'require|number|in:1,2',


	];
	protected $message  =   [
		'shool_id.require' => '院校必须',
		'sort.number'   => '排序为数字',
		'type.require'   => '位置必须',
		'type.number'   => '位置为数字',
	];
	protected $scene = [


	];

}