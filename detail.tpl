{include file="user_header.tpl" wddd='1' title=$lang['详细管理'] hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">产品管理</h5>
  <div class="card-body">

<form action="repass/" id="formrepass" method="post"></form>  		  
{if $goods['允许用户自己停止']}<form action="stop/" id="formrestop" method="post"></form>{/if}
 
 
{if $goods['开启升级选项'] && $server['周期']!='一次性'}<a href="{$ROOT}/control/package/{$server['id']}/" class="btn btn-primary">{$lang['升级/降级产品']}</a>
{/if}


{if $goods['允许用户自己停止']}<input type="submit"  class="btn btn-primary" id="anstop" value="{$lang['停止/取消服务']}">{/if}

<input type="submit"  class="btn btn-primary" value="{$lang['重置产品密码']}"  id="anpass">

	<div class="btn-group">
	  <button data-toggle="dropdown" class="btn dropdown-toggle" style="background: #4B77BE;color: #FFF;">{$lang['前往控制面板']}  <a class="caret"></a></button>
	  <ul class="dropdown-menu">
{foreach from=$logins item=login}
	    <li style="">{$login}</li>
{/foreach}
	  </ul>
	</div>
{foreach from=$barray key=bname item=bfunction}
	<a href="action/{$bfunction}/" class="btn">{$bname}</a>
{/foreach}
	  <br><cpkzmbxq>
	  {$plug['产品控制面板详情']}</cpkzmbxq><br>
	    	<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">项目</th>
      <th scope="col">内容</th>
    </tr>
  </thead>
  <tbody>


{if $goods['隐藏域名配置']!='1'}

    <tr>
      <th scope="row">{$lang['主域名(服务名)']}</th>
      <td>{$server['域名']}</td>
    </tr>

{/if}


{if $server['密码']!=''}

    <tr>
      <th scope="row">{$lang['产品登录信息']}</th>
      <td>{$lang['用户名']}：{$server['用户名']}<br>
	      	{$lang['密码']}：{$server['密码']}</td>
    </tr>


{/if}



    <tr>
      <th scope="row">{$lang['产品名称']}</th>
      <td>{$goods['名称']}</td>
    </tr>


{if $server['ip地址']!=''}
		<tr>
	      <th scope="row">{$lang['IP解析']}</th>
	      <td>{$server['ip地址']}</td>
	    </tr>
{/if}
{if $server['专用IP']!=''}
		<tr>
	      <th scope="row">{$lang['专用IP']}</th>
	      <td>{$server['专用IP']}</td>
	    </tr>
{/if}
{if $server['指定IP']!=''}
		<tr>
	      <th scope="row">{$lang['指定IP']}</th>
	      <td>{$server['指定IP']}</td>
	    </tr>
{/if}
{if $server['主机名']!=''}
	    <tr>
	      <th scope="row">{$lang['CNAME解析']}</th>
	      <td>{$server['主机名']}</td>
	    </tr>
{/if}
{if $server['DNS服务器1']!='' or $server['DNS服务器2']!='' or $server['DNS服务器3']!='' or $server['DNS服务器4']!='' or $server['DNS服务器5']!=''}
		<tr>
	      <th scope="row">{$lang['DNS解析(NS)']}</th>
	      <td>
	      	{if $server['DNS服务器1']!=''}{$server['DNS服务器1']}{/if}
			{if $server['DNS服务器2']!=''}<br>{$server['DNS服务器2']}{/if}
			{if $server['DNS服务器3']!=''}<br>{$server['DNS服务器3']}{/if}
			{if $server['DNS服务器4']!=''}<br>{$server['DNS服务器4']}{/if}
			{if $server['DNS服务器5']!=''}<br>{$server['DNS服务器5']}{/if}
	      </td>
	    </tr>
{/if}
	    <tr>
	      <th scope="row">{$lang['价格 / 周期']}</th>
	      <td>{if is_array($server['周期'])}
				{$server['周期']['名称']} {$server['周期']['价格']}{$c['交易币名称']}/{$server['周期']['时间']}天
			{else}
				{$goods['价格']}{if $goods['价格']!='免费'} {$c['交易币名称']}{/if} / {$server['周期']}
			{/if}</td>
	    </tr>
{if $server['开通时间']!=''}
	    <tr>
	      <th scope="row">{$lang['开通时间']}</th>
	      <td>{$server['开通时间']}</td>
	    </tr>

{/if}
{if $server['到期时间']!=''}
	    <tr>
	      <th scope="row">{$lang['到期时间']}</th>
	      <td>{$server['到期时间']}</td>
	    </tr>
{/if}
{foreach from=$options item=option}
		<tr>
	      <th scope="row">{$option['名称']}</th>
	      <td>{$option['值']}</td>
	    </tr>
{/foreach}
{foreach from=$configs item=config}
		<tr>
	      <th scope="row">{$config['名字']}</th>
	      <td>{$config['内容']}</td>
	    </tr>
{/foreach}




	    <tr>
	      <th width="250">{$lang['续期产品']}</th>
	      <td>
		{if !$goods['禁止续费'] && $server['周期']!='一次性'}
	  		<form action="pay/" method="post"><p>
	        
			{if is_array($goods['周期'])}
				<select name="cycleid">
				{foreach $goods['可续期周期'] as $num=>$row nocache}
					<option value="{$num}">{$row['名称']} {$row['价格']}{$c['交易币名称']}/{$row['时间']}天</option>
				{foreachelse}
					无法续费
				{/foreach}
				</select>
{else}
			
			{if $goods['价格']!='免费'}
	          {$mlang['续费时长']}:<input name="day" value="1" type="text"  id="inputDay" onkeyup="this.value=this.value.replace(/\D|^0/g,'')" />
			  {if $goods['周期']=='日付'}/{$mlang['日']}
				{elseif $goods['周期']=='月付'}/{$mlang['月']}
				{elseif $goods['周期']=='年付'}/{$mlang['年']}{/if}
			{/if}
			
			{/if}
			<input type="submit"  class="btn btn-primary"  value="{$lang['续期']}"><br>
			{if !is_array($goods['周期'])}{if $goods['价格']!='免费'}{$lang['您目前拥有预存款']} {$s['登陆预存款']} {$c['交易币名称']}{$lang['，最多可以激活该产品']} {$payday} /{$goods['周期']}{else}{$lang['免费产品会自动帮你续期到目前最大的时间!!']}{if $goods['周期']=='日付'}{$lang['30日']}{elseif $goods['周期']=='月付'}{$lang['1月']}{elseif $goods['周期']=='年付'}{$lang['1年']}{/if}{/if}{else}{$lang['您目前拥有预存款']} {$s['登陆预存款']} {$c['交易币名称']}{/if}
			
			</form>
		{else}
			{$mlang['该产品禁止续费']}
		{/if}
	      </td>
	    </tr>	    <tr>
	      <th width="250">{$lang['状态']}</th>
	      <td>
	  		<!-- {if $server['状态']=='激活'} -->
					<a class="btn btn-success">{$lang['激活']}</a>
					<!-- {elseif $server['状态']=='等待审核'} -->
					<a class="btn btn-info">{$lang['等待审核']}</a>
					<!-- {elseif $server['状态']=='暂停'} -->
					<a class="btn btn-warning">{$lang['暂停']}</a>
					<!-- {elseif $server['状态']=='停止'} -->
					<a class="btn btn-info" style="background-color: #b94a48;">{$lang['停止']}</a>
					<!-- {elseif $server['状态']=='驳回'} -->
					<a class="btn btn-info" style="background-color: #333333;">{$lang['驳回']}</a>
					<!-- {elseif $server['状态']=='等待付款'} -->
					<a class="btn btn-default">{$lang['等待付款']}</a>
					<!-- {else} -->
					<a class="btn btn-info">{$server['状态']}</a>
					<!-- {/if} -->
	      </td>
	    </tr>
	  
	  </thead>
        </table>
      </div>
			


	
  </div>
</div><script language="javascript" type="text/javascript">
    ;(function($) {
        $(function() {
            $('#anpass').bind('click', function(e) {
                if(confirm("考虑到安全问题，控制中心不提供自定义修改产品密码，您可以在产品面板自定义修改密码，如果您忘记了修改的密码，请点击确定，系统将为您重置为一个10位随机密码。")){
				$('#formrepass').submit();
				}
            });
        });
		/**{if $goods['允许用户自己停止']}**/
        $(function() {
            $('#anstop').bind('click', function(e) {
                if(confirm("{$lang['如果您的产品出现问题,或者不想使用服务了,可以选择停止产品并取消服务,但是这个操作不能逆转,并且将不返还任何预存款!!']}")){
				$('#formrestop').submit();
				}
            });
        });/**{/if}**/

	})(jQuery);
	
	

</script>
