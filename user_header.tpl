{include file="header.tpl" navxz='5' showBanner='否' userBanner='开' title=$lang['用户中心'] hostname=$c['网站名称']}
<!-- 国内cdn节点 图标js -->
<script src="https://cdn.jsdelivr.net/npm/feather-icons/dist/feather.min.js"></script>

  <body>
    <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="{$ROOT}/index/index/">{$c['网站名称']}</a>

      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="{$ROOT}/index/login/">退出登陆</a>
        </li>
      </ul>
    </nav>

    <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                <a class="nav-link{if $ybp=='1'} active{/if}" href="{$ROOT}/user/index/">
                  <span data-feather="home"></span>
                  仪表盘 <span class="sr-only">(current)</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link{if $wddd=='1'} active{/if}" href="{$ROOT}/control/index/">
                  <span data-feather="file"></span>
                  我的订单
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link{if $dgcp=='1'} active{/if}" href="{$ROOT}/buy/">
                  <span data-feather="shopping-cart"></span>
                  订购产品
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link{if $czzx=='1'} active{/if}" href="{$ROOT}/user/pay/">
                  <span data-feather="dollar-sign"></span>
                  充值中心
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link{if $yhxx=='1'} active{/if}" href="{$ROOT}/user/info/">
                  <span data-feather="user"></span>
                  用户信息
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link{if $bzgg=='1'} active{/if}" href="{$ROOT}/index/announcements/">
                  <span data-feather="bell"></span>
                  本站公告
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link{if $gdxt=='1'} active{/if}" href="{$ROOT}/ticket/index/">
                  <span data-feather="briefcase"></span>
                  工单系统
                </a>
              </li>
            </ul>


        </nav>
<main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">欢迎, 这里是 {$c['网站名称']}!</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
              <div class="btn-group mr-2">
                <button onclick="window.location.href='{$ROOT}/index/index/'" class="btn btn-sm btn-outline-secondary"><span data-feather="arrow-left"></span>返回首页</button>
                <button onclick="window.open('{$tempsz['QQ群链接']}');" class="btn btn-sm btn-outline-secondary"><span data-feather="message-square"></span>加QQ群</button>
              </div>
            </div>
          </div>
<script>
  feather.replace()
</script>