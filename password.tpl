 {include file="user_header.tpl" yhxx='1' title='修改密码' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">修改密码</h5>
  <div class="card-body">
  	<form class="form-horizontal" method="post">
                       <table class="table table-striped" data-mode="stack">
         <thead>   <tr>   <th scope="col">项目</th>
      <th scope="col">内容</th>
    </tr></thead><tbody>
		<tr>
			<th>{$lang['密码']}</th>
			<td><input class="form-control" name="password" type="password" data-required="true" placeholder="{$lang['输入您的密码']}" id="inputPassword"/></td>
		</tr>

		<tr>
			<th>{$lang['新密码']}</th>
			<td><input class="form-control" name="newpassword" type="password" data-required="true" placeholder="{$lang['输入您的新密码']}" id="inputNewpass" /></td>
		</tr>
		<tr>
			<th>{$lang['重复新密码']} </th>
			<td><input class="form-control" name="renewpassword" type="password" data-required="true" placeholder="{$lang['再次输入您的新密码']}" id="inputRenewpass"/></td>
		</tr>


        </table><button type="submit" class="btn btn-primary">{$lang['修改']}</button></td></form>