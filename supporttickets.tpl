{include file="user_header.tpl" gdxt='1' title='工单系统' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">工单系统</h5>
  <div class="card-body">
        <table data-wow-delay="0.3s" class="table table-striped" data-mode="stack">
         <thead>
			    <tr>
			        <th>{$lang['日期']}</th>
			        <th>{$lang['主题']}</th>
			        <th>{$lang['状态']}</th>
			        <th>{$lang['最近更新']}</th>
			    </tr>
			</thead>
              <tbody>
                {foreach from=$tickets item=ticket}
				<tr>
                  <td><a href="{$ROOT}/ticket/detailed/{$ticket['id']}/">{$ticket['提交时间']}</a></td>
                  <td><a href="{$ROOT}/ticket/detailed/{$ticket['id']}/">{$ticket['主题']}</a></td>
                  <td><a href="{$ROOT}/ticket/detailed/{$ticket['id']}/">{$lang[$ticket['状态']]}</a></td>
                  <td><a href="{$ROOT}/ticket/detailed/{$ticket['id']}/">{$ticket['最后时间']}</a></td>
                </tr>
				{/foreach}
              </tbody>
        </table>
        <div class="btn-group" role="group" aria-label="Basic example">
  <button onclick="s();" type="button" class="btn btn-secondary">上一页</button>
  <button type="button" class="btn btn-secondary">{$lang['总共']}:{$t['总页数']}{$lang['页']} {$lang['当前']}:{$t['当前页数']}{$lang['页']}</button>
  <button onclick="x();" type="button" class="btn btn-secondary">下一页</button>
</div>


	


    <a href="{$ROOT}/ticket/submit/" class="btn btn-primary">提交工单>></a>
  </div>
</div>
<script type="text/javascript">
	function s() {
		window.location.href="{$t['上一页连接']}";
	}
	function x() {
		window.location.href="{$t['下一页连接']}";
	}
</script>
