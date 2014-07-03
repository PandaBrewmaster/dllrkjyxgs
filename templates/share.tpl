
{extends file='./base.tpl'}

{*{block name=b_title}{$Name}{/block}*}

{block name=b_pagecss}
{/block}

{block name=b_pagehead}
    {include file="head.inc" current=share}
{/block}

{block name=b_pagebody}
<div class="bs-example" style="width: 1200px;margin:0 auto;">
<h1>share</h1>
</div>
{/block}

{block name=b_pagefoot}
    {include file="foot.inc"}
{/block}

{block name=b_pagejs}
<script type="text/javascript">
</script>
{/block}



