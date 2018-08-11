{include file="header.tpl" navxz='1' title=$lang['注册'] hostname=$c['网站名称'] labBanner='开' showBanner="否"}
{include file="alert.tpl"}
  <body>
    <form class="form-signin"  method="post" action="">
      <div class="text-center mb-4">
        <h1 class="h3 mb-3 font-weight-normal">{$lang['注册']} For {$c['网站名称']}</h1>
        <p><a href="{$ROOT}/index/login/">戳我去登录!</a></p>

      </div>

      <div class="form-label-group">
        <input type="text" name="username" id="inputUser" class="form-control" placeholder="用户名" required autofocus>
        <label for="inputUser">{$lang['用户名']}</label>
      </div>

      <div class="form-label-group">
        <input type="password" name="password" id="inputPassword" class="form-control" placeholder="密码" required>
        <label for="inputPassword">{$lang['密码']}</label>
      </div>

      <div class="form-label-group">
        <input type="password" name="repassword" id="rePassword" class="form-control" placeholder="重复密码" required>
        <label for="rePassword">{$lang['重复密码']}</label>
      </div>

      <div class="form-label-group">
        <input type="email" name="email" id="inputEmail" class="form-control" placeholder="邮箱" required autofocus>
        <label for="inputEmail">{$lang['电子邮件']}</label>
      </div>

      <div class="form-label-group">
        <input type="text" name="name" id="inputName" class="form-control" placeholder="昵称" required autofocus>
        <label for="inputName">您的昵称</label>
      </div>

      <input type="hidden" name="country" value="待填写">
      <input type="hidden" name="address" value="待填写">
      <input type="hidden" name="zip" value="待填写">
      <input type="hidden" name="phone" value="待填写">

      <button class="btn btn-lg btn-primary btn-block" type="submit">{$lang['注册']}</button>
      <p class="mt-5 mb-3 text-muted text-center">{$tempsz['底部版权']}</p>
    </form>
  </body>
</html>
