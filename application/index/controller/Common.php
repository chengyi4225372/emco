<?php

namespace app\index\controller;

use think\Controller;
use service\FileService;
use think\Db;

class Common extends Controller {

//    protected $where = array('status' => 1, 'is_deleted' => 0);
    public $member = 'store_member';
    public $buy = 'store_buy';
    public $tmall = 'store_tmall';
    public $platform = 'store_platform';
    public $cate = 'store_cate';
    public $district = 'store_district';
    public $consultant = 'system_user';
    public $news_cate = 'news_cate';
    public $article = 'news_article';
    public $interview = 'news_interview';
    public $user = 'system_user';
    public $banner = 'banner';
    public $problem_cate = 'problem_cate';
    public $news_problem = 'news_problem';
    public $page = 'single_page';
    public $problem = 'news_problem';
    
    public function initialize() {
       //菜单栏
        $lists = Db::name('list')->select();
        $this->assign('lists',$lists);
        //合作伙伴
        $partners = Db::name('partner')->select();
        $this->assign('partners',$partners);
        //底部管我们
        /*
        $gywms = Db::name('banner')->where('status',2)->select();
        $this->assign('gywms',$gywms);
        $helps = Db::name('banner')->where('status',3)->select();
        $this->assign('helps',$helps);
        $articles = Db::name('new')->order('id desc')->limit(5)->select();
        $this->assign('articles',$articles);
        */
        //产品类别
        $protucts= Db::name('protucts')->select();
        $this->assign('protucts',$protucts);
        //地点类别
        $heres= Db::name('heres')->select();
        $this->assign('heres',$heres);
        //国际类别
        $county= Db::name('county')->select();
        $this->assign('county',$county);
        //咨询专家类别
        $zhuan = Db::name('zhuan')->select();
        $this->assign('zhuan',$zhuan);
        //高度
        $heights = Db::name('heights')->select();
        $this->assign('heights',$heights);
        //游泳池运行档案
        $swing_dang = Db::name('swingdang')->select();
        $this->assign('swing_dang',$swing_dang);
        //游泳池产品类别
        $swings = Db::name('swingcates')->select();
        $this->assign('swings',$swings);
        //翻车类别
        $fanche =Db::name('fanche')->select();
        $this->assign('fanche',$fanche);
        //脚步声
        $holder =Db::name('foots')->select();
        $this->assign('holder',$holder);
        //清理类别
        $clean = Db::name('clear_title')->select();
        $this->assign('clean',$clean);
        //入口垫系统类别名称
        $mats_cates = Db::name('mats_cates')->order('id asc')->select();
        $this->assign('mats_cates',$mats_cates);
        //入口垫产品类别
        $mats_pro = Db::name('mats_pro')->order('id asc')->select();
        $this->assign('mats_pro',$mats_pro);
        //文件下载类型
        $downloads = Db::name('down_title')->select();
        $this->assign('downloads',$downloads);
        //底部管理
        $chanping = Db::name('foot_url')->where('fid',1)->select();
        $guke = Db::name('foot_url')->where('fid',2)->select();
        $kuaisu = Db::name('foot_url')->where('fid',3)->select();
        $this->assign('chanping',$chanping);
        $this->assign('guke',$guke);
        $this->assign('kuaisu',$kuaisu);
    }

    //地毯垫 颜色
    public function color_di($id){
        if($id<=0){
            return false;
        }else{
            $datas=Db::name('dt_color')->where('did',$id)->select();
        }
        return $datas?$datas:'';
    }

    //地毯垫 展示图
    public  function banner_di($id){
        if($id<=0){
            return false;
        }else{
            $datas=Db::name('dt_banner')->where('did',$id)->select();
        }
        return $datas?$datas:'';
    }


    //地毯垫公用函数
    public function ditan($id=0){
        if($id<0||empty($id)){
            $arr = Db::name('dt_dian')->select();
        }else{
            $arr = Db::name('dt_dian')->where('id',$id)->find();
        }
        return $arr;
    }




}
