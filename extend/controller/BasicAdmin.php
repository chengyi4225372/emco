<?php

// +----------------------------------------------------------------------
// | ThinkAdmin
// +----------------------------------------------------------------------
// | 版权所有 2014~2017 广州楚才信息科技有限公司 [ http://www.cuci.cc ]
// +----------------------------------------------------------------------
// | 官方网站: http://think.ctolog.com
// +----------------------------------------------------------------------
// | 开源协议 ( https://mit-license.org )
// +----------------------------------------------------------------------
// | github开源项目：https://github.com/zoujingli/ThinkAdmin
// +----------------------------------------------------------------------

namespace controller;

use service\DataService;
use think\Controller;
use think\Db;
use think\db\Query;

/**
 * 后台权限基础控制器
 * Class BasicAdmin
 * @package controller
 */
class BasicAdmin extends Controller {

    /**
     * 页面标题
     * @var string
     */
    public $title;

    /**
     * 默认操作数据表
     * @var string
     */
    public $table;

    /**
     * 表单默认操作
     * @param Query $dbQuery 数据库查询对象
     * @param string $tplFile 显示模板名字
     * @param string $pkField 更新主键规则
     * @param array $where 查询规则
     * @param array $extendData 扩展数据
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    protected function _form($dbQuery = null, $tplFile = '', $pkField = '', $where = [], $extendData = []) {
        $db = is_null($dbQuery) ? Db::name($this->table) : (is_string($dbQuery) ? Db::name($dbQuery) : $dbQuery);
        $pk = empty($pkField) ? ($db->getPk() ? $db->getPk() : 'id') : $pkField;
        $pkValue = $this->request->request($pk, isset($where[$pk]) ? $where[$pk] : (isset($extendData[$pk]) ? $extendData[$pk] : null));
        // 非POST请求, 获取数据并显示表单页面
        if (!$this->request->isPost()) {
            $vo = ($pkValue !== null) ? array_merge((array) $db->where($pk, $pkValue)->where($where)->find(), $extendData) : $extendData;
            if (false !== $this->_callback('_form_filter', $vo, [])) {
                empty($this->title) || $this->assign('title', $this->title);
                $lists = Db::name('list')->where('id','>',2)->where('id','<',7)->select();
                $this->assign('lists',$lists);
                $categorys = Db::name('category')->select();
                $this->assign('categorys',$categorys);
                //todo 添加地毯垫分类
                $ditan= Db::name('dt_dian')->select();
                $this->assign('ditan',$ditan);
                //产品类别
                $protucts= Db::name('protucts')->select();
                $this->assign('protucts',$protucts);
                //地点类别
                $heres= Db::name('heres')->select();
                $this->assign('heres',$heres);
                //国际类别
                $county= Db::name('county')->select();
                $this->assign('county',$county);
                //清洁类别
                $clear = Db::name('clear_title')->select();
                $this->assign('clear',$clear);
                //所有清洁产品标题
                $cleartitle =Db::name('clear_t')->select();
                $this->assign('cleartitle',$cleartitle);
                //咨询专家类别
                $zhuan = Db::name('zhuan')->select();
                $this->assign('zhuan',$zhuan);
                //产品对比类别
                $protuct = Db::name('protuct_cates')->select();
                $this->assign('protuct',$protuct);
                //产品对比系列
                $cates =Db::name('category_es')->select();
                $this->assign('cates',$cates);
                //产品对比所有产品
                $allprotuct =Db::name('protuct_info')->select();
                $this->assign('allprotuct',$allprotuct);
                //参考模块中的所有案例名称
                $cankao = Db::name('anli_table')->field('id,title')->select();
                $this->assign('cankao',$cankao);
                //游泳池产品分类
                $swingcates = Db::name('swing_pro_cates')->select();
                $this->assign('swingcates',$swingcates);
                //游泳池所有产品
                $swingprotucts = Db::name('swing_protucts')->field('id,title')->select();
                $this->assign('swingprotucts',$swingprotucts);



//                $conditions = Db::name('condition')->where('conid',0)->select();
//                $this->assign('conditions',$conditions);
                return $this->fetch($tplFile, ['vo' => $vo]);

                //
            }
            return $vo;
        }
        // POST请求, 数据自动存库
        $data = array_merge($this->request->post(), $extendData);
        if (false !== $this->_callback('_form_filter', $data, [])) {
            $result = DataService::save($db, $data, $pk, $where);
            if (false !== $this->_callback('_form_result', $result, $data)) {
                if ($result !== false) {
                    $this->success('恭喜, 数据保存成功!', '');
                }
                $this->error('数据保存失败, 请稍候再试!');
            }
        }
    }

    /**
     * 列表集成处理方法
     * @param Query $dbQuery 数据库查询对象
     * @param bool $isPage 是启用分页
     * @param bool $isDisplay 是否直接输出显示
     * @param bool $total 总记录数
     * @param array $result 结果集
     * @return array|string
     * @throws \think\db\exception\DataNotFoundException
     * @throws \think\db\exception\ModelNotFoundException
     * @throws \think\exception\DbException
     * @throws \think\Exception
     */
    protected function _list($dbQuery = null, $isPage = true, $isDisplay = true, $total = false, $result = []) {
        $db = is_null($dbQuery) ? Db::name($this->table) : (is_string($dbQuery) ? Db::name($dbQuery) : $dbQuery);
        // 列表排序默认处理
        if ($this->request->isPost() && $this->request->post('action') === 'resort') {
            foreach ($this->request->post() as $key => $value) {
                if (preg_match('/^_\d{1,}$/', $key) && preg_match('/^\d{1,}$/', $value)) {
                    list($where, $update) = [['id' => trim($key, '_')], ['sort' => $value]];
                    if (false === Db::table($db->getTable())->where($where)->update($update)) {
                        $this->error('列表排序失败, 请稍候再试');
                    }
                }
            }
            $this->success('列表排序成功, 正在刷新列表', '');
        }
        // 列表数据查询与显示
        if (null === $db->getOptions('order')) {
            in_array('sort', $db->getTableFields($db->getTable())) && $db->order('sort asc');
        }
        if ($isPage) {
            $rows = intval($this->request->get('rows', cookie('page-rows')));
            cookie('page-rows', $rows = $rows >= 10 ? $rows : 20);
            // 分页数据处理
            $query = $this->request->get('', '', 'urlencode');
            $page = $db->paginate($rows, $total, ['query' => $query]);
            if (($totalNum = $page->total()) > 0) {
                list($rowsHTML, $pageHTML, $maxNum) = [[], [], $page->lastPage()];
                foreach ([10, 20, 30, 40, 50, 60, 70, 80, 90, 100, 110, 120, 130, 140, 150, 160, 170, 180, 190, 200] as $num) {
                    list($query['rows'], $query['page']) = [$num, '1'];
                    $url = url('@admin') . '#' . $this->request->baseUrl() . '?' . http_build_query($query);
                    $rowsHTML[] = "<option data-url='{$url}' " . ($rows === $num ? 'selected' : '') . " value='{$num}'>{$num}</option>";
                }
                for ($i = 1; $i <= $maxNum; $i++) {
                    list($query['rows'], $query['page']) = [$rows, $i];
                    $url = url('@admin') . '#' . $this->request->baseUrl() . '?' . http_build_query($query);
                    $selected = $i === intval($page->currentPage()) ? 'selected' : '';
                    $pageHTML[] = "<option data-url='{$url}' {$selected} value='{$i}'>{$i}</option>";
                }
                list($pattern, $replacement) = [['|href="(.*?)"|', '|pagination|'], ['data-open="$1"', 'pagination pull-right']];
                $html = "<span class='pagination-trigger nowrap'>共 {$totalNum} 条记录，每页显示 <select data-auto-none>" . join('', $rowsHTML) . "</select> 条，共 " . ceil($totalNum / $rows) . " 页当前显示第 <select>" . join('', $pageHTML) . "</select> 页。</span>";
                list($result['total'], $result['list'], $result['page']) = [$totalNum, $page->all(), $html . preg_replace($pattern, $replacement, $page->render())];
            } else {
                list($result['total'], $result['list'], $result['page']) = [$totalNum, $page->all(), $page->render()];
            }
        } else {
            $result['list'] = $db->select();
        }
        if (false !== $this->_callback('_data_filter', $result['list'], []) && $isDisplay) {
            !empty($this->title) && $this->assign('title', $this->title);
            return $this->fetch('', $result);
        }
        return $result;
    }

    /**
     * 当前对象回调成员方法
     * @param string $method
     * @param array|bool $data1
     * @param array|bool $data2
     * @return bool
     */
    protected function _callback($method, &$data1, $data2) {
        foreach ([$method, "_" . $this->request->action() . "{$method}"] as $_method) {
            if (method_exists($this, $_method) && false === $this->$_method($data1, $data2)) {
                return false;
            }
        }
        return true;
    }

    protected function store($flag, $id) {
        switch ($flag) {
            case 1:
                $store = Db::name('store_taobao')->where('id', '=', $id)->find();
                $store['url'] = url('index/taobao/details') . '?id=' . $store['id'];
                break;
            case 2:
                $store = Db::name('store_tmall')->where('id', '=', $id)->find();
                $store['url'] = url('index/tmall/details') . '?id=' . $store['id'];
                break;
            case 3:
                $store = Db::name('store_wechat')->where('id', '=', $id)->find();
                $store['url'] = url('index/wechat/details') . '?id=' . $store['id'];
                break;
        }
        return $store;
    }
    protected function goods($goods_id) {
        
        $good = Db::name('goods')->where('goods_id', '=', $goods_id)->find();
          
        return $good;
    }
    

}
