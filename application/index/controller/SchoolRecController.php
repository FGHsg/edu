<?php

namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Base;
use app\common\model\Good;
use app\common\model\School;
use app\common\model\SchoolRec;
use app\common\model\Cate;

use app\index\validate\SchoolRecValidate;
use think\Request;


class SchoolRecController extends BaseController {
    /**
     * 显示资源列表
     *.
     * 0
     * @return \think\Response
     */
    public function index(Request $request) {
        $data = $request->param();
        $list_ = SchoolRec::getList($data);
        $page_str = $list_->render();
        $page_str = Base::getPageStr($data,$page_str);
        $url = $request->url();

        return $this->fetch('index', ['list_' => $list_,'url'=>$url,'page_str'=>$page_str]);
    }

    /**
     * 显示创建资源表单页.
     *
     * @return \think\Response
     */
    public function create() {
        $count_ = count(SchoolRec::getList());
        if($count_>=5){
$this->error('最多添加5个院校推荐');
        }
        $list_school= School::getListAll();
        return $this->fetch('', ['title'=>'添加院校推荐','act'=>'save','list_school'=> $list_school]);

    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request $request
     * @return \think\Response
     */
    public function save(Request $request) {
        $data = $request->param();
       // dump($data);exit;
        $res = $this->validate($data, 'SchoolRecValidate');
        if ($res !== true) {
            $this->error($res);
        }
        $file = $request->file('img');
        if (empty($file)) {
            $this->error('请上传图片或检查图片大小！');
        }
        $size = $file->getSize();
        if ($size > config('upload_size')) {
            $this->error('图片大小超过限定！');
        }

        $path_name = 'school_rec';
        $arr = $this->dealImg($file, $path_name);
        $data['img'] = $arr['save_url_path'];
        $SchoolRec = new SchoolRec();
        $SchoolRec->save($data);
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
        $row_ = $this->findById($data['id'],new SchoolRec());
        $list_school= School::getListAll();
        $referer = $request->header()['referer'];
        return $this->fetch('',['row_'=>$row_,'list_school'=>$list_school,'title'=>'修改院校推荐','act'=>'update','referer'=>$referer]);
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
        $res = $this->validate($data, 'SchoolRecValidate');
        if ($res !== true) {
            $this->error($res);
        }
        $row_ = $this->findById($data['id'],new SchoolRec());

        $file = $request->file('img');
        $path_name = 'school_rec';
        if(!empty($file)){
            $size = $file->getSize();
            if ($size > config('upload_size') ) {
                $this->error('图片大小超过限定！');
            }
            $this->deleteImg($row_->img);
            $arr = $this->dealImg($file, $path_name);
            $data['img'] = $arr['save_url_path'];
        }
        if($this->saveById($data['id'],new SchoolRec(),$data)){

            $this->success('编辑成功', $referer, '', 1);
        }else{
            $this->error('没有修改内容', $referer, '', 1);
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

        if( $this->deleteStatusById($data['id'],new SchoolRec())){
            $this->success('删除成功', $data['url'], '', 1);
        }else{
            $this->error('删除失败', $data['url'], '', 3);
        }
    }


}
