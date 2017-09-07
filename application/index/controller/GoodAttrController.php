<?php

namespace app\index\controller;

use app\common\model\Attr;
use app\common\model\GoodAttr;
use app\common\model\Cate;

use app\common\model\Good;
use think\Request;


class GoodAttrController extends BaseController {
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request) {

    }

    /**
     * 添加属性
     *
     * @return \think\Response
     */
    public function create(Request $request) {
        $data = $request->param();
        $referer = $request->header()['referer'];
        $row_good = $this->findById($data['good_id'],new Good());

        return $this->fetch('', ['row_good'=>$row_good,'referer'=>$referer]);
    }
    public function create2(Request $request) {
        $data = $request->param();
        $rule = ['type','require|number','good_id'=>'require|number'];
        $res = $this->validate($data, $rule);
        if ($res !== true) {
            $this->error($res);
        }
        $row_good = $this->findById($data['good_id'],new Good());
        $list_attr = Attr::getListByCateId($data);
        $list_good_attr = (new GoodAttr)->getGoodAttr($data['good_id']);
        //dump($list_good_attr);exit;
        foreach($list_attr as $k=>$attr){
            if($attr->input_type=='下拉添加'){
                $list_attr[$k]['values'] = explode(',',$attr->values);
            }
        }
        //dump($list_attr);exit;
        return $this->fetch('create2', ['list_attr' => $list_attr,'list_good_attr'=>$list_good_attr,'row_good'=>$row_good,'referer'=>$data['referer']]);
    }
    /**
     * 保存新建的资源
     *
     * @param  \think\Request $request
     * @return \think\Response
     */
    public function save(Request $request) {
      //dump($request->param());exit;
        $data = $request->param();
        $referer = $data['referer'];unset($data['referer']);
        $rule = ['attr_value'=>'require|array','good_id'=>'require|number'];
        $res = $this->validate($data, $rule);
        if ($res !== true) {
            $this->error($res);
        }

        $m_good_attr = new GoodAttr();
        if($m_good_attr->saveGoodAttr($data)){
            $this->success('添加成功', $referer, '', 1);
        }else{
            $this->success('添加失败', $referer, '', 3);
        }
    }


    /**
     * 显示编辑资源表单页.
     *
     * @param  int $id
     * @return \think\Response
     */
    public function edit(Request $request) {
        $data = $request->param();
        $row_ = $this->findById($data['id'],new Attr());
        $list_cate = Cate::getListNormal(['type' => Cate::TYPE_PRODUCT]);
        return $this->fetch('',['row_'=>$row_,'list_cate'=>$list_cate,'page'=>$data['page']]);
    }

    /**
     * 保存更新的资源
     *
     * @param  \think\Request $request
     * @param  int $id
     * @return \think\Response
     */
    public function update(Request $request) {
        $data = $request->param();
        $page = $data['page'];unset($data['page']);
        $res = $this->validate($data, 'AttrValidate');
        if ($res !== true) {
            $this->error($res);
        }
        if($data['type']==Attr::TYPE_SELECT){
            unset($data['default_value']);
            if(empty($data['values'])){
                $this->error('请至少添加一个下拉可选值');
            }

        }elseif($data['type']==Attr::TYPE_INPUT){
            $data['values'] =  $data['default_value'];
            unset($data['default_value']);
        }else{
            $this->error('类型参数有误');
        }
        if($this->saveById($data['id'],new Attr(),$data)){

            $this->success('编辑成功', 'index?page='.$page, '', 1);
        }else{
            $this->error('编辑失败', 'index?page='.$page, '', 3);
        }
    }

    /**
     * soft-delete 指定资源
     *
     * @param  int $id
     * @return \think\Response
     */
    public function delete(Request $request) {
        $data = $request->param();
        if( $this->deleteStatusById($data['id'],new Attr())){
            $this->success('删除成功', 'index?page='.$data['page'], '', 1);
        }else{
            $this->error('删除失败', 'index?page='.$data['page'], '', 3);
        }
    }


}
