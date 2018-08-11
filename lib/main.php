<?php
//echo '['.TEMPLATE::assign("templatedir").']';exit;
if (!function_exists('plug_eva_temp')) {
	function plug_eva_temp($name, $nr) {
		$return = plug_eva('template_EasyHub', $name);
		if ($return == "") {
			$nr = str_replace('{templatedir}', TEMPLATE::assign('templatedir'), $nr);
			plug_eva('template_EasyHub', $name, $nr);
			$return = plug_eva('template_EasyHub', $name);}
		$return = str_replace('/templates/EasyHub', TEMPLATE::assign('templatedir'), $return);
		return $return;
	}
}

$tsz['网站logo'] = plug_eva_temp("网站logo", 'logo.png');
$tsz['首页副标题'] = plug_eva_temp("首页副标题", '[一句API]');
$tsz['用户中心填充'] = plug_eva_temp("用户中心填充", '关');
$tsz['QQ群链接'] = plug_eva_temp("QQ群链接", 'https://jq.qq.com/?_wv=1027&k=5b3qaMB');
$tsz['底部版权'] = plug_eva_temp("底部版权", '&copy; All rights reserved. 生命云计算 2017-2018');
$tsz['首页产品1'] = plug_eva_temp("首页产品1", '        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">入门</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">￥0 <small class="text-muted">/ 月</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
<ul class="list-group list-group-flush">
<li class="list-group-item">128 MB 磁盘空间</li>
<li class="list-group-item">20MB MySQL数据库</li>
<li class="list-group-item">共享带宽 每月1G流量</li>
<li class="list-group-item">支持php5 php7 SSL</li>
</ul>
            </ul>
            <button type="button" class="btn btn-lg btn-block btn-outline-primary">立即获取!</button>
          </div>
        </div>');
$tsz['首页产品2'] = plug_eva_temp("首页产品2", '        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">升级</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">￥9.9 <small class="text-muted">/ 月</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
<ul class="list-group list-group-flush">
<li class="list-group-item">128 MB 磁盘空间</li>
<li class="list-group-item">20MB MySQL数据库</li>
<li class="list-group-item">共享带宽 每月1G流量</li>
<li class="list-group-item">支持php5 php7 SSL</li>
</ul>
            </ul>
            <button type="button" class="btn btn-lg btn-block btn-primary">立即购买!</button>
          </div>
        </div>');
$tsz['首页产品3'] = plug_eva_temp("首页产品3", '        <div class="card mb-4 box-shadow">
          <div class="card-header">
            <h4 class="my-0 font-weight-normal">至尊</h4>
          </div>
          <div class="card-body">
            <h1 class="card-title pricing-card-title">￥99 <small class="text-muted">/ 年</small></h1>
            <ul class="list-unstyled mt-3 mb-4">
<ul class="list-group list-group-flush">
<li class="list-group-item">128 MB 磁盘空间</li>
<li class="list-group-item">20MB MySQL数据库</li>
<li class="list-group-item">共享带宽 每月1G流量</li>
<li class="list-group-item">支持php5 php7 SSL</li>
</ul>
            </ul>
            <button type="button" class="btn btn-lg btn-block btn-primary">立即购买!</button>
          </div>
        </div>');
$tsz['底部导航'] = plug_eva_temp("底部导航", '          <div class="col-6 col-md">
            <h5>友情链接</h5>
            <ul class="list-unstyled text-small">
              <li><a class="text-muted" href="http://www.swapidc.cn/">SWAPIDC</a></li>
              <li><a class="text-muted" href="https://dkevin2018mc.github.io/">Kevin2018MC</a></li>
            </ul>
          </div>');
TEMPLATE::assign('tempsz', $tsz);
/*
模板中用{$tempsz['名称调用']} */
