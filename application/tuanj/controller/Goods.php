<?php

namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;

class Goods extends BasicAdmin {

    private $dataform = 'goods';

//    private $cate = 'news_cate';

    public function index() {
        $this->title = '团建项目';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('name|id', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
//            $start_time = strtotime("{$start} 00:00:00");
//            $end_time = strtotime("{$end} 23:59:59");
//            $db->whereBetween('create_at', [$start_time, $end_time]);
            $db->whereBetween('time', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }
    
    protected function _data_filter(&$data) {
        foreach ($data as $key => $val) {           
                $data[$key]['list'] = Db::name('list')->where('id', '=', $val['lid'])->value('name'); 
                $data[$key]['category'] = Db::name('category')->where('id', '=', $val['cid'])->value('name'); 
        }       
    }
    
        public function linkage() {
        $id = $_POST['id'];
        $categorys = Db::name('category')->where('lid',$id)->select();
        $data =[];
        $vol =[];
        foreach ($categorys as $v){
            $vol['id'] = $v['id'];
            $vol['name'] = $v['name'];
            $data[] = $vol;
        }
     
        return $data;
      
    }

    /**
     * 添加
     * @return type
     */
    public function add() {
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 编辑
     * @return type
     */
    public function edit() {
        return $this->_form($this->dataform, 'form');
    }

    /**
     * 添加成功回跳处理
     * @param bool $result
     */
    protected function _form_result($result) {
        if ($result !== false) {
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/goods/index')];
            $this->success('数据保存成功！', "{$base}#{$url}?spm={$spm}");
        }
    }

    /**
     * 删除
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function del() {
        if (DataService::update($this->dataform)) {
            $this->success("删除成功!", '');
        }
        $this->error("删除失败, 请稍候再试!");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function forbid() {
        if (DataService::update($this->dataform)) {
            $this->success("禁用成功!", '');
        }
        $this->error("禁用失败, 请稍候再试!");
    }

    /**
     * 禁用
     * @throws \think\Exception
     * @throws \think\exception\PDOException
     */
    public function resume() {
        if (DataService::update($this->dataform)) {
            $this->success("启用成功!", '');
        }
        $this->error("启用失败, 请稍候再试!");
    }

}
