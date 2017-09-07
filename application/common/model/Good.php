<?php

namespace app\common\model;

use think\Model;
use app\common\model\GoodAttr;

class Good extends Base {

    public function getStAttr($value) {
        $status = [0 => 'deleted', 1 => '正常', 2 => '不显示'];
        return $status[$value];
    }


    public function getTypeAttr($value) {
        $status = [1 => '图书', 2 => '真题'];
        return $status[$value];
    }
    public function getIndexShowAttr($value) {
        $status = [0 => '否', 1 => '是'];
        return $status[$value];
    }
    public function updateAddAttr($good_id){
        $row_good = $this->where(['id'=>$good_id])->find();
        $row_good->is_add_attr =1 ;
        $row_good->save();

    }
    public static function getListByCateId($cate_id){
        $row_ = self::where(['cate_id'=>$cate_id,'st'=>1])->find();
        if($row_){
            return true;
        }
        return false;
    }
    public static function getListBySchoolId($school_id){
        $row_ = self::where(['school_id'=>$school_id,'st'=>1])->find();
        if($row_){
            return true;
        }
        return false;
    }
    public static function getList($data=[],$field='good.*,cate.title cate_name',$where=['good.st' => ['<>', 0]]) {
        //$where = ['good.st' => ['<>', 0], 'cate.st' => ['<>', 0]];
        $order = "create_time desc";
        if (!empty($data['type_id'])) {
            $where['good.type'] = $data['type_id'];
        }
        if (!empty($data['cate_id'])) {
            $where['cate_id'] = $data['cate_id'];
        }
        if (!empty($data['school_id'])) {
            $where['school_id'] = $data['school_id'];
        }
        if (!empty($data['title'])) {
            $where['good.title'] = ['like','%'.$data['title'].'%'];
        }
        if(!empty($data['index_show'])){
            $where['index_show'] = $data['index_show'];
        }
        if (!empty($data['paixu'])) {
            $order = 'good.'.$data['paixu'] . ' asc';
        }
        if (!empty($data['paixu']) && !empty($data['sort_type'])) {
            $order = 'good.'.$data['paixu'] . ' desc';
        }
        $list_ = self::where($where)->join('cate', 'good.cate_id=cate.id', 'left')->field($field)->order($order)->paginate();

        return $list_;
    }

    //wx
    public static function getBookRec(){
        $list_ = self::where(['type'=>1,'index_show'=>1,'st'=>1])->field('id,img,title,price')->limit(5)->order('sort asc')->select();
        return $list_;
    }
    //wx
    public static function read($good_id){
        return self::getById($good_id,new self());
    }
    //wx
    public static function updateStore($order_id){
        $list_order_good = OrderGood::getGood($order_id);
        foreach($list_order_good as $item){
            $row_good = Good::read($item->good_id);
            $row_good->store = $row_good->store - $item->nums;
            $row_good->sales = $row_good->sales + $item->nums;
            $row_good->save();
        }
    }
}
