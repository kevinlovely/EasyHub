{include file="user_header.tpl" czzx='1' title='充值中心' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">充值中心</h5>
  <div class="card-body">
    <h5 class="card-title">剩余余额:{$s['登陆预存款']} {$c['交易币名称']}</h5>


<div id="payplugin">{$plug['存款支付网关前端']} </div>
  </div>
</div>
