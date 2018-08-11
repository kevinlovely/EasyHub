{include file="user_header.tpl" gdxt='1' title=$lang['客户中心'] hostname=$c['网站名称']}
<div class="card">
  <h5 class="card-header">提交工单</h5>
  <div class="card-body">
<form method="post" action="">

            <p><label for="name">{$lang['姓名']}:*</label> <input type="text" class="form-control" name="name" id="name" tabindex="1" /></p>
            <p><label for="email">{$lang['电子邮件']}:*</label> <input type="text" class="form-control" name="email" id="email" tabindex="2" /></p>
            <p><label for="comments">{$lang['主题']}:*</label> <input type="text" class="form-control" name="subject" id="email" tabindex="2" /></p>
            <p><label for="comments">{$lang['内容']}:*</label> <textarea  class="form-control" name="message" id="comments" cols="12" rows="6" tabindex="3"></textarea></p>
            <p><input name="submit" type="submit" id="submit" class="btn btn-primary btn-lg btn-block" value="{$lang['提交']}" tabindex="4" /></p>

</form>
  </div>
</div>