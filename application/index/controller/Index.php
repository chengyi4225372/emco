<?php

namespace app\index\controller;

use think\Db;
use app\index\controller\Common;
use think\Request;
use service\FileService;
class Index extends Common
{
    // 首页 入口
    public function index()
    {
        //轮播图  后台需要标注下
        $banner = Db::name('home_banner')->select();
         foreach($banner as $k =>$val){
             $banner[$k]['content'] =explode('。',$banner[$k]['content']);
         }
        //系统类别
        $info  = Db::name('home_mats')->select();
        $other = Db::name('home_other')->select();
        $this->assign('other',$other);
        $this->assign('info',$info);
        $this->assign('banner',$banner);
        return $this->view->fetch();
    }

    //todo  产品查询
    public function product_enquiry(){
      $this->redirect('index/contact');
    }

    //todo 建议删除
    /*
    public function press_contact(){
        return $this->view->fetch();
    }*/

    /*todo 暂时完成  */

    //通讯联系
    public function newsletter($email=''){
         if(\request()->isPost()){
             $data =input('post.');
             $res= Db::table('tongxun_contact')->data(array('sex'=>$data['gender'],'name'=>$data['first_name'],'email'=>$data['email']))->insert();
             if($res){
                 echo "<script>alert('提交成功!')</script>";
             }else{
                 echo "<script>alert('提交失败!')</script>";
             }
         }
        return $this->view->fetch('',['email'=>$email]);
    }

    //404 页面
    public function x_treme(){
        return $this->view->fetch();
    }

    // 入口垫 服务
    public function entrance_mats_service(){
        //页头大图
        $mats =Db::name('mats_services')->select();
        //页尾底部图片
        $mats_img =Db::name('service_img')->select();
        $this->assign('mats',$mats);
        $this->assign('mats_img',$mats_img);
        return $this->view->fetch();
    }

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

    //入口垫 2
    public function entrance_mats_2(){
        return $this->view->fetch();
    }

    public function cleaning_and_maintenance(){
        return $this->view->fetch();
    }

    //下载  搜索完成
    public function downloads(){

        //产品类别id
        $cid = input('get.cid','','intval');
        //产二级id
        $pid = input('get.pid','','intval');
        //分类id
        $did = input('get.did'); // 此处加在静态页面中选择
        if(!empty($cid) && !empty($pid)){
            $downs = Db::name('mats_two')
                ->alias('a')
                ->field('a.id as aid ,a.title as atitle,b.id as bid,b.title as btitle ,c.id as cid ,c.title as ctitle ,d.zhaobiao_text,d.tuzhi,d.clear,d.zhuangxiu,d.title,d.shouce,d.chanp,d.wuye,d.id')
                ->join('mats_cates b','b.id = a.cid')
                ->join('mats_pro c','c.id = a.pid')
                ->join('mats_info d','d.pid = a.id')
                ->where('b.id',$cid)
                ->where('c.id',$pid)
                ->paginate(10);
        }else if(!empty($cid)){
            $downs = Db::name('mats_two')
                ->alias('a')
                ->field('a.id as aid ,a.title as atitle,b.id as bid ,b.title as btitle ,c.id as cid,c.title as ctitle ,d.zhaobiao_text,d.tuzhi,d.clear,d.zhuangxiu,d.title,d.shouce,d.chanp,d.wuye,d.id')
                ->join('mats_cates b','b.id = a.cid')
                ->join('mats_pro c','c.id = a.pid')
                ->join('mats_info d','d.pid = a.id')
                ->where('b.id',$cid)
                ->paginate(10);
        }else if(!empty($pid)){
            $downs = Db::name('mats_two')
                ->alias('a')
                ->field('a.id as aid ,a.title as atitle,b.id as bid ,b.title as btitle ,c.id as cid,c.title as ctitle ,d.zhaobiao_text,d.tuzhi,d.clear,d.zhuangxiu,d.title,d.shouce,d.chanp,d.wuye,d.id')
                ->join('mats_cates b','b.id = a.cid')
                ->join('mats_pro c','c.id = a.pid')
                ->join('mats_info d','d.pid = a.id')
                ->where('c.id',$pid)
                ->paginate(10);
        }else{
            $downs = Db::name('mats_two')
                ->alias('a')
                ->field('a.id as aid ,a.title as atitle,b.id as bid,b.title as btitle ,c.id as cid ,c.title as ctitle ,d.zhaobiao_text,d.tuzhi,d.clear,d.zhuangxiu,d.title,d.shouce,d.chanp,d.wuye,d.id')
                ->join('mats_cates b','b.id = a.cid')
                ->join('mats_pro c','c.id = a.pid')
                ->join('mats_info d','d.pid = a.id')
                ->paginate(10);
        }

        $page = $downs->render();
        $downs  = $downs->toArray();
        foreach ($downs['data'] as $k =>$val){
            $downs['data'][$k]['img'] = Db::name('mats_banner')->field('img')->where('mid',$downs['data'][$k]['id'])->select();
        }
        $this->assign('downs',$downs['data']);
        $this->assign('page',$page);
        return $this->view->fetch();
    }

