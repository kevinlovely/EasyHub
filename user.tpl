{include file="user_header.tpl" ybp='1' title=$lang['客户中心'] hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">仪表盘</h5>
  <div class="card-body">
    <h5 class="card-title">{$s['登陆姓名']}</h5>
    <p class="card-text">电子邮件:{$s['登陆邮箱']}<br>剩余余额:{$s['登陆预存款']} {$c['交易币名称']}</p>
    <a href="{$ROOT}/control/index" class="btn btn-primary">我的订单>></a>
    <a href="{$ROOT}/user/pay/" class="btn btn-primary">充值中心>></a>
    <button onclick="window.location.href='{$ROOT}/user/info/'" type="button" class="btn btn-outline-primary">用户信息>></button>
    <button onclick="window.location.href='{$ROOT}/ticket/index/'" type="button" class="btn btn-outline-secondary">工单系统>></button>

  </div>
</div>
{if {$tempsz['用户中心填充']}=='开'}
          <br><script type="text/javascript" src="http://yiju.ml/api/word.php?m=js"></script>
<div class="alert alert-primary" role="alert">
<script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-secondary" role="alert">
<script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-success" role="alert">
  <script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-danger" role="alert">
 <script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-warning" role="alert">
  <script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-info" role="alert">
<script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-light" role="alert">
  <script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
<div class="alert alert-dark" role="alert">
  <script>document.write("<div>");yiju(true);document.write("</div>");</script></p>
</div>
{/if}
