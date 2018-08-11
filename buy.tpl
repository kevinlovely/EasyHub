{include file="header.tpl" navxz='2' title=$lang['客户中心'] hostname=$c['网站名称']}
{include file="alert.tpl"} 
    <div class="pricing-header px-3 py-3 pt-md-5 pb-md-4 mx-auto text-center">
      <h1 class="display-4">{$lang['订购产品']}</h1>
      <p class="lead">{$c['网站名称']}</p>

<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
  	选择产品分类:
  	{foreach from=$farray item=fs}
  	{if $fs['选中']=='1'}
  	<li class="breadcrumb-item"><a href="{$ROOT}/buy/index/{$fs['id']}/">[{$fs['分类名称']}]</a></li>
  	{else}
  	<li class="breadcrumb-item active" aria-current="page"><a href="{$ROOT}/buy/index/{$fs['id']}/"> {$fs['分类名称']}</a></li>
  	{/if}
    {/foreach}
  </ol>
</nav>
<div class="container">
{foreach from=$buys item=buy nocache}
<div class="card-deck mb-3 text-center">
<div class="card mb-4 box-shadow">
<div class="card-header">
<h4 class="my-0 font-weight-normal">{$buy['名称']}</h4>
</div>
<div class="card-body">
<h1 class="card-title pricing-card-title">{if is_array($buy['周期'])}
                                      {if isset($buy['周期'][0])}
									 ￥{$buy['周期'][0]['价格']}
									  {else}{$lang['无法购买']}{/if}
										{else}{if $buy['价格']=='免费'}{$lang['免费']}{else}￥{$buy['价格']}{/if}{/if}<small class="text-muted">/ {if {$lang[$buy['周期']]}==''}{$buy['周期'][0]['时间']}{else}{$lang[$buy['周期']]}{/if}
<small><small>(剩余库存:{$buy['库存']})</small></small></small></h1>
<ul class="list-unstyled mt-3 mb-4">
	{$buy['描述']}

</ul>
<a href="{if $buy['库存'] == 0}?error=库存不足或无法购买!{else}{$ROOT}/buy/cart/{$buy['id']}/{/if}" class="btn btn-lg btn-block btn-outline-primary">{if $buy['价格']=='免费'}立即获取!{else}立即购买!{/if}</a>
</div>
</div>
{/foreach}
</div>
      {include file="footer.tpl"}