
{extends file='./base.tpl'}

{*{block name=b_title}{$Name}{/block}*}

{block name=b_pagecss}
{/block}

{block name=b_pagehead}
    {include file="head.inc" current=index}
{/block}

{block name=b_pagebody}
<div class="bs-docs-header" id="content">
    <div class="container">
        <h1>全局 CSS 样式</h1>
        <p>设置全局 CSS 样式；基本的 HTML 元素均可以通过 class 设置样式并得到增强效果；还有先进的栅格系统。</p>
    </div>
</div>
<div class="bs-example" style="width: 1200px;margin:0 auto;">
    <div id="carousel-generic" class="carousel slide" data-ride="carousel" data-interval="1000">
        <ol class="carousel-indicators">
            <li data-target="#carousel-generic" data-slide-to="0" class="active"></li>
            <li data-target="#carousel-generic" data-slide-to="1"></li>
            <li data-target="#carousel-generic" data-slide-to="2"></li>
        </ol>
    <div class="carousel-inner">
        <div class="item active">
            <img  alt="First slide" src="./src/css/img/1.png">
        </div>
        <div class="item">
            <img  alt="Second slide" src="./src/css/img/2.png"></div>
        <div class="item">
            <img alt="Third slide" src="./src/css/img/3.png"></div>
        </div>
        <a class="left carousel-control" href="#carousel-generic" data-slide="prev">
            <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-generic" data-slide="next">
            <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
    </div>
</div>


{/block}

{block name=b_pagefoot}
    {include file="foot.inc"}
{/block}

{block name=b_pagejs}
<script type="text/javascript">
// $('.carousel').carousel();
    // require(['js/carousel']);
</script>
{/block}



