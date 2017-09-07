<?php

namespace app\index\controller;

use app\common\model\Article;
use app\common\model\Base;
use app\common\model\CateArticle;

use app\index\validate\ArticleValidate;
use think\Request;


class CateArticleController extends BaseController {
    /**
     * 显示资源列表
     *.
     * @return \think\Response
     */
    public function index(Request $request) {
        $data = $request->param();
        $list_ = CateArticle::getList($data);
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

        return $this->fetch('', ['title'=>'添加资讯分类','act'=>'save']);

    }

    /**
     * 保存新建的资源
     *
     * @param  \think\Request $request
     * @return \think\Response
     */
    public function save(Request $request) {
        $data = $request->param();
        $res = $this->validate($data, 'CateArticleValidate');
        if ($res !== true) {
            $this->error($res);
        }
        $CateArticle = new CateArticle();
        $CateArticle->save($data);
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
        $row_ = $this->findById($data['id'],new CateArticle());
        $referer = $request->header()['referer'];
        return $this->fetch('',['row_'=>$row_,'title'=>'修改资讯分类 '.$row_->name,'act'=>'update','referer'=>$referer]);
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
        $res = $this->validate($data, 'CateArticleValidate');
        if ($res !== true) {
            $this->error($res);
        }

        if($this->saveById($data['id'],new CateArticle(),$data)){

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
        $list_article = Article::getListByCateId($data['id']);
        if($list_article===true){
            $this->error('分类下有资讯，请先删除资讯');
        }
        if( $this->deleteStatusById($data['id'],new CateArticle())){
            $this->success('删除成功', $data['url'], '', 1);
        }else{
            $this->error('删除失败', $data['url'], '', 3);
        }
    }


}
