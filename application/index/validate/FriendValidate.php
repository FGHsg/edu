<?php
namespace app\index\validate;

use think\Validate;

class FriendValidate extends Validate{
	protected $rule = [

		'url' =>  'url',



	];
	protected $message  =   [

		'url'   => '链接不合法',


	];
	protected $scene = [
		//'goodnew'  =>  ['name','cate_id'],

	];

}