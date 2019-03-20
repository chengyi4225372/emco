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

    //404 页面
    public function x_treme(){
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
    /* company 公司  */

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

    //todo  产品查询
    public function product_enquiry(){
        return  $this->view->fetch();
    }

    //todo 产品对比 后期删掉招标文本text 这个字段
    public function product_comparison(){
           //区分 1室外 2 室内
          $id = input('post.cid');
          //dump($id);
          //查询产品标题
         // $ptitle =Db::name()->where()->select();
          return $this->view->fetch();
    }


    //todo 入口垫  此处需要关联入口垫系统类别 后台设置的时候
    public function entrance_mats(){
         //2级产品分类标题 关联一级分类 标题
        $mats_two =Db::name('mats_two')
                    ->alias('a')
                    ->field('a.*,b.title as ptitle')
                    ->leftJoin('mats_pro b','a.pid = b.id')
                    ->paginate(15);
          //展示分页
           $page = $mats_two->render();
           //对象转数组 分割图标
           $mats_two = $mats_two->toArray();
           foreach ($mats_two['data'] as $k =>$val){
               $mats_two['data'][$k]['tubiao'] = explode('|', $mats_two['data'][$k]['tubiao']);
               //三级分类下 有多少产品
               $mats_two['data'][$k]['count'] = Db::name('mats_info')->where('pid',$mats_two['data'][$k]['id'])->count();
               //三级分类下第一个产品
               $mats_two['data'][$k]['three_id']  = Db::name('mats_info')->where('pid',$mats_two['data'][$k]['id'])->order('id asc')->limit(1)->value('id');
           }
           $this->assign('mats_two',$mats_two['data']);
           $this->assign('page',$page);
           return $this->view->fetch();
    }

    //todo 入口垫详情页面  待完成 已经抓取页面
    public function entrance_mats_info(){
         //获取二级id 找到关联二级的三级第一个 进去
          $pid = input('get.pid');//二级id
          $id = input('get.id'); //三级第一个产品
          $mats_info = Db::name('mats_info')->where('id',$id)->find();
          $mats_cates =  Db::name('mats_info')->where('pid',$pid)->select();
          $mats_info['fanche'] = explode(',', $mats_info['fanche']);
          $mats_info['color'] = explode(',', $mats_info['color']);
          $mats_info['fuwu'] = explode(',', $mats_info['fuwu']);
          $mats_info['tubiao'] = explode('|', $mats_info['tubiao']);
          //三级产品颜色
         $color = Db::name('mats_color')->where('mid',$id)->select();
          //三级产品饰品
         $shiping = Db::name('mats_ship')->where('mid',$id)->select();
          //三级产品参考
         $ress = Db::name('mats_ress')->where('mid',$id)->select();
         //轮播图
         $banner =Db::name('mats_banner')->where('mid',$id)->select();
         //一级分类名称 二级分类名称和介绍
           $info =Db::name('mats_two')->where('id',$pid)->field('pid,title,info')->find();
           $info['one'] =Db::name('mats_pro')->where('id',$info['pid'])->field('title')->find();
          $this->assign('mats_info',$mats_info);
          $this->assign('mats_cates',$mats_cates);
          $this->assign('color',$color);
          $this->assign('shiping',$shiping);
          $this->assign('ress',$ress);
          $this->assign('banner',$banner);
          $this->assign('info',$info);
          return $this->view->fetch();
    }




    public function carpet_mats_info(){
        return $this->view->fetch();
    }
    // 游泳池栅格  最后多测试几条分类下数据
    public function swimming(){
        //以产品类型来分页
         $pages= Db::name('swing_pro_cates')->paginate(15);
        //产品一级分类
        $swing =Db::name('swing_pro_cates')->select();
        foreach($swing as $key =>$val){
            //产品分类下第一个产品
            $swing[$key]['cates'] = Db::name('swing_protucts')->where('s_id',$swing[$key]['id'])->limit(1)->find();
            //取出与产品类型所关联的数目
            $swing[$key]['count'] = Db::name('swing_protucts')->where('s_id',$swing[$key]['id'])->count();
        }
        $pages= $pages->render();
        $this->assign('pages',$pages);
        $this->assign('swing',$swing);
        return $this->view->fetch();
    }

    // 游泳池详情页面
    public function swing_info(){
           //游泳池产品分类 pid
           //当前产品cid
          $cid=input('get.cid');
          $pid = input('get.pid');
          //游泳池产品一级分类标题
          $title = Db::name('swing_pro_cates')->where('id',$pid)->value('title');
          $cates = Db::name('swing_protucts')->where('s_id',$pid)->field('id,s_id,title')->select();
          //当前游泳池产品
          $protucts = Db::name('swing_protucts')->where('id',$cid)->find();
          $protucts['color'] = explode(',',$protucts['color']);
          $protucts['fuwu']  = explode(',',$protucts['fuwu']);
          //颜色
          $color = Db::name('swing_color')->where('s_id',$cid)->select();
          //轮播图
          $banner = Db::name('swing_banner')->where('s_id',$cid)->select();
          $this->assign('cates',$cates);
          $this->assign('pid',$pid);
          $this->assign('protucts',$protucts);
          $this->assign('color',$color);
          $this->assign('banner',$banner);
          $this->assign('title',$title);
          return $this->view->fetch();
    }

    // 清理系统
    public function clean_off_system(){
        //所有产品 关联图标
        $cleans = Db::name('clear_t')->select();
        foreach($cleans as $k =>$val){
            $cleans[$k]['imgs']=Db::name('clear_image')->where('cid',$cleans[$k]['id'])->field('img')->select();
        }
        $page =Db::name('clear_t')->paginate(15);
        $pages =$page->render();
        $this->assign('pages',$pages);
        $this->assign('cleans',$cleans);
        return $this->view->fetch();
    }
    //清理系统详情页
    public function clean_off_system_info(){
        $id = input('get.id');
        $clean  = Db::name('clear_t')->where('id',$id)->find();
        $clean['juan'] =explode(',',$clean['juan']);
        $clean['dian'] =explode(',',$clean['dian']);
        $clean['color'] =explode(',',$clean['color']);
        //对应的颜色
        $color  = Db::name('clear_color')->where('ltid',$id)->select();
        //轮博图
        $banner = Db::name('clear_banner')->where('ltid',$id)->select();
         //饰品表
        $shiping =  Db::name('clear_shiping')->where('ltid',$id)->select();
        //参考表
       $cankao = Db::name('clear_ress')->where('ltid',$id)->select();
       $this->assign('cankao',$cankao);
       $this->assign('shiping',$shiping);
       $this->assign('color',$color);
       $this->assign('clean',$clean);
       $this->assign('banner',$banner);
       return$this->view->fetch();
    }

    //关于我们
    public function emco_bau(){
        return $this->view->fetch();
    }

    // 专业知识
    public function expertise(){
        return $this->view->fetch();
    }
    //实例探究 pdf 完成
    public function case_studies(){
        return  $this->view->fetch();
    }

    // 家用垫信息
    public function emco_domestic_mats(){
        return $this->view->fetch();
    }

    //更多开发人员信息
    public function building_contractors(){
        return $this->view->fetch();
    }
    // 功能
    public function functions(){
        return $this->view->fetch();
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