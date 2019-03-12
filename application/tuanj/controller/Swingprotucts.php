<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2019/3/8
 * Time: 10:36
 */

namespace app\tuanj\controller;

use think\Db;
use controller\BasicAdmin;
use service\DataService;

class Swingprotucts extends BasicAdmin {

    private $dataform = 'swing_protucts';

    public function index() {
        $this->title = '游泳池产品设置';
        list($get, $db) = [$this->request->get(), Db::name($this->dataform)];
        (isset($get['keywords']) && $get['keywords'] !== '') && $db->whereLike('title', "%{$get['keywords']}%");
        if (isset($get['date']) && $get['date'] !== '') {
            list($start, $end) = explode(' - ', $get['date']);
            $db->whereBetween('time', ["{$start} 00:00:00", "{$end} 23:59:59"]);
        }
        return parent::_list($db->order('id desc'));
    }
    //关联游泳池产品一级分类
    protected function _data_filter(&$data) {
        foreach ($data as $key => $val) {
            $data[$key]['swing_cates'] = Db::name('swing_pro_cates')->where('id', '=', $val['s_id'])->value('title');
            $data[$key]['shange'] = Db::name('swingcates')->where('id', '=', $val['sid'])->value('title');
            $data[$key]['dangan'] = Db::name('swingdang')->where('id', '=', $val['did'])->value('title');
            $data[$key]['height'] = Db::name('heights')->where('id', '=', $val['hid'])->value('title');
        }
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
            list($base, $spm, $url) = [url('@admin'), $this->request->get('spm'), url('tuanj/swingprotucts/index')];
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