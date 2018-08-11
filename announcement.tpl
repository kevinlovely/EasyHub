{include file="user_header.tpl" bzgg='1' title='公告' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">{$e['公告标题']}</h5>
  <div class="card-body">
  	
  	<h5 class="card-title">{$lang['时间']}: {$e['公告时间']} {$lang['作者']}: {$e['公告作者']}</h5>
    <p class="card-text">{$e['公告内容']}</p>
    <button onclick="javascript:history.go(-1)" type="button" class="btn btn-outline-primary"><<返回</button>