<?php

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
use think\Request;


class Index extends Common
{

    // 首页 入口
    public function index()
    {
        return $this->view->fetch();
    }

    /*     产品   products         */
    //todo 入口垫
    public function entrance_mats(){
        return $this->view->fetch('');
    }
    //todo 产品
    public function product_comparison(){
        return $this->view->fetch();
    }

    public function carpet_mats_info(){
        return $this->view->fetch();
    }

    /*    服务 services   */
    //todo 入口垫 服务
    public function entrance_mats_service(){
        return $this->view->fetch();
    }
    //todo 下载
    public function downloads(){
        return $this->view->fetch();
    }

    /*  news 新闻 */
    //todo 404 页面 后期可能去掉
    public function presse(){
        return $this->view->fetch();
    }
    /* company 公司  */
    //todo 关于我们
    public function emco_bau(){
        return $this->view->fetch();
    }
    //todo 专业知识
    public function expertise(){
        return $this->view->fetch();
    }
    /*todo career 原网站的招聘信息，等后期  */
    public function entrance_mats_range()
    {
        return $this->view->fetch();
    }

    public function zone_cleaning(){
        return $this->view->fetch();
    }

    public function entrance_mat_accessories(){
        return $this->view->fetch();
    }

    public function press_contact(){
        return $this->view->fetch();
    }
    //入口垫 2
    public function entrance_mats_2(){
        return $this->view->fetch();
    }

    public function cleaning_and_maintenance(){
        return $this->view->fetch();
    }



 /*todo 暂时完成  */

    //通讯联系 todo newsletter 订阅实时简报 , 后续页面提交未完成
    public function newsletter($email=""){
        $email =input('post.email');
        // halt($email);
        return $this->view->fetch('',['email'=>$email]);
    }
    //todo 游泳池栅格
    public function swimming(){
        return $this->view->fetch();
    }

   //todo 功能
    public function functions(){
        return $this->view->fetch();
    }
    //todo  产品查询
    public function product_enquiry(){
        return  $this->view->fetch();
    }
    //todo 实例探究 pdf 好像未完成
    public function case_studies(){
        return  $this->view->fetch();
    }
    //todo 更多开发人员信息
    public function building_contractors(){
        return $this->view->fetch();
    }
    //todo 家用垫信息
    public function emco_domestic_mats(){
       return $this->view->fetch();
    }

    //todo 清理系统  分页未解决
    public function clean_off_system(){
        //所有产品 关联图标
           $clean = Db::name('clear_t')->select();
        foreach($clean as $k =>$val){
            $clean[$k]['imgs']=Db::name('clear_image')->where('cid',$clean[$k]['id'])->field('img')->select();
        }
        $this->assign('clean',$clean);
        return $this->view->fetch();
    }

    //清理系统详情页 todo 待完成 差参考表 轮播图表
    public function clean_off_system_info(){
        $id = input('get.id');
        $clean  = Db::name('clear_t')->where('id',$id)->find();
        $clean['juan'] =explode(',',$clean['juan']);
        $clean['dian'] =explode(',',$clean['dian']);
        $clean['color'] =explode(',',$clean['color']);
        //对应的颜色
        $color  = Db::name('clear_color')->where('ltid',$id)->select();
        //轮博图
         $banner = Db::name('clear_banner')->where('cid',$id)->select();
         //饰品表
        $shiping =  Db::name('clear_shiping')->where('ltid',$id)->select();
        //参考表
       //$cankao = Db::name()->where()->select();
       //$this->assign();
       $this->assign('shiping',$shiping);
       $this->assign('color',$color);
       $this->assign('clean',$clean);
       return$this->view->fetch();
    }




    // site_map 地图
    public function site_map(){
        return $this->view->fetch();
    }
    public function senator_outdoor(){
      return $this->view->fetch();
    }
    // 自动门
    public function door_systems(){
        return $this->view->fetch();
    }

   //研究与开发
    public function research_and_development(){
        return $this->view->fetch();
    }

    //设计723
    public function emco_723_design(){
        return $this->view->fetch();
    }