    //todo 下载 文件pdf 不使用
    public function down_file(){
        $fileName = input('get.filename'); //得到文件名
        header( "Content-Disposition:  attachment;  filename=".$fileName); //告诉浏览器通过附件形式来处理文件
        header('Content-Length: ' . filesize($fileName)); //下载文件大小
        readfile($fileName);  //读取文件内容
    }

    //产品对比是关联入口垫的产品
    public function product_comparison(){
           //区分 1室外 2 室
          $p_id = input('get.p_id'); //系统类别 id
          $mats_id_1= input('get.column1');
          $mats_id_2= input('get.column2');
          $mats_id_3= input('get.column3');
          //通过分类id 找出 一级和二级分类 id
          $matstwo =Db::name('mats_two')
                              ->alias('a')
                              ->Join('mats_pro b','b.id = a.pid')
                              ->join('mats_info c','c.pid = a.id ')
                              ->field('a.id,a.pid,a.cid,b.id,a.title,b.title as btitle,c.id as c_id ,c.title as ctitle')
                              ->where('cid',$p_id) //根据系统类别 分组
                              ->limit(3)
                              ->select();
           //产品对比数据
           $mats_one= Db::name('mats_info')
                           ->alias('a')
                           ->Join('mats_two b','a.pid =b.id')
                           ->field('a.*,b.img,b.title as btitle')
                           ->where('a.id',$mats_id_1)
                           ->find();
          $mats_two= Db::name('mats_info')
                            ->alias('a')
                            ->Join('mats_two b','a.pid =b.id')
                            ->field('a.*,b.img,b.title as btitle')
                            ->where('a.id',$mats_id_2)
                            ->find();
          $mats_three= Db::name('mats_info')
                          ->alias('a')
                          ->Join('mats_two b','a.pid =b.id')
                          ->field('a.*,b.img,b.title as btitle')
                          ->where('a.id',$mats_id_3)
                          ->find();
           $this->assign('matstwo',$matstwo);
           $this->assign('mats_one',$mats_one);
           $this->assign('mats_two',$mats_two);
           $this->assign('mats_three',$mats_three);
           return $this->view->fetch();
    }

