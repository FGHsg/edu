<?php

namespace app\common\model;

use think\Model;

class Cate extends model {
    const TYPE_BOOK = 1;//
    const TYPE_EXAM = 2;   //
    public static $type_cate = [
        0 => [
            'type_id' => 1,
            'title' => '图书',
        ],
        1 => [
            'type_id' => 2,
            'title' => '真题',
        ]
    ];

    public function getStAttr($value) {
        $status = [0 => 'deleted', 1 => '正常'];
        return $status[$value];
    }

    public function getTypeAttr($value) {
        $status = [1 => '图书', 2 => '真题'];
        return $status[$value];
    }
    public  static  function getTypeIdAttr($value) {
        $status = ['图书' => 1, '真题'=>2  ];
        return $status[$value];
    }

    public static function getList($data=[],$field='*',$where=['st' => ['<>', 0]]) {
//        $where = ['st' => ['<>', 0]];
        $order = "create_time desc";
        if (!empty($data['type_id'])) {
            $where['type'] = $data['type_id'];
        }
        if (!empty($data['title'])) {
            $where['title'] = ['like', '%' . $data['title'] . '%'];
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

    public static function getAllCateByType($type) {
        $where = ['st' => ['<>', 0],'type'=>$type];
        $order = "create_time desc";
        $list_ = self::where($where)->order($order)->select();

        return $list_;
    }


}