    //现代化
    public function modernise(){
        return $this->view->fetch();
    }
    //积分
    public function credits(){
        return $this->view->fetch();
    }
    //服务 条款
    public function general_terms_and_conditions(){
        return $this->view->fetch();
    }
    //数据保护
    public function private_policy(){
        return $this->view->fetch();
    }
    //洗衣店
    public function commercial_laundries(){
        return   $this->view->fetch();
    }
    //贸易和工匠
    public function floor_fitters(){
        return $this->view->fetch();
    }

    public function entrance_and_design(){
        return $this->view->fetch();
    }
    //底部 ECOLINE®PIONEER
    public  function ecolinerpioneer()
    {
        return $this->view->fetch();
    }
    //触觉引导系统
    public function tactile_guidance_system(){
        return $this->view->fetch();
    }
    //清理系统
    public function clean_off(){
        return $this->view->fetch();
    }
    //建筑师和规划师
    public function architects(){
        return $this->view->fetch();
    }

    // 新闻页面
    public function events(){
        return $this->view->fetch();
    }

    public function inox(){
        return $this->view->fetch();
    }
    //  入口垫 总结
    public function entrance_summary(){
        return $this->view->fetch();
    }
    // contacts 往来
    public function contacts(){
        return $this->view->fetch();
    }
    // 订购信息材料
    public function order_infomaterial(){
        return $this->view->fetch();
    }
    // questions 经常遇到的问题
    public function questions(){
        return $this->view->fetch();
    }

    // 参考
    public function references(){
        $table= Db::name('anli_table');
        $anli = $table->field('id,img,title,heres,reinfo')->paginate(10);
        $this->assign('anli',$anli);
        return $this->view->fetch();
    }
    //参考详情
    public function schweinfurt(){
        $id = input('get.id');
        $table = Db::name('anli_table')->where('id',$id)->find();
        $tu = Db::name('aninfo')->where('a_id',$id)->select();
        $zhanshi = Db::name('zong')->where('a_id',$id)->select();
        $this->assign('tu',$tu);
        $this->assign('zhanshi',$zhanshi);
        $this->assign('table',$table);
       return  $this->view->fetch();
    }

    // downloads 下面的 brochures （小册子）
    public function brochures(){
        $dta =Db::name('brochures')->select();
        $this->assign('dta',$dta);
        return $this->view->fetch();
      }

    //contact 联系
    public function contact(){
        return $this->view->fetch();
    }

    // 地毯垫
    public function  carpet_mats(){
        //地毯垫
        $dtmats= $this->ditan();
        $this->assign('dtmats',$dtmats);
        return $this->view->fetch();
    }
    //地毯垫详情
    public function carpet_mats_info_list(){
        $id=input('get.id');
        $mats = $this->ditan($id);
        $banner=$this->banner_di($id);
        $color=$this->color_di($id);
        return $this->view->fetch('',
            [
                'banner'=>$banner,
                'color'=>$color,
                'mats'=>$mats,
            ]);
    }
    //联系 contact
    public function contact_commit(){
        $data['email'] = input('post.email');
        $data['address'] = input('post.address');
        $data['info'] = input('post.info');
        $data['tel'] = input('post.tel');
        $data['jibie'] = input('post.jibie');
        $data['xing'] = input('post.xing');
        $data['names'] = input('post.name');
        $data['street'] = input('post.street');
        $data['county'] = input('post.county');
        $data['number'] = input('post.number');
        $data['zip_code']=input('post.zip_code');
        $data['sex']=input('post.sex');
        $res = Db::name('contact')->insert($data);
       if($res){
             $this->result('',200,'ok','json');
       }else{
             $this->result('',401,'error','json');
       }
    }
    //menu 联系
    public  function menu_commit(){
        $data['names']= input('post.names');
        $data['tel'] =input('post.tel');
        $data['email']=input('post.email');
        $data['info']=input('post.info');
        $res = Db::name('contact')->insert($data);
        if($res){
            $this->result('',200,'ok','json');
        }else{
            $this->result('',401,'error','json');
        }
    }
    //订购材料联系
    public function order_contact(Request $request)
     {
         $order = $request->post();
         //halt($order);
         if (!empty($order)) {
             $result = Db::name('order_contact')->data($order)->insert();
             if ($result) {
                 $this->result('', 200, 'ok', 'json');
             } else {
                 $this->result('', 401, 'error', 'json');
             }
         } else {
           return $this->error('数据提交错误！');
         }
     }

}