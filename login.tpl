{include file="header.tpl" navxz='1' title=$lang['登陆'] hostname=$c['网站名称'] labBanner='开' showBanner="否"}
{include file="alert.tpl"}
  <body>
    <form class="form-signin"  method="post" action="">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">{$lang['登陆']} For {$c['网站名称']}</h1>
        <p><a href="{$ROOT}/index/register/">没有账号？注册一个!</a></p>

      </div>

      <div class="form-label-group">
        <input type="text" name="swapname" id="inputEmail" class="form-control" placeholder="用户名" required autofocus>
        <label for="inputEmail">{$lang['用户名']}</label>
      </div>

      <div class="form-label-group">
        <input type="password" name="swappass" id="inputPassword" class="form-control" placeholder="密码" required>
        <label for="inputPassword">{$lang['密码']}</label>
      </div>

      <button class="btn btn-lg btn-primary btn-block" type="submit">{$lang['登陆']}</button>
      <p class="mt-5 mb-3 text-muted text-center">{$tempsz['底部版权']}</p>
    </form>
  </body>
</html>
