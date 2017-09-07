<?php
namespace app\index\validate;

use think\Validate;

class SchoolValidate extends Validate{
	protected $rule = [
		'title'  =>  'require',
		'lishu'  =>  'require',
		'city' =>  'require',


	];
	protected $message  =   [
		'title.require' => '校名必须',
		'lishu.require'   => '隶属必须',
		'city.require'   => '城市必须',


	];
	protected $scene = [


	];

}