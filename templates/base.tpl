<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {* 更好的办法，直接从文件中读取 *}
    {config_load file="cn.conf" section="title"}
    <title>{#title#}</title>
    {*<title>{block name=b_title}{/block}</title>*}
    {*<link rel="stylesheet" href="./src/css/bootstrap.css">*}
    {*<link rel="stylesheet" href="./src/css/bootstrap-theme.css">*}
    <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.2.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://v3.bootcss.com/assets/css/docs.min.css">
    <style type="text/css">
body {
  font-family: "Helvetica Neue", Helvetica, Microsoft Yahei, Hiragino Sans GB, WenQuanYi Micro Hei, sans-serif;
}

    </style>
    {block name=b_pagecss}{/block}
    <script src="http://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <script src="./src/js/bootstrap.js"></script>
</head>

<body>
    {block name=b_pagehead}{/block}
    {block name=b_pagebody}{/block}
    {block name=b_pagefoot}{/block}

    <script>
    {*
    require.config({
        paths : {
            js: 'src'
        },
        'packages': 
            [
            {
                'name': 'jquery',
                'location': 'src/common',
                'main': 'jquery.min.js'
            }
        ]
    });
    
        require.config({
            baseUrl: '/src/js/',
            paths : {
                js: '{$webRoot}views/js'
            }
        });

        统计代码
        var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://");
        document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3Fb0f014de5697a9943aa44e7f39115a79' type='text/javascript'%3E%3C/script%3E"));
    *}
    </script>
    {block name=b_pagejs}{/block}
</body>
</html>
