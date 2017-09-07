<?php

namespace app\index\controller;

use app\common\model\GoodNew;

use app\common\model\Cate;

use think\Request;


class GoodNewController extends BaseController {
    /**
     * 显示资源列表
     *
     * @return \think\Response
     */
    public function index(Request $request) {
        $data = $request->param();
        $rule = ['cate_id' => 'number'];
        $res = $this->validate($data, $rule);
        if ($res !== true) {
            $this->error($res);
        }
        $m_ = new GoodNew();
        $list_ = $m_->getList($data);
        $page = $list_->currentPage();
        $page_str = $list_->render();
        if(!empty($data['cate_id'])){//guoshu/public/ad/index.html?page=2&position=1
            $page_str = preg_replace("/(page=)/im", "cate_id=".$data['cate_id'].'&page=', $page_str);
        }
        if(!empty($data['name'])){
            $page_str = preg_replace("/(page=)/im", "name=".$data['name'].'&page=', $page_str);
        }
        $list_cate = Cate::getListNormal(['type' => Cate::TYPE_NEW]);
        return $this->fetch('index', ['list_' => $list_, 'list_cate' => $list_cate,'page'=>$page,'page_str'=>$page_str]);
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create() {

        $list_cate = Cate::getListNormal(['type' => Cate::TYPE_NEW]);


        return $this->fetch('', ['list_cate' => $list_cate]);

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
        $res = $this->validate($data, 'GoodValidate.goodnew');
        if ($res !== true) {
            $this->error($res);
        }
        $file = $request->file('img_top');
        $file2 = $request->file('img_bottom');
        $file3 = $request->file('img_bottom_mobile');

        if (empty($file) || empty($file2) || empty($file3)) {
            $this->error('请上传图片或检查图片大小！');
        }
        $size = $file->getSize();
        $size2 = $file2->getSize();
        $size3 = $file3->getSize();
        if ($size > config('upload_size') || $size2 > config('upload_size') ||$size3 > config('upload_size')) {
            $this->error('图片大小超过限定！');
        }

        $path_name = 'good_new';
        $arr = $this->dealImg($file, $path_name);
        $arr2 = $this->dealImg($file2, $path_name);
        $arr3 = $this->dealImg($file3, $path_name);
        $data['img_top'] = $arr['save_url_path'];
        $data['img_bottom'] = $arr2['save_url_path'];
        $data['img_bottom_mobile'] = $arr3['save_url_path'];
        $GoodNew = new GoodNew();
        $GoodNew->save($data);
        $this->success('添加成功', 'index', '', 1);
    }

    /**
     * 显示编辑资源表单页.
     *
     * @param  int $id
     * @return \think\Response
     */
    public function edit(Request $request) {
        $data = $request->param();
        $row_ = $this->findById($data['id'],new GoodNew());
        $list_cate = Cate::getListNormal(['type' => Cate::TYPE_NEW]);
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
        //dump($request->param());exit;
        $data = $request->param();
        $page = $data['page'];unset($data['page']);
        $res = $this->validate($data, 'GoodValidate.goodnew');
        if ($res !== true) {
            $this->error($res);
        }
        $file = $request->file('img_top');
        $file2 = $request->file('img_bottom');
        $file3 = $request->file('img_bottom_mobile');
        $row_ = $this->findById($data['id'],new GoodNew());
        $path_name = 'good_new';
        if(!empty($file)){
            $size = $file->getSize();
            if ($size > config('upload_size') ) {
                $this->error('图片大小超过限定！');
            }
            $this->deleteImg($row_->img_top);
            $arr = $this->dealImg($file, $path_name);
            $data['img_top'] = $arr['save_url_path'];
        }
        if(!empty($file2)){
            $size = $file2->getSize();
            if ($size > config('upload_size') ) {
                $this->error('图片大小超过限定！');
            }
            $this->deleteImg($row_->img_bottom);
            $arr = $this->dealImg($file2, $path_name);
            $data['img_bottom'] = $arr['save_url_path'];
        }
        if(!empty($file3)){
            $size = $file3->getSize();
            if ($size > config('upload_size') ) {
                $this->error('图片大小超过限定！');
            }
            $this->deleteImg($row_->img_bottom_mobile);
            $arr = $this->dealImg($file3, $path_name);
            $data['img_bottom_mobile'] = $arr['save_url_path'];
        }
       // dump($data);exit;
        if($this->saveById($data['id'],new GoodNew(),$data)){

            $this->success('编辑成功', 'index?page='.$page, '', 1);
        }else{
            $this->error('编辑失败', 'index?page='.$page, '', 1);
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

        if( $this->deleteStatusById($data['id'],new GoodNew())){
            $this->success('删除成功', 'index?page='.$data['page'], '', 1);
        }else{
            $this->error('删除失败', 'index?page='.$data['page'], '', 3);
        }
    }


}
