
{extends file='./base.tpl'}

{block name=b_title}{$Name}{/block}

{block name=b_pagecss}
{/block}

{block name=b_pagehead}
    {include file="head.inc" current=product}
{/block}

{block name=b_pagebody}
<div class="bs-docs-header" id="content">
    <div class="container">
        <h1>全局 CSS 样式</h1>
        <p>设置全局 CSS 样式；基本的 HTML 元素均可以通过 class 设置样式并得到增强效果；还有先进的栅格系统。</p>
    </div>
</div>
<div class="bs-example" style="width: 1200px;margin:0 auto;">
    <ul class="nav nav-tabs" id="myTab">
      <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
      <li><a href="#profile" data-toggle="tab">Profile</a></li>
      <li><a href="#messages" data-toggle="tab">Messages</a></li>
      <li><a href="#settings" data-toggle="tab">Settings</a></li>
    </ul>

    <div class="tab-content">
      <div class="tab-pane active" id="home">Home</div>
      <div class="tab-pane" id="profile">Profile</div>
      <div class="tab-pane" id="messages">Messages</div>
      <div class="tab-pane" id="settings">Settings</div>
    </div>
</div>


{/block}

{block name=b_pagefoot}
    {include file="foot.inc"}
{/block}

{block name=b_pagejs}

{/block}





