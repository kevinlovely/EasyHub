{include file="user_header.tpl" yhxx='1' title='用户信息' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">用户信息(<a href="{$ROOT}/user/password/">修改密码</a>)</h5>
  <div class="card-body">
<form  method="post">
                       <table class="table table-striped" data-mode="stack">
         <thead>    <tr>
      <th scope="col">项目</th>
      <th scope="col">内容</th>
    </tr></thead><tbody>
		<tr>
			<th>{$lang['姓名']}</th>
			<td><input class="form-control" name="name" type="text" value="{$s['登陆姓名']}"/></td>
		</tr>
		<tr>
			<th>{$lang['国家']}</th>
			<td><select class="form-control" name="country" id="country">
			  {foreach from=$countrys item=country}
			  <option value="{$country}"{if $s['登陆国家']==$country} selected="selected"{/if}>{$country}</option>
{/foreach}</select></td>
		</tr>
		<tr>
			<th>{$lang['地址']}</th>
			<td> <input class="form-control" name="address" type="text" value="{$s['登陆地址']}"/></td>
		</tr>
		<tr>
			<th>{$lang['邮编']}</th>
			<td><input class="form-control" name="zip" type="text" value="{$s['登陆邮编']}"/></td>
		</tr>

		<tr>
			<th>{$mlang['操作']}</th>
			<td><button class="btn btn-primary">{$lang['修改个人信息']}</button></td>
		</tr>
		</thead>
        </table></form>
  </div>
</div>