    //入口垫
    public function entrance_mats(){
         //2级产品分类标题 关联一级分类 标题
        $pid = input('get.pid','','intval');
        $cid = input('get.cid','','intval');
         if(empty($cid) && empty($pid)){
             $mats_two =Db::name('mats_two')->order('id asc')->paginate(10);
         }else if(empty($pid)){
             $mats_two =Db::name('mats_two')->where(['cid'=>$cid])->order('id asc')->paginate(10);
         }else if (empty($cid)){
             $mats_two =Db::name('mats_two')->where(['pid'=>$pid])->order('id asc')->paginate(10);
         }else{
             $mats_two =Db::name('mats_two')->where(['cid'=>$cid,'pid'=>$pid])->order('id asc')->paginate(10);
         }
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
               //一级分类标题
               $mats_two['data'][$k]['ptitle'] =  Db::name('mats_pro')->where('id',$mats_two['data'][$k]['pid'])->value('title');

           }
           $this->assign('mats_two',$mats_two['data']);
           $this->assign('page',$page);
           return $this->view->fetch();
    }
    
    //入口垫详情页面
    public function entrance_mats_info(){
         //获取二级id 找到关联二级的三级第一个 进去
          $pid = input('get.pid');//二级id
          $id = input('get.id'); //三级第一个产品
          $mats_info = Db::name('mats_info')->where('id',$id)->find();
          //二级分类下的 三级分类
          $mats_cates =  Db::name('mats_info')->where('pid',$pid)->field('id,p_id,pid,title')->select();
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
    //游泳池栅格 需要修改
    public function swimming(){
        //以产品来分页 以产品类型来分组
        $sid =input('get.sid');
        $did =input('get.did');
        $hid =input('get.hid');
        if(empty($sid)&&empty($did)&&empty($hid)){
            $swing= Db::name('swing_protucts')->field('id,sid,did,hid,s_id')->group('s_id')->paginate(10);
        }else if(!empty($sid) && (empty($did)||empty($hid))){
            $swing= Db::name('swing_protucts')->field('id,sid,did,hid,s_id')->where(['sid'=>$sid,'did'=>$did])->group('s_id')->paginate(10);
        }else if(!empty($sid)&&!empty($did &&!empty($hid))){
            $swing= Db::name('swing_protucts')->field('id,sid,did,hid,s_id')->where(['sid'=>$sid,'did'=>$did,'hid'=>$hid])->group('s_id')->paginate(10);
        }else {
            $swing= Db::name('swing_protucts')->field('id,sid,did,hid,s_id')->where(['sid'=>$sid,'did'=>$did,'hid'=>$hid])->group('s_id')->paginate(10);
        }
        $pages= $swing->render();
        $swing = $swing ->toArray();
        foreach($swing['data'] as $key =>$val){
            //产品分类下第一个产品
            $swing['data'][$key]['cates'] = Db::name('swing_pro_cates')->where('id',$swing['data'][$key]['s_id'])->limit(1)->find();
            //取出与产品类型所关联的数目
            $swing['data'][$key]['count'] = Db::name('swing_protucts')->where('s_id',$swing['data'][$key]['id'])->count();
        }
        $this->assign('pages',$pages);
        $this->assign('swing',$swing['data']);
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
          $protucts['color'] = isset($protucts['color'])?explode(',',$protucts['color']):'';
          $protucts['fuwu']  =isset($protucts['fuwu'])?explode(',',$protucts['fuwu']):'';
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
        $cleans = Db::name('clear_t')->paginate(10);
        $pages =$cleans->render();
        $cleans = $cleans->toArray();
        foreach($cleans['data'] as $k =>$val){
            $cleans['data'][$k]['tubiao'] = explode('|',$cleans['data'][$k]['tubiao']);
        }
        $this->assign('pages',$pages);
        $this->assign('cleans',$cleans['data']);
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
        $info = Db::name('about_emco')->select();
        $this->assign('info',$info);
        return $this->view->fetch();
    }

    // 专业知识
    public function expertise(){
         //专业知识大图
        $info = Db::name('about_expertise')->select();
        //底部小图
        $info_img = Db::name('about_img')->select();
        $this->assign('info_img',$info_img);
        $this->assign('info',$info);
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
    /*
    //积分
    public function credits(){
        $id  =
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
    */
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
         $new_info =Db::name('new')
             ->where('id','neq',6)
             ->where('id','neq',7)
             ->where('id','neq',8)
             ->select();
         $this->assign('new_info',$new_info);
         return $this->view->fetch();
    }

    //新闻详情页面
    public function event_info(){
        $id  = input('get.id');
        $info = Db::name('new')->where('id',$id)->find();
        $this->assign('info',$info);
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
        $contacts = Db::name('service_contacts')->find();
        $this->assign('contacts',$contacts);
        return $this->view->fetch();
    }
    // 订购信息材料
    public function order_infomaterial(){
        return $this->view->fetch();
    }
    // questions 经常遇到的问题
    public function questions(){
         //顶部图片
        $que = Db::name('question_img')->find();
        $wenti = Db::name('questions_lists')->select();
        $this->assign('que',$que);
        $this->assign('wenti',$wenti);
        return $this->view->fetch();
    }

    // 参考
    public function references(){
        $pid =input('get.pid');
        $hid =input('get.hid');
        $cid =input('get.cid');
        $table= Db::name('anli_table');
        if(empty($pid)|| empty($hid)||empty($cid)){
            $anli = $table->field('id,img,title,heres,reinfo')->paginate(10);
        }else if(!empty($pid) || !empty($hid)||!empty($cid)){
            $anli = $table->field('id,img,title,heres,reinfo')->where(['p_id'=>$pid,'h_id'=>$hid,'c_id'=>$cid])->paginate(10);
        }else{
            $anli = $table->field('id,img,title,heres,reinfo')->where(['p_id'=>$pid,'h_id'=>$hid,'c_id'=>$cid])->paginate(10);
        }
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