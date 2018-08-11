{include file="user_header.tpl" wddd='1' title='完成订单' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">{$c['网站名称']}{$lang['已创建您的账单 编号']}:{$server['id']}</h5>
  <div class="card-body">

      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">支付订单</span>
            <span class="badge badge-secondary badge-pill">{$c['网站名称']}</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <small class="text-muted">订单日期</small>
                <h6 class="my-0">{$server['申请时间']}</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <small class="text-muted">产品名称</small>
                <h6 class="my-0">{$goods['名称']}</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <small class="text-muted">付款周期</small>
                <h6 class="my-0">{$goods['周期']} (数量:1)</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between">
              <span>订单价格</span>
              <strong>{$goods['价格']}{if $goods['价格']!='免费'} {$c['交易币名称']}{/if}</strong>
            </li>
                        <li class="list-group-item d-flex justify-content-between">
              <span>操作</span>
              <strong><form name="pay" method="post" action="{$ROOT}/control/pay/{$server['id']}/">
              	<input type="hidden" name="days" id="days" value="1" /><button type="submit" class="btn btn-success">支付</button></form>	</strong>
            </li>
          </ul>


</div>