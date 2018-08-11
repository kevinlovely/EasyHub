<!doctype html>
<html lang="zh">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="{$templatedir}/images/{$tempsz['网站logo']}">

    <!-- EasyHub ByQQ3407053348 -->

    <title>{$hostname} - {$title}</title>

    <!-- Bootstrap core CSS -->
    <link href="{$templatedir}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="{$templatedir}/css/pricing.css" rel="stylesheet">
    {if $labBanner=='开'}
    <link href="{$templatedir}/css/floating-labels.css" rel="stylesheet">
        {/if}
    {if $userBanner=='开'}
    <link href="{$templatedir}/css/dashboard.css" rel="stylesheet">
        {/if}

    {if $showBanner=='否'}
      </head>
    {else}
      </head>

  <body>
    <div class="d-flex flex-column flex-md-row align-items-center p-3 px-md-4 mb-3 bg-white border-bottom box-shadow">
      <h5 class="my-0 mr-md-auto font-weight-normal"><img src="{$templatedir}/images/{$tempsz['网站logo']}"></h5>
      <nav class="my-2 my-md-0 mr-md-3">
        <a class="p-2 text-dark" href="{$ROOT}/index/index/">首页</a>
        <a class="p-2 text-dark" href="{$ROOT}/buy/">产品及价格</a>
        
                {if $s['是否已经登陆']=='是'}
                 <a class="p-2 text-dark" href="{$ROOT}/user/index/">{$s['登陆用户名']}</a>
                 <a class="p-2 text-dark" href="{$ROOT}/user/pay/">账户充值</a>
                 <a class="btn btn-outline-primary" href="{$ROOT}/control/index/">我的订单</a> 
          {else}
                 <a class="p-2 text-dark" href="{$ROOT}/index/login/">登录</a>
                  <a class="btn btn-outline-primary" href="{$ROOT}/index/register/">注册</a>
          {/if}
      </nav>


    </div>
    {/if}

{include file="alert.tpl"}