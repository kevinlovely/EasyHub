{include file="header.tpl" navxz='2' title=$lang['购物车'] hostname=$c['网站名称']}{include file="alert.tpl"}
 

  <body class="bg-light">

    <div class="container">
      <div class="py-5 text-center">
        
        <h2>购买产品</h2>
        <p class="lead">{$cart['名称']}</p>
      </div>
          
      <div class="row">
        <div class="col-md-4 order-md-2 mb-4">
          <h4 class="d-flex justify-content-between align-items-center mb-3">
            <span class="text-muted">订单信息</span>
            <span class="badge badge-secondary badge-pill">{$c['网站名称']}</span>
          </h4>
          <ul class="list-group mb-3">
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <small class="text-muted">产品名称</small>
                <h6 class="my-0">{$cart['名称']}</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <small class="text-muted">产品描述</small>
                <h6 class="my-0">{$cart['描述']}</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between lh-condensed">
              <div>
                <small class="text-muted">开通方式</small>
                <h6 class="my-0">{$lang[$cart['开通方式']]}</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between bg-light">
              <div class="text-success">
                <small>优惠码</small>
                <h6 id="pcode" class="my-0">未填写</h6>
              </div>
            </li>
            <li class="list-group-item d-flex justify-content-between">
              <span>订单价格</span>
              <strong>{if $cart['价格']=='免费'}{$lang[$cart['价格']]}{else}{$cart['价格']} {$c['交易币名称']}{/if}</strong>
            </li>
          </ul>
<form class="needs-validation" method="post" action="submit/" novalidate>
            <input type="hidden" name="domainoption" value="freedomain" id="seldomain" />
            <div class="input-group">
              <input type="text" name="promocode" class="form-control" id="promocode" placeholder="输入优惠码">
              <div class="input-group-append">
                <button type="button" class="btn btn-secondary" id="validatepromo">验证</button>
              </div>
            </div>
        </div>
        <div class="col-md-8 order-md-1">
          <h4 class="mb-3">订单配置</h4>








 {if $cart['隐藏域名配置']!='1'} 
  


<div id="accordion">
  <div class="card">
    <div class="card-header" id="headingOne">
      <h5 class="mb-0">
        <button type="button" class="btn btn-link" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
          使用自定义域名解析到虚拟主机
        </button>
      </h5>
    </div>

    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordion">
      <div class="card-body">
                                <!-- 1st tab  -->
                        <div id="tab1">

                            <p><div id="domain" align="center">
        <div class="input-group">
                <div class="input-group-prepend">
                  <span class="input-group-text">www.</span>
                </div><input type="text" class="form-control" name="domain" size="40" value="" style="width:276px;" onclick="document.getElementById('seldomain').value='domain';"/><div class="input-group-append">
    <span class="input-group-text">.</span>
  </div></div>
        
        <input type="text" class="form-control" name="domainhz" size="7" value="" style="width:80px;"  onclick="document.getElementById('seldomain').value='domain';"/>
        </div> </p>
      </div>
    </div>
  </div>
  <div class="card">
    <div class="card-header" id="headingThree">
      <h5 class="mb-0">
        <button type="button" class="btn btn-link collapsed" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
          开通一个免费二级域名
        </button>
      </h5>
    </div>
    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordion">
      <div class="card-body">   
                        
{if $cart['显示域名选项']=='开'}<div id="tab2_"><p><div id="freedomain" align="center">
  <input type="text" class="form-control" name="freedomain" size="40" value="" onclick="document.getElementById('seldomain').value='freedomain';"/> .<select name="freedomainhz" style="width:150px;">{foreach from=$freedomains item=freedomain}<option value="{$freedomain}">{$freedomain}</option>{/foreach}</select></div> </p></div>{else}对不起,此产品不支持这个功能!{/if}
</div>
                    </div>
                </div>
      </div>
    </div>
<br>
        {/if}
            <h4 class="mb-3">购买时间</h4>
{if is_array($cart['周期'])}
          <select name="cycleid" class="choosecat">
            {foreach $cart['周期'] as $num=>$row nocache}
              <option value="{$num}">{$row['名称']} {$row['价格']}{$c['交易币名称']}/{$row['时间']}天 {if $row['自动']}{$lang['自动开通']}{else}{$lang['审核开通']}{/if}</option>
            {foreachelse}
              无法购买
            {/foreach}
          </select>
{else}
          {if $cart['周期']!='一次性'}
<div class="input-group mb-3">
  <input type="text" name="days" id="days" value="1" class="form-control" placeholder="Recipient's username" aria-label="Recipient's username" aria-describedby="basic-addon2">
  <div class="input-group-append">
    <span class="input-group-text" id="basic-addon2">/{/if}{if $cart['价格']=='免费'}{$lang['免费']}{else}{$cart['价格']} {$c['交易币名称']}{/if}{$lang[$cart['周期']]} {$lang[$cart['开通方式']]}</span>
  </div>
</div>
{/if}




           
            <hr class="mb-4">
            <button id="subm" class="btn btn-primary btn-lg btn-block" type="submit" onclick="document.getElementById('subm').innerHTML='正在处理订单,请稍等1分钟...';">提交订单</button>
          </form>
        </div>
      </div>

      <footer class="my-5 pt-5 text-muted text-center text-small">
        <p class="mb-1">{$tempsz['底部版权']}</p>
      </footer>
    </div>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script language="javascript" type="text/javascript">
$(document).ready(function(){
  $("#validatepromo").click(function(){
    $("#validatepromo").html('请稍后');
  xmlhttp=new XMLHttpRequest();
  xmlhttp.open("POST","/index.php/buy/promo/",true);
xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
var p = document.getElementById("promocode").value;
xmlhttp.send("swap=" + p);
xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                  if (xmlhttp.responseText == 'ok') {
                    document.getElementById("validatepromo").innerHTML='成功!';
                    document.getElementById("pcode").innerHTML=p;
                  } else {
                    document.getElementById("validatepromo").innerHTML=xmlhttp.responseText;
                  }

}
}
  });
});
</script>

  </body>
</html>