{include file="user_header.tpl" bzgg='1' title='公告' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">公告列表</h5>
  <div class="card-body">
        <table data-wow-delay="0.3s" class="table table-striped" data-mode="stack">
         <thead>
			    <tr>
			        <th>{$lang['标题']}</th>
			        <th>{$lang['时间']}</th>
			    </tr>
			</thead>
              <tbody>
                 {foreach from=$news item=new}
				<tr>
                  <td><a href="{$ROOT}/index/announcement/{$new['公告ID']}/">{$new['公告标题']}</a></td>
         <td>{$new['公告时间']}</td>
                </tr>
				{/foreach}
              </tbody>
        </table>
        <div class="btn-group" role="group" aria-label="Basic example">
  <button onclick="s();" type="button" class="btn btn-secondary">上一页</button>
  <button type="button" class="btn btn-secondary">{$lang['总共']}:{$t['总页数']}{$lang['页']} {$lang['当前']}:{$t['当前页数']}{$lang['页']}</button>
  <button onclick="x();" type="button" class="btn btn-secondary">下一页</button>
</div>

  </div>
</div>