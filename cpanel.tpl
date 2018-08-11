{include file="user_header.tpl" wddd='1' title=$lang['客户中心'] hostname=$c['网站名称']}
          <h2>我的订单</h2>
          <div class="table-responsive">
            <table class="table table-striped table-sm">
              <thead>
                <tr>
                  <th>主域名</th>
                  <th>类型</th>
                  <th>周期</th>
                  <th>状态</th>
                  <th>开通时间</th>
                  <th>到期时间</th>
                  <th>操作</th>
                </tr>
              </thead>
              <tbody>
                {foreach from=$servers item=server}
                <tr>
                  <td><a href="{$ROOT}/control/invoice/{$server['id']}/">{if $server['域名']=='无需主域名'}{$server['用户名']}{else}{$server['域名']}{/if}</a></td>
                  <td>{$server['产品类型']}</td>
                  <td>{if is_array($server['周期'])}{$server['周期']['名称']}{else}{$server['周期']}{/if}</td>
                  <td>          <!-- {if $server['状态']=='激活'} -->
          <a>{$lang['激活']}</a>
          <!-- {elseif $server['状态']=='等待审核'} -->
          <a>{$lang['等待审核']}</a>
          <!-- {elseif $server['状态']=='暂停'} -->
          <a>{$lang['暂停']}</a>
          <!-- {elseif $server['状态']=='停止'} -->
          <a>{$lang['停止']}</a>
          <!-- {elseif $server['状态']=='驳回'} -->
          <a>{$lang['驳回']}</a>
          <!-- {elseif $server['状态']=='等待付款'} -->
          <a>{$lang['等待付款']}</a>
          <!-- {else} -->
          <a>{$server['状态']}</a>
          <!-- {/if} --></td>
                  <td>{$server['开通时间']}</td>
                  <td>{$server['到期时间']}</td>
                  <td><div class="btn-group"> 
            {if $server['状态']=='等待付款'}
              <a href="{$ROOT}/control/invoice/{$server['id']}/" class="btn btn-primary">{$lang['订单']}</a>
            {else} 
                    <a class="btn btn-outline-primary" href="{$ROOT}/control/detail/{$server['id']}/" class="btn btn-{if $server['状态']!='激活' and $server['状态']!='暂停'}default{else}primary{/if}">{$lang['管理']}</a>
            {/if}</td>
                </tr>
{/foreach}




              </tbody>
            </table>
          </div>
        </main>
      </div>
    </div>