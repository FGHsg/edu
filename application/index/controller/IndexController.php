<?php

namespace app\index\controller;

use think\Request;
use app\common\model\User;
use app\common\model\AdminLog;
class IndexController extends BaseController
{
   public function index(Request $request){
        $list_ = AdminLog::getLogs();
        return $this->fetch('index',['list_'=>$list_]);
   }
}
