<?php

namespace app\index\controller;

use app\common\model\Attr;
use app\common\model\Base;
use app\common\model\Cate;

use think\Request;

class AttrController extends BaseController {
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request) {
        $data = $request->param();
        $rule = ['type_id' => 'number'];
        $res = $this->validate($data, $rule);

        if ($res !== true) {
            $this->error($res);
        }
        $list_ = Attr::getList($data);
        $page_str = $list_->render();
        $page_str = Base::getPageStr($data,$page_str);
       // dump($page_str);
        $url = $request->url();
        return $this->fetch('index', ['list_' => $list_,'page_str'=>$page_str,'url'=>$url]);
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create() {

        return $this->fetch('', ['title'=>'添加资料参数','act'=>'save']);

    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request $request
     * @return \think\Response
     */
    public function save(Request $request) {
      // dump($request->param());exit;
        $data = $request->param();
        $res = $this->validate($data, 'AttrValidate');
        if ($res !== true) {
            $this->error($res);
        }
        if($data['input_type']==Attr::TYPE_SELECT){
            unset($data['default_value']);
            if(empty($data['values'])){
                $this->error('请至少添加一个下拉可选值');
            }

        }elseif($data['input_type']==Attr::TYPE_INPUT){
           $data['values'] =  $data['default_value'];
           unset($data['default_value']);
        }else{
            $this->error('类型参数有误');
        }

        $Attr = new Attr();
        $Attr->save($data);
        $this->success('添加成功', 'index', '', 1);
    }


    /**
     * 显示编辑资源表单页.
     *
     * @param  int $id
     * @return \think\Response
     */
    public function edit(Request $request) {
//        return 23;
        $data = $request->param();
        $referer = $request->header()['referer'];
        $row_ = $this->findById($data['id'],new Attr());
//        dump($row_);exit;
        return $this->fetch('',['row_'=>$row_,'referer'=>$referer,'act'=>'update','title'=>'修改资料参数'.$row_->name]);
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
        $referer = $data['referer'];unset($data['referer']);
        $res = $this->validate($data, 'AttrValidate');
        if ($res !== true) {
            $this->error($res);
        }
        if($data['input_type']==Attr::TYPE_SELECT){
            unset($data['default_value']);
            if(empty($data['values'])){
                $this->error('请至少添加一个下拉可选值');
            }

        }elseif($data['input_type']==Attr::TYPE_INPUT){
            $data['values'] =  $data['default_value'];
            unset($data['default_value']);
        }else{
            $this->error('类型参数有误');
        }
        if($this->saveById($data['id'],new Attr(),$data)){

            $this->success('编辑成功', $referer, '', 1);
        }else{
            $this->error('编辑失败', $referer, '', 3);
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
            $this->success('删除成功', $data['url'], '', 1);
        }else{
            $this->error('删除失败',  $data['url'], '', 3);
        }
    }


}
