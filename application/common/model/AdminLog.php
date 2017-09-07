<?php

namespace app\common\model;
use think\Model;

class AdminLog extends model{
	public static function getLogs(){
	    $list_ = self::where('')->alias('al')->order('create_time desc')->join('admin','al.admin_id=admin.id')->field('admin.name admin_name,al.*')->paginate();
	    return $list_;
    }
    public function addLog($admin_id,$last_ip){
        $data = [
            'admin_id'=>$admin_id,
            'last_ip'=>$last_ip,

        ];
        return $this->save($data);
    }
}
