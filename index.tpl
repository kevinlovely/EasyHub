{include file="header.tpl" navxz='1' title=$lang['客户中心'] hostname=$c['网站名称']}

    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">{$c['网站名称']}</h1>
      <p class="lead">

        

{if {$tempsz['首页副标题']}=='[一句API]'}
<script type="text/javascript" src="http://yiju.ml/api/word.php?m=js"></script>
<script>document.write("<div>");yiju(false);document.write("</div>");</script></p></div>
          {else}
                 {$tempsz['首页副标题']}
          {/if}

</p>

    <div class="container">
      <div class="card-deck mb-3 text-center">
        {$tempsz['首页产品1']}
        {$tempsz['首页产品2']}
        {$tempsz['首页产品3']}

</div>
      {include file="footer.tpl"}