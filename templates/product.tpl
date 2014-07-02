
{extends file='./base.tpl'}

{block name=b_title}{$Name}{/block}

{block name=b_pagecss}
<link rel="stylesheet" href="./src/css/index.less" />
{/block}

{block name=b_pagehead}
    {include file="head.inc" current=product}
{/block}

{block name=b_pagebody}


<h1>product</h1>
<ul class="nav nav-tabs" id="myTab">
  <li class="active"><a class="tab" href="#home" data-toggle="tab">Home</a></li>
  <li><a class="profile" href="#profile" data-toggle="tab">Profile</a></li>
  <li><a class="messages" href="#messages" data-toggle="tab">Messages</a></li>
  <li><a class="settings" href="#settings" data-toggle="tab">Settings</a></li>
</ul>

<div class="tab-content">
  <div class="tab-pane active" id="home">Home</div>
  <div class="tab-pane" id="profile">Profile</div>
  <div class="tab-pane" id="messages">Messages</div>
  <div class="tab-pane" id="settings">Settings</div>
</div>


{/block}

{block name=b_pagefoot}
    {include file="foot.inc"}
{/block}

{block name=b_pagejs}
<script type="text/javascript">
    require(['src/tab']);
</script>
{/block}





