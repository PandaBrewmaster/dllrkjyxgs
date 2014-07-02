<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>{$Name}</title>
<link rel="stylesheet" href="./dist/css/bootstrap.min.css">

<style type="text/css">
.nav{
    padding-left: 270px;
    /*background: url(./dist/css/logo.png) no-repeat 20px 0;*/
}
.table>thead>tr>th,.table>tbody>tr>th,.table>tfoot>tr>th,.table>thead>tr>td,.table>tbody>tr>td,.table>tfoot>tr>td {
    /*border: 1px solide #eee;*/
    border-top: none;
}
.copyright{
    text-align: center;
}
.carousel {
    width: 1200px;
    height: 309px;
}
</style>
<!-- <script src="./dist/js/jquery.min.js"></script> -->
<script src="http://s1.bdstatic.com/r/www/cache/ecom/esl/1-8-2/esl.js"></script>
<script>
require.config({
    // 'baseUrl': './src',
    // 'paths': {
    //     'css': 'common/js/esl/css',
    //     'js': 'common/js/esl/js',
    //     'text': 'common/js/esl/text'
    // },
    'packages': 
        [
        {
            'name': 'jquery',
            'location': 'dist/js',
            'main': 'jquery.min.js'
        },
        // {
        //     'name': 'history',
        //     'location': './home/history',
        //     'main': 'main'
        // }
    ]
});
</script>
</head>
<body>
<ul class="nav nav-tabs">
    <li{if $current == "index"} class="active"{/if}><a href="./index.php">{#index#}</a></li>
    <li{if $current == "product"} class="active"{/if}><a href="./product.php">{#product#}</a></li>
    <li{if $current == "goodcase"} class="active"{/if}><a href="./goodcase.php">{#goodcase#}</a></li>
    <li{if $current == "price"} class="active"{/if}><a href="./price.php">{#price#}</a></li>
    <li{if $current == "share"} class="active"{/if}><a href="./share.php">{#share#}</a></li>
    <li{if $current == "aboutus"} class="active"{/if}><a href="./aboutus.php">{#aboutus#}</a></li>
</ul>