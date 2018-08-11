<?php
$cjafile = SWAP_PLUGINS . 'mbsysjk' . SWAP_DIR_END . 'mbsysjk.php';
$template_config = array(
	array(
		'name' => '<h1>EasyHub 匠心巨制</h1>',
		'type' => 'txt',
		'description' => 'By kevin2018mc&凯三岁 QQ3407053348',
	),

	array(
		'name' => '网站logo',
		'type' => 'text',
		'description' => '请把logo图片丢到<code>模板目录/images/</code>文件夹下,然后填写文件名!',
	),
	array(
		'name' => '首页副标题',
		'type' => 'text',
		'description' => '如果想显示随机文艺句,请填<code>[一句API]</code>!',
	),
	array(
		'name' => '首页产品1',
		'type' => 'texts',
		'description' => 'HTML代码,自由编辑!技巧:可以只改中文!',
	),
	array(
		'name' => '首页产品2',
		'type' => 'texts',
		'description' => 'HTML代码,自由编辑!技巧:可以只改中文!',
	),
	array(
		'name' => '首页产品3',
		'type' => 'texts',
		'description' => 'HTML代码,自由编辑!技巧:可以只改中文!',
	),
	array(
		'name' => '用户中心填充',
		'type' => 'text',
		'description' => '引用一句API强行填充空白,请填写:开/关!',
	),
	array(
		'name' => 'QQ群链接',
		'type' => 'text',
		'description' => '请填写http:// https://开头的URL链接',
	),
	array(
		'name' => '底部版权',
		'type' => 'texts',
		'description' => 'HTML代码,自由编辑!技巧:可以只改中文!',
	),
	array(
		'name' => '底部导航',
		'type' => 'texts',
		'description' => 'HTML代码,自由编辑!技巧:可以只改中文!',
	),
);

if (file_exists($cjafile) == true) {
	$template_config[] = array('name' => '管理权限用户', 'type' => 'text', 'description' => '哪些用户拥有进入管理权限 用逗号分开 例如root,admin');
	$template_config[] = array('name' => '管理独立密码', 'type' => 'text', 'description' => '管理直接登陆的独立的密码');
}