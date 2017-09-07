<?php

namespace app\gshpc\controller;

use app\common\model\Ad;
use app\common\model\Recruit;
use app\common\model\SeoSet;
use think\Request;
class AboutController extends BaseController
{
    private static $rowBanner;
    public function _initialize() {
        parent::_initialize(); // TODO: Change the autogenerated stub
        //ad about_us
        self::$rowBanner = Ad::getAdByPosition(8);

      $this->assign(['row_banner'=>self::$rowBanner]);
    }
    public function index(){
        $seo = SeoSet::getSeoByNavId(2);
        return $this->fetch('',['seo'=>$seo]);
   }
    public function  idea(){
        $seo = SeoSet::getSeoByNavId(3);
        $row_ad = Ad::getAdByPosition(9);
        return $this->fetch('',['seo'=>$seo,'row_ad'=>$row_ad]);
    }
    public function  develop(){
        $seo = SeoSet::getSeoByNavId(4);
        $row_ad_develop = Ad::getAdByPosition(12);

        return $this->fetch('',['row_ad'=>$row_ad_develop,'seo'=>$seo]);
    }
    public function recruit(Request $request){
        $seo = SeoSet::getSeoByNavId(5);
        $id = $request->param('id');
        $list_recruit = Recruit::getHomeList();
        $row_recruit = $list_recruit[0];
        if($id){
            $row_recruit = $this->findById($id,new Recruit());
        }
        //$this->assign('row_',$row_);
        return $this->fetch('',['list_recruit'=>$list_recruit,'row_recruit'=>$row_recruit,'seo'=>$seo]);
    }



}