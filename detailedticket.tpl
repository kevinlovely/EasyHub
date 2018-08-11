{include file="user_header.tpl" gdxt='1' title='工单详情' hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">{$lang['服务单详情']}</h5>
  <div class="card-body">
  	<h5 class="card-title">{$lang['工单标题']}： {$t['主题']}</h5>

{$lang[$t['状态']]}	
{$lang['提交时间']}： {$t['提交时间']}
{$lang['最后时间']}： {$t['最后时间']}

<br><br>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">用户</th>
      <th scope="col">时间</th>
      <th scope="col">内容</th>
    </tr>
  </thead>
  <tbody>{foreach from=$tks item=tk}
    <tr>
      {if $tk['回复类型']=='1'}<th>用户:{$tk['名字']} (ID: {$tk['用户id']}){/if}
{if $tk['回复类型']=='2'}<th scope="row"><font color="red">客服:{$tk['名字']} (ID: {$tk['客服id']})</font>{/if}</th>
      <td>{$tk['时间']}</td>
      <td>{$tk['信息']}</td>
    </tr>

{/foreach}
  </tbody>
</table>
<br>
<div id="addcomments">
    <div id="respond" class="comment-respond">
    <form action="" method="post" id="commentform" class="comment-form">
    <p class="comment-form-comment"><label for="comment">{$lang['工单回复']}</label>  <textarea id="comment" class="form-control" name="reply" cols="45" rows="8"></textarea></p>
    <p class="form-submit"><input name="submit" type="submit" id="submit" class="btn btn-primary btn-lg btn-block" value="{$lang['回复']}"></p>
    </form>
    </div><!-- #respond -->
    </div>
  </div>
</div>