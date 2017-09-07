<?php

namespace app\common\model;

use think\Model;

class School extends Base {

    public function getStAttr($value) {
        $status = [0 => 'deleted', 1 => '正常'];
        return $status[$value];
    }
    public static function getListAll(){
        $where = ['st' => ['=',1]];
        $order = "create_time asc";
        $list_ = self::where($where)->order($order)->select();

        return $list_;
    }
    public static function getList($data=[],$field='*',$where=['st' => ['<>',0]]) {
       // $where = ['st' => ['<>',0]];
        $order = "create_time desc";
        if(!empty($data['title'])){
            $where['title'] = ['like','%'.$data['title'].'%'];
        }
        if(!empty($data['city'])){
            $where['city'] = ['like','%'.$data['city'].'%'];
        }
        if (!empty($data['paixu'])) {
            $order = $data['paixu'] . ' asc';
        }
        if (!empty($data['paixu']) && !empty($data['sort_type'])) {
            $order = $data['paixu'] . ' desc';
        }
        $list_ = self::where($where)->order($order)->field($field)->paginate();

        return $list_;
    }
    public static function getIndexList(){
        $where = ['st' => ['=',1]];
        $list_ = self::where($where)->order('create_time asc')->select();

        return $list_;
    }
    //wx

    public static function read($school_id){
        return self::getById($school_id,new self(),'id,title,img_big');
    }
}
