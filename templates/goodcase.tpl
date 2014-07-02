
{extends file='./base.tpl'}

{block name=b_title}{$Name}{/block}

{block name=b_pagecss}
<link rel="stylesheet" href="./src/css/goodcase.less" />
{/block}

{block name=b_pagehead}
    {include file="head.inc" current=goodcase}
{/block}

{block name=b_pagebody}

<h1>goodcase</h1>
    <a class="sr-only" href="#content">Skip to main content</a>





    <!-- Callout for the old docs link -->
    

    <div class="container bs-docs-container">
      <div class="row">
        <div class="col-md-3">
          <div class="bs-sidebar hidden-print" role="complementary">
            <ul class="nav bs-sidenav">
                          
                <li>
  <a href="#js-overview">概览</a>
  <ul class="nav">
    <li><a href="#js-individual-compiled">单个还是全部引入</a></li>
    <li><a href="#js-data-attrs">Data属性</a></li>
    <li><a href="#js-programmatic-api">编程式API</a></li>
    <li><a href="#js-noconflict">避免冲突</a></li>
    <li><a href="#js-events">事件</a></li>
  </ul>
</li>
<li><a href="#transitions">过渡效果</a></li>
<li>
  <a href="#modals">模态框</a>
  <ul class="nav">
    <li><a href="#modals-examples">案例</a></li>
    <li><a href="#modals-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#dropdowns">下拉菜单</a>
  <ul class="nav">
    <li><a href="#dropdowns-examples">案例</a></li>
    <li><a href="#dropdowns-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#scrollspy">滚动监听</a>
  <ul class="nav">
    <li><a href="#scrollspy-examples">案例</a></li>
    <li><a href="#scrollspy-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#tabs">标签页</a>
  <ul class="nav">
    <li><a href="#tabs-examples">案例</a></li>
    <li><a href="#tabs-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#tooltips">工具提示</a>
  <ul class="nav">
    <li><a href="#tooltips-examples">案例</a></li>
    <li><a href="#tooltips-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#popovers">弹出框</a>
  <ul class="nav">
    <li><a href="#popovers-examples">案例</a></li>
    <li><a href="#popovers-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#alerts">警告框</a>
  <ul class="nav">
    <li><a href="#alerts-examples">案例</a></li>
    <li><a href="#alerts-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#buttons">按钮</a>
  <ul class="nav">
    <li><a href="#buttons-examples">案例</a></li>
    <li><a href="#buttons-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#collapse">折叠</a>
  <ul class="nav">
    <li><a href="#collapse-examples">案例</a></li>
    <li><a href="#collapse-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#carousel">轮播</a>
  <ul class="nav">
    <li><a href="#carousel-examples">案例</a></li>
    <li><a href="#carousel-usage">用法</a></li>
  </ul>
</li>
<li>
  <a href="#affix">Affix</a>
  <ul class="nav">
    <li><a href="#affix-examples">案例</a></li>
    <li><a href="#affix-usage">用法</a></li>
  </ul>
</li>

                      
            </ul>
          </div>
        </div>
        <div class="col-md-9" role="main">
          


  <!-- Overview
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="js-overview">概览</h1>
    </div>

    <h3 id="js-individual-compiled">单个还是全部引入</h3>
    <p>插件可以单个引入（使用Bootstrap提供的单个<code>*.js</code>文件），或一次性全部引入（使用<code>bootstrap.js</code>或压缩版的<code>bootstrap.min.js</code>）。</p>

    <div class="bs-callout bs-callout-danger">
      <h4>不要将两份文件全部引入</h4>
      <p><code>bootstrap.js</code>和<code>bootstrap.min.js</code>同样是包含了所有插件。区别是：一个没有压缩，一个进行了压缩。</p>
    </div>

    <div class="bs-callout bs-callout-danger">
      <h4>插件之间的依赖</h4>
      <p>某些插件和CSS组件依赖于其它插件。如果你是单个引入每个插件的，请确保在文档中检查插件之间的依赖关系。注意，所有插件都依赖jQuery（也就是说，jQuery必须在所有插件<strong>之前</strong>引入页面）。 <a href="https://github.com/twbs/bootstrap/blob/v3.0.3/bower.json"><code>bower.json</code></a>文件中列出了所支持的jQuery版本。</p>
    </div>

    <h3 id="js-data-attrs">Data属性</h3>
    <p>你可以仅仅通过data属性API就能使用所有的Bootstrap插件，无需写一行JavaScript代码。这是Bootstrap中的一等API，也应该是你的首选方式。</p>

    <p>话又说回来，在某些情况下可能需要将此功能关闭。因此，我们还提供了关闭data属性API的方式，即解除绑定到文档命名空间上的所有事件<code>data-api</code>。就像下面这样：
<div class="highlight">
<pre><code class="language-js">document.off<span class="string">'.data-api'</span></code></pre>

</div>

    <p>另外，如果是针对某个特定的插件，只需在data-api前面添加那个插件的名称作为命名空间，如下：</p>
<div class="highlight">
<pre><code class="language-js">document.off<span class="string">'.alert.data-api'</span></code></pre>

</div>

    <h3 id="js-programmatic-api">编程式API</h3>
    <p>我们还提供了所有Bootstrap插件的纯JavaScript API。所有公开的API都是支持单独或链式调用的，并且返回其所操作的元素集合（注：和jQuery的调用形式一致）。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'.btn.danger'</span>.button<span class="string">'toggle'</span>.addClass<span class="string">'fat'</span></code></pre>

</div>

    <p>所有方法都可以接受一个可选的option对象作为参数，或者一个代表特定方法的字符串，或者什么也不提供（在这种情况下，插件将会以默认值初始化）：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.modal                      <span class="comment">// 使用默认值初始化</span>
<span class="string">'#myModal'</span>.modal keyboard: <span class="literal">false</span>    <span class="comment">// 初始化。不支持键盘导航</span>
<span class="string">'#myModal'</span>.modal<span class="string">'show'</span>                <span class="comment">// 初始化并立即展示&lt;/p&gt;</span></code></pre>

</div>

    <p>每个插件还通过<code>Constructor</code>属性暴露了其自身的构造器函数：<code>.fn.popover.Constructor</code>。如果你想获取某个插件的实例，可以直接从页面元素内获取：<code>'[rel=popover]'.data'popover'</code>。</p>

    <h3 id="js-noconflict">避免冲突</h3>
    <p>某些时候可能需要将Bootstrap插件与其他UI框架共同使用。在这种情况下，命名空间冲突随时可能发生。如果不幸发生了这种情况，你可以通过调用插件的<code>.noConflict</code>方法恢复原始值。</p>
<div class="highlight">
<pre><code class="language-js"><span class="keyword">var</span> bootstrapButton = .fn.button.noConflict <span class="comment">// return .fn.button to previously assigned value</span>
.fn.bootstrapBtn = bootstrapButton            <span class="comment">// give .bootstrapBtn the Bootstrap functionality</span></code></pre>

</div>

    <h3 id="js-events">事件</h3>
    <p>Bootstrap为大部分插件所具有的动作提供了自定义事件。一般来说，这些事件都有不定式和过去式两种动词形式，例如，不定式形式的动词（例如<code>show</code>）表示其在事件开始时被触发；而过去式动词（例如<code>shown</code>）表示其在动作直接完毕之后被触发。</p>
    <p>从3.0.0开始，所有的Bootstrap事件都采用了命名空间。</p>
    <p>所有以不定式形式的动词命名的事件都提供了<code>preventDefault</code>功能。这就赋予你在动作开始执行前将其停止的能力。 </p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.on<span class="string">'show.bs.modal'</span>, <span class="function"><span class="keyword">function</span> <span class="params">e</span> </span>
  <span class="keyword">if</span> !data <span class="keyword">return</span> e.preventDefault <span class="comment">// stops modal from being shown</span>
</code></pre>

</div>

    <div class="bs-callout bs-callout-warning" id="callout-third-party-libs">
      <h4>第三方工具库</h4>
      <p><strong>Bootstrap官方不提供对第三方JavaScript工具库的支持</strong>，例如Prototype或jQuery UI。除了<code>.noConflict</code>和采用命名空间的事件，还可能会有兼容性方面的问题，这就需要你自己来处理了。你可以在此<a href="http://groups.google.com/group/twitter-bootstrap">邮件列表</a>获取帮助。</p>
    </div>
  </div>



  <!-- Transitions
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="transitions">过渡效果<small>transition.js</small></h1>
    </div>
    <h3>关于过渡效果</h3>
    <p>对于简单的过渡效果，只需将<code>transition.js</code>和其它JS文件一起引入即可。如果你使用的是编译（或压缩）好的<code>bootstrap.js</code>文件，就无需再单独将其引入了。</p>
    <h3>What's inside</h3>
    <p>Transition.js是针对 <code>transitionEnd</code>事件的一个基本助手工具，也是对CSS过渡效果的模拟。它被其它插件用来检测当前浏览器对CSS过渡效果是否支持。</p>
  </div>



  <!-- Modal
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="modals">模态框 <small>modal.js</small></h1>
    </div>

    <h2 id="modals-examples">案例</h2>
    <p>模态框经过了优化，更加灵活，以弹出对话框的形式出现，具有最小和最实用的功能集。</p>

    <div class="bs-callout bs-callout-warning" id="callout-stacked-modals">
      <h4>不支持模态框重叠</h4>
      <p>千万不要在一个模态框上重叠另一个模态框。要想同时支持多个模态框，需要自己写额外的代码来实现。</p>
    </div>
    <div class="bs-callout bs-callout-warning">
      <h4>对于移动设备的附加说明</h4>
      <p>本文档针对移动设备上使用模态框有一些附加说明。请参考<a href="../getting-started#mobile-modals">浏览器支持</a>章节。</p>
    </div>

    <h3>静态案例</h3>
    <p>以下模态框包含了模态框的头、体和一组在放置于底部的按钮。</p>
    <div class="bs-example bs-example-modal">
      <div class="modal">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
              <h4 class="modal-title">Modal title</h4>
            </div>
            <div class="modal-body">
              <p>One fine body&hellip;</p>
            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              <button type="button" class="btn btn-primary">Save changes</button>
            </div>
          </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;modal fade&quot;&gt;
  &lt;div class=&quot;modal-dialog&quot;&gt;
    &lt;div class=&quot;modal-content&quot;&gt;
      &lt;div class=&quot;modal-header&quot;&gt;
        &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; aria-hidden=&quot;true&quot;&gt;&amp;times;&lt;/button&gt;
        &lt;h4 class=&quot;modal-title&quot;&gt;Modal title&lt;/h4&gt;
      &lt;/div&gt;
      &lt;div class=&quot;modal-body&quot;&gt;
        &lt;p&gt;One fine body&amp;hellip;&lt;/p&gt;
      &lt;/div&gt;
      &lt;div class=&quot;modal-footer&quot;&gt;
        &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot; data-dismiss=&quot;modal&quot;&gt;Close&lt;/button&gt;
        &lt;button type=&quot;button&quot; class=&quot;btn btn-primary&quot;&gt;Save changes&lt;/button&gt;
      &lt;/div&gt;
    &lt;/div&gt;&lt;!-- /.modal-content --&gt;
  &lt;/div&gt;&lt;!-- /.modal-dialog --&gt;
&lt;/div&gt;&lt;!-- /.modal --&gt;</code></pre>

</div>

    <h3>动态演示</h3>
    <p>点击下面的按钮即可通过JavaScript启动一个模态框。此模态框将从上到下、逐渐浮现到页面前。</p>
    <!-- sample modal content -->
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">

          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
            <h4 class="modal-title" id="myModalLabel">Modal Heading</h4>
          </div>
          <div class="modal-body">
            <h4>Text in a modal</h4>
            <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula.</p>

            <h4>Popover in a modal</h4>
            <p>This <a href="#" role="button" class="btn btn-default popover-test" title="A Title" data-content="And here's some amazing content. It's very engaging. right?">button</a> should trigger a popover on click.</p>

            <h4>Tooltips in a modal</h4>
            <p><a href="#" class="tooltip-test" title="Tooltip">This link</a> and <a href="#" class="tooltip-test" title="Tooltip">that link</a> should have tooltips on hover.</p>

            <hr>

            <h4>Overflowing text to show scroll behavior</h4>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
            <p>Cras mattis consectetur purus sit amet fermentum. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Morbi leo risus, porta ac consectetur ac, vestibulum at eros.</p>
            <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Vivamus sagittis lacus vel augue laoreet rutrum faucibus dolor auctor.</p>
            <p>Aenean lacinia bibendum nulla sed consectetur. Praesent commodo cursus magna, vel scelerisque nisl consectetur et. Donec sed odio dui. Donec ullamcorper nulla non metus auctor fringilla.</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>

        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="bs-example" style="padding-bottom: 24px;">
      <button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
        Launch demo modal
      </button>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">  &lt;!-- Button trigger modal --&gt;
&lt;button class=&quot;btn btn-primary btn-lg&quot; data-toggle=&quot;modal&quot; data-target=&quot;#myModal&quot;&gt;
  Launch demo modal
&lt;/button&gt;

&lt;!-- Modal --&gt;
&lt;div class=&quot;modal fade&quot; id=&quot;myModal&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;myModalLabel&quot; aria-hidden=&quot;true&quot;&gt;
  &lt;div class=&quot;modal-dialog&quot;&gt;
    &lt;div class=&quot;modal-content&quot;&gt;
      &lt;div class=&quot;modal-header&quot;&gt;
        &lt;button type=&quot;button&quot; class=&quot;close&quot; data-dismiss=&quot;modal&quot; aria-hidden=&quot;true&quot;&gt;&amp;times;&lt;/button&gt;
        &lt;h4 class=&quot;modal-title&quot; id=&quot;myModalLabel&quot;&gt;Modal title&lt;/h4&gt;
      &lt;/div&gt;
      &lt;div class=&quot;modal-body&quot;&gt;
        ...
      &lt;/div&gt;
      &lt;div class=&quot;modal-footer&quot;&gt;
        &lt;button type=&quot;button&quot; class=&quot;btn btn-default&quot; data-dismiss=&quot;modal&quot;&gt;Close&lt;/button&gt;
        &lt;button type=&quot;button&quot; class=&quot;btn btn-primary&quot;&gt;Save changes&lt;/button&gt;
      &lt;/div&gt;
    &lt;/div&gt;&lt;!-- /.modal-content --&gt;
  &lt;/div&gt;&lt;!-- /.modal-dialog --&gt;
&lt;/div&gt;&lt;!-- /.modal --&gt;</code></pre>

</div>


    <div class="bs-callout bs-callout-warning">
      <h4>增强模态框的可访问性</h4>
        请确保为<code>.modal</code>添加了<code>role="dialog"</code>；<code>aria-labelledby="myModalLabel"</code>属性指向模态框标题；<code>aria-hidden="true"</code>告诉辅助性工具略过模态框的DOM元素。</p>
      <p>另外，你还应该为模态框添加描述性信息。为<code>.modal</code>添加<code>aria-describedby</code>属性用以指向描述信息。
      </p>
    </div>

    <h2 id="modals-usage">用法</h2>
    <p>The modal plugin toggles your hidden content on demand, via data attributes or JavaScript. It also adds <code>.model-open</code> to the <code>&lt;body&gt;</code> to override default scrolling behavior and generates a <code>.modal-backdrop</code> to provide a click area for dismissing shown modals when clicking outside the modal.</p>

    <h3>通过data属性</h3>
    <p>不需写JavaScript代码也可激活模态框。通过在一个起控制器作用的页面元素（例如，按钮）上设置<code>data-toggle="modal"</code>，并使用<code>data-target="#foo"</code>或<code>href="#foo"</code>指向特定的模态框即可。</p>
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; data-toggle=&quot;modal&quot; data-target=&quot;#myModal&quot;&gt;Launch modal&lt;/button&gt;</code></pre>

</div>

    <h3>通过JavaScript调用</h3>
    <p>只需一行JavaScript代码，即可通过id <code>myModal</code>调用模态框：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.modaloptions</code></pre>

</div>

    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-backdrop=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">名称</th>
           <th style="width: 50px;">类型</th>
           <th style="width: 50px;">默认值</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>backdrop</td>
           <td>boolean or the string <code>'static'</code></td>
           <td>true</td>
           <td>Includes a modal-backdrop element. Alternatively, specify <code>static</code> for a backdrop which doesn't close the modal on click.</td>
         </tr>
         <tr>
           <td>keyboard</td>
           <td>boolean</td>
           <td>true</td>
           <td>Closes the modal when escape key is pressed</td>
         </tr>
         <tr>
           <td>show</td>
           <td>boolean</td>
           <td>true</td>
           <td>Shows the modal when initialized.</td>
         </tr>
         <tr>
           <td>remote</td>
           <td>path</td>
           <td>false</td>
           <td><p>If a remote URL is provided, content will be loaded via jQuery's <code>load</code> method and injected into the root of the modal element. If you're using the data-api, you may alternatively use the <code>href</code> attribute to specify the remote source. An example of this is shown below:</p>
<div class="highlight">
<pre><code class="language-html">&lt;a data-toggle=&quot;modal&quot; href=&quot;remote.html&quot; data-target=&quot;#modal&quot;&gt;Click me&lt;/a&gt;</code></pre>

</div>
          </td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

    <h3>方法</h3>

    <h4>.modaloptions</h4>
    <p>将你指定的内容作为模态框启动。其接受一个可选的<code>object</code>类型的参数。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.modal
  keyboard: <span class="literal">false</span>
</code></pre>

</div>

    <h4>.modal'toggle'</h4>
    <p>手动启动或隐藏模态框。<strong>在模态框真正显示或隐藏前返回到调用函数</strong> i.e. 在 <code>shown.bs.modal</code> 或 <code>hidden.bs.modal</code> 事件发生之前。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.modal<span class="string">'toggle'</span></code></pre>

</div>

    <h4>.modal'show'</h4>
    <p>手动打开一个模态框。<strong>在模态框真正显示或隐藏前返回到调用函数</strong> i.e. 在 <code>shown.bs.modal</code> 事件发生之前。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.modal<span class="string">'show'</span></code></pre>

</div>

    <h4>.modal'hide'</h4>
    <p>手动隐藏一个模态框。<strong>在模态框真正显示或隐藏前返回到调用函数</strong> i.e. 在  <code>hidden.bs.modal</code> 事件发生之前。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.modal<span class="string">'hide'</span></code></pre>

</div>

    <h3>事件</h3>
    <p>Bootstrap的模态框类暴露了一些事件用于截获并执行自己的代码。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>show.bs.modal</td>
           <td>This event fires immediately when the <code>show</code> instance method is called. If caused by a click, the clicked element is available as the <code>relatedTarget</code> property of the event.</td>
         </tr>
         <tr>
           <td>shown.bs.modal</td>
           <td>This event is fired when the modal has been made visible to the user will wait for CSS transitions to complete. If caused by a click, the clicked element is available as the <code>relatedTarget</code> property of the event.</td>
         </tr>
         <tr>
           <td>hide.bs.modal</td>
           <td>This event is fired immediately when the <code>hide</code> instance method has been called.</td>
         </tr>
         <tr>
           <td>hidden.bs.modal</td>
           <td>This event is fired when the modal has finished being hidden from the user will wait for CSS transitions to complete.</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myModal'</span>.on<span class="string">'hidden.bs.modal'</span>, <span class="function"><span class="keyword">function</span> <span class="params">e</span> </span>
  <span class="comment">// do something...</span>
</code></pre>

</div>
  </div>



  <!-- Dropdowns
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="dropdowns">下拉菜单 <small>dropdown.js</small></h1>
    </div>

    <h2 id="dropdowns-examples">案例</h2>
    <p>通过此插件可以为几乎所有东西添加下拉菜单，包括导航条、标签页、胶囊式按钮。</p>

    <h3>用于导航条</h3>
    <div class="bs-example">
      <nav id="navbar-example" class="navbar navbar-default navbar-static" role="navigation">
        <div class="navbar-header">
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-js-navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project Name</a>
        </div>
        <div class="collapse navbar-collapse bs-js-navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="dropdown">
              <a id="drop1" href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop1">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
              </ul>
            </li>
            <li class="dropdown">
              <a href="#" id="drop2" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown 2 <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop2">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
              </ul>
            </li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li id="fat-menu" class="dropdown">
              <a href="#" id="drop3" role="button" class="dropdown-toggle" data-toggle="dropdown">Dropdown 3 <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="drop3">
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
                <li role="presentation" class="divider"></li>
                <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
              </ul>
            </li>
          </ul>
        </div><!-- /.nav-collapse -->
      </nav> <!-- /navbar-example -->
    </div> <!-- /example -->

    <h3>用于标签页</h3>
    <div class="bs-example">
      <ul class="nav nav-pills">
        <li class="active"><a href="#">Regular link</a></li>
        <li class="dropdown">
          <a id="drop4" role="button" data-toggle="dropdown" href="#">Dropdown <b class="caret"></b></a>
          <ul id="menu1" class="dropdown-menu" role="menu" aria-labelledby="drop4">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a id="drop5" role="button" data-toggle="dropdown" href="#">Dropdown 2 <b class="caret"></b></a>
          <ul id="menu2" class="dropdown-menu" role="menu" aria-labelledby="drop5">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
          </ul>
        </li>
        <li class="dropdown">
          <a id="drop6" role="button" data-toggle="dropdown" href="#">Dropdown 3 <b class="caret"></b></a>
          <ul id="menu3" class="dropdown-menu" role="menu" aria-labelledby="drop6">
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Another action</a></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Something else here</a></li>
            <li role="presentation" class="divider"></li>
            <li role="presentation"><a role="menuitem" tabindex="-1" href="http://twitter.com/fat">Separated link</a></li>
          </ul>
        </li>
      </ul> <!-- /tabs -->
    </div> <!-- /example -->


    <h2 id="dropdowns-usage">用法</h2>
    <p>Via data attributes or JavaScript, the dropdown plugin toggles hidden content dropdown menus by toggling the <code>.open</code> class on the parent list item. When opened, the plugin also adds <code>.dropdown-backdrop</code> as a click area for closing dropdown menus when clicking outside the menu.</p>

    <h3>通过data属性</h3>
    <p>通过向链接或按钮添加<code>data-toggle="dropdown"</code>可以打开或关闭下拉菜单。</p>
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;dropdown&quot;&gt;
  &lt;a data-toggle=&quot;dropdown&quot; href=&quot;#&quot;&gt;Dropdown trigger&lt;/a&gt;
  &lt;ul class=&quot;dropdown-menu&quot; role=&quot;menu&quot; aria-labelledby=&quot;dLabel&quot;&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;</code></pre>

</div>
          <p>To keep URLs intact, use the <code>data-target</code> attribute instead of <code>href="#"</code>.</p>
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;dropdown&quot;&gt;
  &lt;a id=&quot;dLabel&quot; role=&quot;button&quot; data-toggle=&quot;dropdown&quot; data-target=&quot;#&quot; href=&quot;/page.html&quot;&gt;
    Dropdown &lt;span class=&quot;caret&quot;&gt;&lt;/span&gt;
  &lt;/a&gt;


  &lt;ul class=&quot;dropdown-menu&quot; role=&quot;menu&quot; aria-labelledby=&quot;dLabel&quot;&gt;
    ...
  &lt;/ul&gt;
&lt;/div&gt;</code></pre>

</div>

    <h3>通过JavaScript</h3>
    <p>通过JavaScript打开或关闭下拉菜单：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'.dropdown-toggle'</span>.dropdown</code></pre>

</div>

    <h3>选项</h3>
    <p><em>None</em></p>

    <h3>方法</h3>
    <h4>.dropdown'toggle'</h4>
    <p>为导航条或标签页式导航打开或关闭下拉菜单。</p>

    <h3>事件</h3>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style="width: 150px;">事件类型</th>
            <th>描述</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>show.bs.dropdown</td>
            <td>This event fires immediately when the show instance method is called.</td>
          </tr>
          <tr>
            <td>shown.bs.dropdown</td>
            <td>This event is fired when the dropdown has been made visible to the user will wait for CSS transitions, to complete.</td>
          </tr>
          <tr>
            <td>hide.bs.dropdown</td>
            <td>This event is fired immediately when the hide instance method has been called.</td>
          </tr>
          <tr>
            <td>hidden.bs.dropdown</td>
            <td>This event is fired when the dropdown has finished being hidden from the user will wait for CSS transitions, to complete.</td>
          </tr>
        </tbody>
      </table>
    </div><!-- ./bs-table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myDropdown'</span>.on<span class="string">'show.bs.dropdown'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>


  <!-- ScrollSpy
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="scrollspy">滚动监听 <small>scrollspy.js</small></h1>
    </div>


    <h2 id="scrollspy-examples">案例</h2>
    <p>滚动监听插件可以根据滚动条的位置自动更新所对应的导航标记。你可以试试滚动这个页面，看看左侧导航的变化。</p>
    <div class="bs-example">
      <nav id="navbar-example2" class="navbar navbar-default navbar-static" role="navigation">
        <div class="navbar-header">
          <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-js-navbar-scrollspy">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Project Name</a>
        </div>
        <div class="collapse navbar-collapse bs-js-navbar-scrollspy">
          <ul class="nav navbar-nav">
            <li><a href="#fat">@fat</a></li>
            <li><a href="#mdo">@mdo</a></li>
            <li class="dropdown">
              <a href="#" id="navbarDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
              <ul class="dropdown-menu" role="menu" aria-labelledby="navbarDrop1">
                <li><a href="#one" tabindex="-1">one</a></li>
                <li><a href="#two" tabindex="-1">two</a></li>
                <li class="divider"></li>
                <li><a href="#three" tabindex="-1">three</a></li>
              </ul>
            </li>
          </ul>
        </div>
      </nav>
      <div data-spy="scroll" data-target="#navbar-example2" data-offset="0" class="scrollspy-example">
        <h4 id="fat">@fat</h4>
        <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>
        <h4 id="mdo">@mdo</h4>
        <p>Veniam marfa mustache skateboard, adipisicing fugiat velit pitchfork beard. Freegan beard aliqua cupidatat mcsweeney's vero. Cupidatat four loko nisi, ea helvetica nulla carles. Tattooed cosby sweater food truck, mcsweeney's quis non freegan vinyl. Lo-fi wes anderson +1 sartorial. Carles non aesthetic exercitation quis gentrify. Brooklyn adipisicing craft beer vice keytar deserunt.</p>
        <h4 id="one">one</h4>
        <p>Occaecat commodo aliqua delectus. Fap craft beer deserunt skateboard ea. Lomo bicycle rights adipisicing banh mi, velit ea sunt next level locavore single-origin coffee in magna veniam. High life id vinyl, echo park consequat quis aliquip banh mi pitchfork. Vero VHS est adipisicing. Consectetur nisi DIY minim messenger bag. Cred ex in, sustainable delectus consectetur fanny pack iphone.</p>
        <h4 id="two">two</h4>
        <p>In incididunt echo park, officia deserunt mcsweeney's proident master cleanse thundercats sapiente veniam. Excepteur VHS elit, proident shoreditch +1 biodiesel laborum craft beer. Single-origin coffee wayfarers irure four loko, cupidatat terry richardson master cleanse. Assumenda you probably haven't heard of them art party fanny pack, tattooed nulla cardigan tempor ad. Proident wolf nesciunt sartorial keffiyeh eu banh mi sustainable. Elit wolf voluptate, lo-fi ea portland before they sold out four loko. Locavore enim nostrud mlkshk brooklyn nesciunt.</p>
        <h4 id="three">three</h4>
        <p>Ad leggings keytar, brunch id art party dolor labore. Pitchfork yr enim lo-fi before they sold out qui. Tumblr farm-to-table bicycle rights whatever. Anim keffiyeh carles cardigan. Velit seitan mcsweeney's photo booth 3 wolf moon irure. Cosby sweater lomo jean shorts, williamsburg hoodie minim qui you probably haven't heard of them et cardigan trust fund culpa biodiesel wes anderson aesthetic. Nihil tattooed accusamus, cred irony biodiesel keffiyeh artisan ullamco consequat.</p>
        <p>Keytar twee blog, culpa messenger bag marfa whatever delectus food truck. Sapiente synth id assumenda. Locavore sed helvetica cliche irony, thundercats you probably haven't heard of them consequat hoodie gluten-free lo-fi fap aliquip. Labore elit placeat before they sold out, terry richardson proident brunch nesciunt quis cosby sweater pariatur keffiyeh ut helvetica artisan. Cardigan craft beer seitan readymade velit. VHS chambray laboris tempor veniam. Anim mollit minim commodo ullamco thundercats.
        </p>
      </div>
    </div><!-- /example -->


    <h2 id="scrollspy-usage">用法</h2>

    <h3>通过data属性</h3>
    <p>通过为需要监听的页面元素（一般是<code>&lt;body&gt;</code>）添加<code>data-spy="scroll"</code>就可很轻松的为顶部导航条添加滚动监听功能。然后为其添加<code>data-target</code>属性，此属性的值为任何Bootstrap中<code>.nav</code>组件的父元素的ID或class。</p>
<div class="highlight">
<pre><code class="language-html">&lt;body data-spy=&quot;scroll&quot; data-target=&quot;.navbar-example&quot;&gt;
  ...
  &lt;div class=&quot;navbar-example&quot;&gt;
    &lt;ul class=&quot;nav nav-tabs&quot;&gt;
      ...
    &lt;/ul&gt;
  &lt;/div&gt;
  ...
&lt;/body&gt;</code></pre>

</div>

    <h3>通过JavaScript</h3>
    <p>通过JavaScript启动滚动监听：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'body'</span>.scrollspy target: <span class="string">'.navbar-example'</span> </code></pre>

</div>

    <div class="bs-callout bs-callout-danger">
      <h4>导航链接地址必须有对应的目标</h4>
      <p>导航条内的链接地址必须有对应的页面元素具有同样的ID值。例如，<code>&lt;a href="#home"&gt;home&lt;/a&gt;</code>必须对应DOM中例如<code>&lt;div id="home"&gt;&lt;/div&gt;</code>。</p>
    </div>

    <h3>方法</h3>
    <h4>.scrollspy'refresh'</h4>
    <p>使用滚动监听插件时，每当页面中从DOM中增加或删除页面元素时，都需要调用此方法以，如下：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'[data-spy="scroll"]'</span>.each<span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="keyword">var</span> spy = <span class="keyword">this</span>.scrollspy<span class="string">'refresh'</span>
</code></pre>

</div>


    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-offset=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">名称</th>
           <th style="width: 100px;">类型</th>
           <th style="width: 50px;">默认值</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>offset</td>
           <td>number</td>
           <td>10</td>
           <td>Pixels to offset from top when calculating position of scroll.</td>
         </tr>
        </tbody>
      </table>
    </div><!-- ./bs-table-responsive -->

    <h3>事件</h3>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>activate.bs.scrollspy</td>
           <td>当滚动监听插件将某个元素置为active时，此事件被触发。</td>
        </tr>
        </tbody>
      </table>
    </div><!-- ./bs-table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myScrollspy'</span>.on<span class="string">'activate.bs.scrollspy'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>



  <!-- Tabs
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="tabs">标签页<small>tab.js</small></h1>
    </div>

    <h2 id="tabs-examples">案例</h2>
    <p>通过添加标签页功能，可以让多个内容区域快速、动态切换。下拉菜单也可以使用。</p>
    <div class="bs-example bs-example-tabs">
      <ul id="myTab" class="nav nav-tabs">
        <li class="active"><a href="#home" data-toggle="tab">Home</a></li>
        <li><a href="#profile" data-toggle="tab">Profile</a></li>
        <li class="dropdown">
          <a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
          <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
            <li><a href="#dropdown1" tabindex="-1" data-toggle="tab">@fat</a></li>
            <li><a href="#dropdown2" tabindex="-1" data-toggle="tab">@mdo</a></li>
          </ul>
        </li>
      </ul>
      <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade in active" id="home">
          <p>Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth. Cosby sweater eu banh mi, qui irure terry richardson ex squid. Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui.</p>
        </div>
        <div class="tab-pane fade" id="profile">
          <p>Food truck fixie locavore, accusamus mcsweeney's marfa nulla single-origin coffee squid. Exercitation +1 labore velit, blog sartorial PBR leggings next level wes anderson artisan four loko farm-to-table craft beer twee. Qui photo booth letterpress, commodo enim craft beer mlkshk aliquip jean shorts ullamco ad vinyl cillum PBR. Homo nostrud organic, assumenda labore aesthetic magna delectus mollit. Keytar helvetica VHS salvia yr, vero magna velit sapiente labore stumptown. Vegan fanny pack odio cillum wes anderson 8-bit, sustainable jean shorts beard ut DIY ethical culpa terry richardson biodiesel. Art party scenester stumptown, tumblr butcher vero sint qui sapiente accusamus tattooed echo park.</p>
        </div>
        <div class="tab-pane fade" id="dropdown1">
          <p>Etsy mixtape wayfarers, ethical wes anderson tofu before they sold out mcsweeney's organic lomo retro fanny pack lo-fi farm-to-table readymade. Messenger bag gentrify pitchfork tattooed craft beer, iphone skateboard locavore carles etsy salvia banksy hoodie helvetica. DIY synth PBR banksy irony. Leggings gentrify squid 8-bit cred pitchfork. Williamsburg banh mi whatever gluten-free, carles pitchfork biodiesel fixie etsy retro mlkshk vice blog. Scenester cred you probably haven't heard of them, vinyl craft beer blog stumptown. Pitchfork sustainable tofu synth chambray yr.</p>
        </div>
        <div class="tab-pane fade" id="dropdown2">
          <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater. Lomo wolf viral, mustache readymade thundercats keffiyeh craft beer marfa ethical. Wolf salvia freegan, sartorial keffiyeh echo park vegan.</p>
        </div>
      </div>
    </div><!-- /example -->

    <div class="bs-callout bs-callout-info">
      <h4>扩展了标签页式导航</h4>
      <p>此插件为<a href="../components/#nav-tabs">标签页式导航组件</a>添加了标签页内容区。</p>
    </div>


    <h2 id="tabs-usage">用法</h2>
    <p>通过JavaScript启动可切换标签页（每个标签页单独被激活）：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myTab a'</span>.click<span class="function"><span class="keyword">function</span> <span class="params">e</span> </span>
  e.preventDefault
  <span class="keyword">this</span>.tab<span class="string">'show'</span>
</code></pre>

</div>

          <p>可以有以下几种方式单独激活标签页：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myTab a[href="#profile"]'</span>.tab<span class="string">'show'</span> <span class="comment">// Select tab by name</span>
<span class="string">'#myTab a:first'</span>.tab<span class="string">'show'</span> <span class="comment">// Select first tab</span>
<span class="string">'#myTab a:last'</span>.tab<span class="string">'show'</span> <span class="comment">// Select last tab</span>
<span class="string">'#myTab li:eq2 a'</span>.tab<span class="string">'show'</span> <span class="comment">// Select third tab 0-indexed</span></code></pre>

</div>

    <h3>标记</h3>
    <p>You can activate a tab or pill navigation without writing any JavaScript by simply specifying <code>data-toggle="tab"</code> or <code>data-toggle="pill"</code> on an element. Adding the <code>nav</code> and <code>nav-tabs</code> classes to the tab <code>ul</code> will apply the Bootstrap <a href="../components#nav-tabs">tab styling</a>, while adding the <code>nav</code> and <code>nav-pills</code> classes will apply <a href="../components#nav-pills">pill styling</a>.</p>

    <p>只需为页面元素简单的添加<code>data-toggle="tab"</code> 或 <code>data-toggle="pill"</code>就可以无需写任何JavaScript代码也能激活标签页或胶囊式导航。为<code>ul</code>添加<code>.nav</code>和<code>.nav-tabs</code> classe即可为其赋予Bootstrap<a href="../components#nav-tabs">标签页样式</a>；而添加<code>nav</code>和<code>nav-pills</code> class可以为其赋予<a href="../components#nav-pills">胶囊标签页样式</a>。</p>
<div class="highlight">
<pre><code class="language-html">&lt;!-- Nav tabs --&gt;
&lt;ul class=&quot;nav nav-tabs&quot;&gt;
  &lt;li&gt;&lt;a href=&quot;#home&quot; data-toggle=&quot;tab&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;#profile&quot; data-toggle=&quot;tab&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;#messages&quot; data-toggle=&quot;tab&quot;&gt;Messages&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;#settings&quot; data-toggle=&quot;tab&quot;&gt;Settings&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;!-- Tab panes --&gt;
&lt;div class=&quot;tab-content&quot;&gt;
  &lt;div class=&quot;tab-pane active&quot; id=&quot;home&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane&quot; id=&quot;profile&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane&quot; id=&quot;messages&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane&quot; id=&quot;settings&quot;&gt;...&lt;/div&gt;
&lt;/div&gt;</code></pre>

</div>

    <h3>渐入效果</h3>
    <p>为每个<code>.tab-pane</code>添加<code>.fade</code>可以让标签页具有淡入的特效。第一个标签页所对应的的内容区必须也添加<code>.in</code>使初始内容同时具有淡入效果。</p>
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;tab-content&quot;&gt;
  &lt;div class=&quot;tab-pane fade in active&quot; id=&quot;home&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane fade&quot; id=&quot;profile&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane fade&quot; id=&quot;messages&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane fade&quot; id=&quot;settings&quot;&gt;...&lt;/div&gt;
&lt;/div&gt;</code></pre>

</div>

    <h3>方法</h3>
    <h4>.tab</h4>
    <p>
      激活标签页和内容区。每个标签页都应该通过<code>data-target</code> 或 <code>href</code>以指定目标内容容器。
    </p>
<div class="highlight">
<pre><code class="language-html">&lt;ul class=&quot;nav nav-tabs&quot; id=&quot;myTab&quot;&gt;
  &lt;li class=&quot;active&quot;&gt;&lt;a href=&quot;#home&quot; data-toggle=&quot;tab&quot;&gt;Home&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;#profile&quot; data-toggle=&quot;tab&quot;&gt;Profile&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;#messages&quot; data-toggle=&quot;tab&quot;&gt;Messages&lt;/a&gt;&lt;/li&gt;
  &lt;li&gt;&lt;a href=&quot;#settings&quot; data-toggle=&quot;tab&quot;&gt;Settings&lt;/a&gt;&lt;/li&gt;
&lt;/ul&gt;

&lt;div class=&quot;tab-content&quot;&gt;
  &lt;div class=&quot;tab-pane active&quot; id=&quot;home&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane&quot; id=&quot;profile&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane&quot; id=&quot;messages&quot;&gt;...&lt;/div&gt;
  &lt;div class=&quot;tab-pane&quot; id=&quot;settings&quot;&gt;...&lt;/div&gt;
&lt;/div&gt;

&lt;script&gt;
  function  
    &#39;#myTab a:last&#39;.tab&#39;show&#39;
  
&lt;/script&gt;</code></pre>

</div>

    <h3>事件</h3>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>show.bs.tab</td>
           <td>This event fires on tab show, but before the new tab has been shown. Use <code>event.target</code> and <code>event.relatedTarget</code> to target the active tab and the previous active tab if available respectively.</td>
        </tr>
        <tr>
           <td>shown.bs.tab</td>
           <td>This event fires on tab show after a tab has been shown. Use <code>event.target</code> and <code>event.relatedTarget</code> to target the active tab and the previous active tab if available respectively.</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'a[data-toggle="tab"]'</span>.on<span class="string">'shown.bs.tab'</span>, <span class="function"><span class="keyword">function</span> <span class="params">e</span> </span>
  e.target <span class="comment">// activated tab</span>
  e.relatedTarget <span class="comment">// previous tab</span>
</code></pre>

</div>
  </div>



  <!-- Tooltips
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="tooltips">工具提示 <small>tooltip.js</small></h1>
    </div>

    <h2 id="tooltips-examples">案例</h2>
    <p>受到Jason Frame开发的jQuery.tipsy插件的启发，我们才把这个工具提示插件做的更好，而且此插件不依赖图片，只是使用CSS3来实现动画效果，并使用data属性存储标题。</p>
    <p>将鼠标悬停到下面的链接上就可以看到工具提示了：</p>
    <div class="bs-example tooltip-demo">
      <p class="muted" style="margin-bottom: 0;">Tight pants next level keffiyeh <a href="#" data-toggle="tooltip" title="Default tooltip">you probably</a> haven't heard of them. Photo booth beard raw denim letterpress vegan messenger bag stumptown. Farm-to-table seitan, mcsweeney's fixie sustainable quinoa 8-bit american apparel <a href="#" data-toggle="tooltip" title="Another tooltip">have a</a> terry richardson vinyl chambray. Beard stumptown, cardigans banh mi lomo thundercats. Tofu biodiesel williamsburg marfa, four loko mcsweeney's cleanse vegan chambray. A really ironic artisan <a href="#" data-toggle="tooltip" title="Another one here too">whatever keytar</a>, scenester farm-to-table banksy Austin <a href="#" data-toggle="tooltip" title="The last tip!">twitter handle</a> freegan cred raw denim single-origin coffee viral.
      </p>
    </div><!-- /example -->

    <h3>四个展示方位</h3>
    <div class="bs-example tooltip-demo">
      <div class="bs-example-tooltips">
        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="left" title="Tooltip on left">左侧Tooltip</button>
        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="top" title="Tooltip on top">上方Tooltip</button>
        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="bottom" title="Tooltip on bottom">下方Tooltip</button>
        <button type="button" class="btn btn-default" data-toggle="tooltip" data-placement="right" title="Tooltip on right">右侧Tooltip</button>
      </div>
    </div><!-- /example -->

    <div class="bs-callout bs-callout-danger">
      <h4>选择性加入的功能</h4>
      <p>出于性能方面的考虑，工具提示和弹框组件的data属性api是选择性加入的，也就是说<strong>你必须自己初始化他们</strong>。</p>
    </div>
    <div class="bs-callout bs-callout-info">
      <h4>工具提示与按钮组和输入框组联合使用时需要一些特殊设置</h4>
      <p>在<code>.btn-group</code> 或 <code>.input-group</code>内的元素上使用工具提示时，你需要指定<code>container: 'body'</code>选项以避免不需要的副作用（例如，当工具提示显示之后，与其合作的页面元素可能变得更宽或是去圆角）。</p>
    </div>
    <div class="bs-callout bs-callout-info">
      <h4>在禁止使用的页面元素上使用工具提示时需要额外增加一个元素将其包裹起来</h4>
      <p>为了给<code>disabled</code> 或<code>.disabled</code>元素添加工具提示，将需要增加工具提示的页面元素包裹在一个<code>&lt;div&gt;</code>中，然后对这个<code>&lt;div&gt;</code>元素应用工具提示。</p>
    </div>


    <h2 id="tooltips-usage">用法</h2>
    <p>通过JavaScript激活工具提示：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#example'</span>.tooltipoptions</code></pre>

</div>

    <h3>Markup</h3>
    <p>The generated markup of a tooltip is rather simple, though it does require a position by default, set to <code>top</code> by the plugin.</p>
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;tooltip&quot;&gt;
  &lt;div class=&quot;tooltip-inner&quot;&gt;
    Tooltip!
  &lt;/div&gt;
  &lt;div class=&quot;tooltip-arrow&quot;&gt;&lt;/div&gt;
&lt;/div&gt;</code></pre>

</div>

    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-animation=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">名称</th>
           <th style="width: 100px;">类型</th>
           <th style="width: 50px;">默认值</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>animation</td>
           <td>boolean</td>
           <td>true</td>
           <td>apply a CSS fade transition to the tooltip</td>
         </tr>
         <tr>
           <td>html</td>
           <td>boolean</td>
           <td>false</td>
           <td>Insert HTML into the tooltip. If false, jQuery's <code>text</code> method will be used to insert content into the DOM. Use text if you're worried about XSS attacks.</td>
         </tr>
         <tr>
           <td>placement</td>
           <td>string | function</td>
           <td>'top'</td>
           <td>how to position the tooltip - top | bottom | left | right | auto. <br> When "auto" is specified, it will dynamically reorient the tooltip. For example, if placement is "auto left", the tooltip will display to the left when possible, otherwise it will display right.</td>
         </tr>
         <tr>
           <td>selector</td>
           <td>string</td>
           <td>false</td>
           <td>If a selector is provided, tooltip objects will be delegated to the specified targets.</td>
         </tr>
         <tr>
           <td>title</td>
           <td>string | function</td>
           <td>''</td>
           <td>default title value if <code>title</code> attribute isn't present</td>
         </tr>
         <tr>
           <td>trigger</td>
           <td>string</td>
           <td>'hover focus'</td>
           <td>how tooltip is triggered - click | hover | focus | manual. You may pass multiple triggers; separate them with a space.</td>
         </tr>
         <tr>
           <td>delay</td>
           <td>number | object</td>
           <td>0</td>
           <td>
            <p>delay showing and hiding the tooltip ms - does not apply to manual trigger type</p>
            <p>If a number is supplied, delay is applied to both hide/show</p>
            <p>Object structure is: <code>delay:  show: 500, hide: 100 </code></p>
           </td>
         </tr>
         <tr>
           <td>container</td>
           <td>string | false</td>
           <td>false</td>
           <td>
            <p>Appends the tooltip to a specific element. Example: <code>container: 'body'</code></p>
           </td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
    <div class="bs-callout bs-callout-info">
      <h4>对单个工具提示使用data属性</h4>
      <p>使用data属性可以为单个工具提示指定额外选项，如下所示。</p>
    </div>

    <h3>标记</h3>
<div class="highlight">
<pre><code class="language-html">&lt;a href=&quot;#&quot; data-toggle=&quot;tooltip&quot; title=&quot;first tooltip&quot;&gt;Hover over me&lt;/a&gt;</code></pre>

</div>

    <h3>方法</h3>

    <h4>.tooltipoptions</h4>
    <p>为一组元素应用工具提示。</p>

    <h4>.tooltip'show'</h4>
    <p>展示工具提示。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.tooltip<span class="string">'show'</span></code></pre>

</div>

    <h4>.tooltip'hide'</h4>
    <p>隐藏工具提示。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.tooltip<span class="string">'hide'</span></code></pre>

</div>

    <h4>.tooltip'toggle'</h4>
    <p>展示或隐藏工具提示。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.tooltip<span class="string">'toggle'</span></code></pre>

</div>

    <h4>.tooltip'destroy'</h4>
    <p>隐藏并销毁工具提示。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.tooltip<span class="string">'destroy'</span></code></pre>

</div>

    <h3>事件</h3>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>show.bs.tooltip</td>
           <td>当<code>show</code>方法被调用之后，此事件将被立即触发。</td>
         </tr>
         <tr>
           <td>shown.bs.tooltip</td>
           <td>当工具提示展示到用户面前之后（同时CSS过渡效果执行完之后）此事件被触发。</td>
         </tr>
         <tr>
           <td>hide.bs.tooltip</td>
           <td>当<code>hide</code>方法被调用之后，此事件被触发。</td>
         </tr>
         <tr>
           <td>hidden.bs.tooltip</td>
           <td>当工具提示被隐藏之后（同时CSS过渡效果执行完之后），此事件被触发。</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myTooltip'</span>.on<span class="string">'hidden.bs.tooltip'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>

  <!-- Popovers
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="popovers">弹出框 <small>popover.js</small></h1>
    </div>

    <h2 id="popovers-examples">案例</h2>
    <p>为页面内容添加一个小的覆盖层，就像iPad上的效果一样，为页面元素增加额外的信息。</p>

    <div class="bs-callout bs-callout-danger">
      <h4>插件依赖</h4>
      <p>弹出框依赖<a href="#tooltips">工具提示插件</a>，因此需要先加载工具提示插件。</p>
    </div>
    <div class="bs-callout bs-callout-danger">
      <h4>选择性加入的功能</h4>
      <p>出于性能方面的考虑，工具提示和弹框组件的data属性api是选择性加入的，也就是说<strong>你必须自己初始化他们</strong>。</p>
    </div>
    <div class="bs-callout bs-callout-info">
      <h4>弹出框在按钮组和输入框组中使用时，需要额外的设置</h4>
      <p>当提示框与<code>.btn-group</code> 或 <code>.input-group</code>联合使用时，你需要指定<code>container: 'body'</code>选项（见下面的文档）以避免不需要的副作用（例如，当弹出框显示之后，与其合作的页面元素可能变得更宽或是去圆角）。</p>
    </div>
    <div class="bs-callout bs-callout-info">
      <h4>在禁止使用的页面元素上使用弹出框时需要额外增加一个元素将其包裹起来</h4>
      <p>为了给<code>disabled</code> 或<code>.disabled</code>元素添加弹出框时，将需要增加弹出框的页面元素包裹在一个<code>&lt;div&gt;</code>中，然后对这个<code>&lt;div&gt;</code>元素应用弹出框。 </p>
    </div>

    <h3>静态案例</h3>
    <p>4个可选选项：top、right、bottom,和left排列。</p>
    <div class="bs-example bs-example-popover">
      <div class="popover top">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover top</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="popover right">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover right</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="popover bottom">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover bottom</h3>

        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="popover left">
        <div class="arrow"></div>
        <h3 class="popover-title">Popover left</h3>
        <div class="popover-content">
          <p>Sed posuere consectetur est at lobortis. Aenean eu leo quam. Pellentesque ornare sem lacinia quam venenatis vestibulum.</p>
        </div>
      </div>

      <div class="clearfix"></div>
    </div>

    <h3>动态演示</h3>
    <div class="bs-example" style="padding-bottom: 24px;">
      <a href="#" class="btn btn-lg btn-danger" data-toggle="popover" title="A Title" data-content="And here's some amazing content. It's very engaging. right?">Click to toggle popover</a>
    </div>

    <h4>四个方向</h4>
    <div class="bs-example tooltip-demo">
      <div class="bs-example-tooltips">
        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="left" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          左侧弹框
        </button>
        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="top" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          上方弹框
        </button>
        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="bottom" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          下方弹框
        </button>
        <button type="button" class="btn btn-default" data-container="body" data-toggle="popover" data-placement="right" data-content="Vivamus sagittis lacus vel augue laoreet rutrum faucibus.">
          右侧弹框
        </button>
      </div>
    </div><!-- /example -->


    <h2 id="popovers-usage">用法</h2>
    <p>通过JavaScript启用弹出框：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#example'</span>.popoveroptions</code></pre>

</div>

    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-animation=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style="width: 100px;">名称</th>
            <th style="width: 100px;">类型</th>
            <th style="width: 50px;">默认值</th>
            <th>描述</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>animation</td>
            <td>boolean</td>
            <td>true</td>
            <td>apply a CSS fade transition to the tooltip</td>
          </tr>
          <tr>
            <td>html</td>
            <td>boolean</td>
            <td>false</td>
            <td>Insert HTML into the popover. If false, jQuery's <code>text</code> method will be used to insert content into the DOM. Use text if you're worried about XSS attacks.</td>
          </tr>
          <tr>
            <td>placement</td>
            <td>string | function</td>
            <td>'right'</td>
            <td>how to position the popover - top | bottom | left | right | auto.<br> When "auto" is specified, it will dynamically reorient the popover. For example, if placement is "auto left", the tooltip will display to the left when possible, otherwise it will display right.</td>
          </tr>
          <tr>
            <td>selector</td>
            <td>string</td>
            <td>false</td>
            <td>if a selector is provided, tooltip objects will be delegated to the specified targets. in practice, this is used to enable dynamic HTML content to have popovers added. See <a href="https://github.com/twbs/bootstrap/issues/4215">this</a> and <a href="http://jsfiddle.net/fScua/">an informative example</a>.</td>
          </tr>
          <tr>
            <td>trigger</td>
            <td>string</td>
            <td>'click'</td>
            <td>how popover is triggered - click | hover | focus | manual</td>
          </tr>
          <tr>
            <td>title</td>
            <td>string | function</td>
            <td>''</td>
            <td>default title value if <code>title</code> attribute isn't present</td>
          </tr>
          <tr>
            <td>content</td>
            <td>string | function</td>
            <td>''</td>
            <td>default content value if <code>data-content</code> attribute isn't present</td>
          </tr>
          <tr>
            <td>delay</td>
            <td>number | object</td>
            <td>0</td>
            <td>
             <p>delay showing and hiding the popover ms - does not apply to manual trigger type</p>
             <p>If a number is supplied, delay is applied to both hide/show</p>
             <p>Object structure is: <code>delay:  show: 500, hide: 100 </code></p>
            </td>
          </tr>
          <tr>
            <td>container</td>
            <td>string | false</td>
            <td>false</td>
            <td>
             <p>Appends the popover to a specific element. Example: <code>container: 'body'</code>. This option is particularly useful in that it allows you to position the popover in the flow of the document near the triggering element - which will prevent the popover from floating away from the triggering element during a window resize.</p>
            </td>
          </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
    <div class="bs-callout bs-callout-info">
      <h4>为单个弹出框应用data属性</h4>
      <p>对单个弹出框可以通过data属性单独指定选项，如上所示。</p>
    </div>

    <h3>方法</h3>
    <h4>.popoveroptions</h4>
    <p>为一组元素初始化弹出框。</p>

    <h4>.popover'show'</h4>
    <p>显示弹出框。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.popover<span class="string">'show'</span></code></pre>

</div>

    <h4>.popover'hide'</h4>
    <p>隐藏弹出框。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.popover<span class="string">'hide'</span></code></pre>

</div>

    <h4>.popover'toggle'</h4>
    <p>展示或隐藏弹出框。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.popover<span class="string">'toggle'</span></code></pre>

</div>

    <h4>.popover'destroy'</h4>
    <p>隐藏并销毁弹出框。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'#element'</span>.popover<span class="string">'destroy'</span></code></pre>

</div>
    <h3>事件</h3>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>show.bs.popover</td>
           <td>当<code>show</code>方法被调用之后，此事件将被立即触发。</td>
         </tr>
         <tr>
           <td>shown.bs.popover</td>
           <td>当弹出框展示到用户面前之后（同时CSS过渡效果执行完之后）此事件被触发。</td>
         </tr>
         <tr>
           <td>hide.bs.popover</td>
           <td>当<code>hide</code>方法被调用之后，此事件被触发。</td>
         </tr>
         <tr>
           <td>hidden.bs.popover</td>
           <td>当弹出框被隐藏之后（同时CSS过渡效果执行完之后），此事件被触发。</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myPopover'</span>.on<span class="string">'hidden.bs.popover'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>

  <!-- Alert
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="alerts">警告框 <small>alert.js</small></h1>
    </div>


    <h2 id="alerts-examples">案例</h2>
    <p>通过这个插件可以为所有警告框增加关闭功能。</p>
    <div class="bs-example">
      <div class="alert alert-warning fade in">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <strong>Holy guacamole!</strong> Best check yo self, you're not looking too good.
      </div>
    </div><!-- /example -->

    <div class="bs-example">
      <div class="alert alert-danger fade in">
        <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        <h4>Oh snap! You got an error!</h4>
        <p>Change this and that and try again. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum.</p>
        <p>
          <button type="button" class="btn btn-danger">Take this action</button>
          <button type="button" class="btn btn-default">Or do this</button>
        </p>
      </div>
    </div><!-- /example -->


    <h2 id="alerts-usage">用法</h2>
    <p>通过JavaScript启用警告框关闭功能：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">".alert"</span>.alert</code></pre>

</div>

    <h3>标记</h3>
    <p>只需为关闭按钮设置<code>data-dismiss="alert"</code>即可自动为警告框赋予关闭功能。 </p>
<div class="highlight">
<pre><code class="language-html">&lt;a class=&quot;close&quot; data-dismiss=&quot;alert&quot; href=&quot;#&quot; aria-hidden=&quot;true&quot;&gt;&amp;times;&lt;/a&gt;</code></pre>

</div>

    <h3>方法</h3>

    <h4>.alert</h4>
    <p>为所有警告框加入关闭功能。如果希望警告框被关闭时呈现动画效果，请确保为其添加了<code>.fade</code> 和 <code>.in</code>。</p>

    <h4>.alert'close'</h4>
    <p>关闭警告框。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">".alert"</span>.alert<span class="string">'close'</span></code></pre>

</div>


    <h3>事件</h3>
    <p>Bootstrap中的警告框暴露了一组事件，允许你进行监听。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
          <tr>
            <th style="width: 150px;">事件类型</th>
            <th>描述</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td>close.bs.alert</td>
            <td>当<code>close</code>函数被调用之后，此事件被立即触发。</td>
          </tr>
          <tr>
            <td>closed.bs.alert</td>
            <td>当警告框被关闭之后（同时CSS过渡效果执行完毕），此事件被触发。</td>
          </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#my-alert'</span>.bind<span class="string">'closed.bs.alert'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>



  <!-- Buttons
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="buttons">按钮 <small>button.js</small></h1>
    </div>

    <h2 id="buttons-examples">案例</h2>
    <p>按钮可以完成很多工作。控制按钮状态或创建按钮组可以产生类似工具条之类的复杂组件。</p>

    <h4>状态</h4>
    <p>通过添加<code>data-loading-text="正在加载..."</code>可以使按钮呈现加载状态。</p>
    <div class="bs-example" style="padding-bottom: 24px;">
      <button type="button" id="fat-btn" data-loading-text="正在加载..." class="btn btn-primary">
        Loading state
      </button>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; data-loading-text=&quot;正在加载...&quot; class=&quot;btn btn-primary&quot;&gt;
  Loading state
&lt;/button&gt;</code></pre>

</div>

    <h4>状态切换</h4>
    <p>通过添加<code>data-toggle="button"</code>可以让按钮能够切换状态。</p>
    <div class="bs-example" style="padding-bottom: 24px;">
      <button type="button" class="btn btn-primary" data-toggle="button">Single toggle</button>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; class=&quot;btn btn-primary&quot; data-toggle=&quot;button&quot;&gt;Single toggle&lt;/button&gt;</code></pre>

</div>

    <h4>选择框</h4>
    <p>通过向按钮组添加<code>data-toggle="buttons"</code>可以使按钮组具有类似选择框的选择/取消功能。</p>
    <div class="bs-example" style="padding-bottom: 24px;">
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary">
          <input type="checkbox"> Option 1
        </label>
        <label class="btn btn-primary">
          <input type="checkbox"> Option 2
        </label>
        <label class="btn btn-primary">
          <input type="checkbox"> Option 3
        </label>
      </div>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;btn-group&quot; data-toggle=&quot;buttons&quot;&gt;
  &lt;label class=&quot;btn btn-primary&quot;&gt;
    &lt;input type=&quot;checkbox&quot;&gt; Option 1
  &lt;/label&gt;
  &lt;label class=&quot;btn btn-primary&quot;&gt;
    &lt;input type=&quot;checkbox&quot;&gt; Option 2
  &lt;/label&gt;
  &lt;label class=&quot;btn btn-primary&quot;&gt;
    &lt;input type=&quot;checkbox&quot;&gt; Option 3
  &lt;/label&gt;
&lt;/div&gt;</code></pre>

</div>

    <h4>单选</h4>
    <p>通过向按钮组添加<code>data-toggle="buttons"</code>可以让按钮组具有单选框的功能。</p>
    <div class="bs-example" style="padding-bottom: 24px;">
      <div class="btn-group" data-toggle="buttons">
        <label class="btn btn-primary">
          <input type="radio" name="options" id="option1"> Option 1
        </label>
        <label class="btn btn-primary">
          <input type="radio" name="options" id="option2"> Option 2
        </label>
        <label class="btn btn-primary">
          <input type="radio" name="options" id="option3"> Option 3
        </label>
      </div>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;btn-group&quot; data-toggle=&quot;buttons&quot;&gt;
  &lt;label class=&quot;btn btn-primary&quot;&gt;
    &lt;input type=&quot;radio&quot; name=&quot;options&quot; id=&quot;option1&quot;&gt; Option 1
  &lt;/label&gt;
  &lt;label class=&quot;btn btn-primary&quot;&gt;
    &lt;input type=&quot;radio&quot; name=&quot;options&quot; id=&quot;option2&quot;&gt; Option 2
  &lt;/label&gt;
  &lt;label class=&quot;btn btn-primary&quot;&gt;
    &lt;input type=&quot;radio&quot; name=&quot;options&quot; id=&quot;option3&quot;&gt; Option 3
  &lt;/label&gt;
&lt;/div&gt;</code></pre>

</div>


    <h2 id="buttons-usage">用法</h2>
    <p>通过JavaScript构建按钮：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'.btn'</span>.button</code></pre>

</div>

    <h3>标记</h3>
    <p>按钮插件完整支持data属性。通过下面的案例可以看到各种使用方式。</p>

    <h3>选项</h3>
    <p><em>None</em></p>

    <h3>方法</h3>

    <h4>.button'toggle'</h4>
    <p>切换按钮状态。赋予按钮被激活时的状态和外观。</p>
    <div class="bs-callout bs-callout-info">
      <h4>自动切换</h4>
      <p>可以使用<code>data-toggle</code>属性让按钮具有自动切换状态的能力。</p>
    </div>
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; class=&quot;btn&quot; data-toggle=&quot;button&quot;&gt;...&lt;/button&gt;</code></pre>

</div>

    <h4>.button'loading'</h4>
    <p>设置按钮状态为loading - 即将按钮置为禁用状态并将文字内容切换为loading。通过使用<code>data-loading-text</code>可以在按钮元素上定义loading文本。</p>
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; class=&quot;btn&quot; data-loading-text=&quot;loading stuff...&quot;&gt;...&lt;/button&gt;</code></pre>

</div>

    <div class="bs-callout bs-callout-danger">
      <h4>跨浏览器兼容性</h4>
      <p><a href="https://github.com/twbs/bootstrap/issues/793">Firefox会在多个页面加载之间保持按钮的禁用状态</a>。可以通过添加<code>autocomplete="off"</code>来解决提到的问题。</p>
    </div>

    <h4>.button'reset'</h4>
    <p>重置按钮状态 - 并将按钮上的文本还原为原始值。</p>

    <h4>.buttonstring</h4>
    <p>重置按钮状态 - 并将按钮上的文本重置为传入的值。</p>
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; class=&quot;btn&quot; data-complete-text=&quot;finished!&quot; &gt;...&lt;/button&gt;
&lt;script&gt;
  &#39;.btn&#39;.button&#39;complete&#39;
&lt;/script&gt;</code></pre>

</div>
  </div>



  <!-- Collapse
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="collapse">折叠 <small>collapse.js</small></h1>
    </div>

    <h3>关于</h3>
    <p>对为支持折叠功能的组件，例如accordions和导航，赋予基本样式和灵活的支持。</p>

    <div class="bs-callout bs-callout-danger">
      <h4>插件依赖</h4>
      <p>折叠插件依赖<a href="#transitions">过渡效果插件</a>。</p>
    </div>

    <h2 id="collapse-examples">案例</h2>
    <p>使用折叠插件，通过扩展panel组件从而构建了一个简单的accordion组件。</p>

    <div class="bs-example">
      <div class="panel-group" id="accordion">
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
                Collapsible Group Item #1
              </a>
            </h4>
          </div>
          <div id="collapseOne" class="panel-collapse collapse in">
            <div class="panel-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
                Collapsible Group Item #2
              </a>
            </h4>
          </div>
          <div id="collapseTwo" class="panel-collapse collapse">
            <div class="panel-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
        <div class="panel panel-default">
          <div class="panel-heading">
            <h4 class="panel-title">
              <a data-toggle="collapse" data-toggle="collapse" data-parent="#accordion" href="#collapseThree">
                Collapsible Group Item #3
              </a>
            </h4>
          </div>
          <div id="collapseThree" class="panel-collapse collapse">
            <div class="panel-body">
              Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
            </div>
          </div>
        </div>
      </div>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;panel-group&quot; id=&quot;accordion&quot;&gt;
  &lt;div class=&quot;panel panel-default&quot;&gt;
    &lt;div class=&quot;panel-heading&quot;&gt;
      &lt;h4 class=&quot;panel-title&quot;&gt;
        &lt;a data-toggle=&quot;collapse&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseOne&quot;&gt;
          Collapsible Group Item #1
        &lt;/a&gt;
      &lt;/h4&gt;
    &lt;/div&gt;
    &lt;div id=&quot;collapseOne&quot; class=&quot;panel-collapse collapse in&quot;&gt;
      &lt;div class=&quot;panel-body&quot;&gt;
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&#39;t heard of them accusamus labore sustainable VHS.
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  &lt;div class=&quot;panel panel-default&quot;&gt;
    &lt;div class=&quot;panel-heading&quot;&gt;
      &lt;h4 class=&quot;panel-title&quot;&gt;
        &lt;a data-toggle=&quot;collapse&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseTwo&quot;&gt;
          Collapsible Group Item #2
        &lt;/a&gt;
      &lt;/h4&gt;
    &lt;/div&gt;
    &lt;div id=&quot;collapseTwo&quot; class=&quot;panel-collapse collapse&quot;&gt;
      &lt;div class=&quot;panel-body&quot;&gt;
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&#39;t heard of them accusamus labore sustainable VHS.
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
  &lt;div class=&quot;panel panel-default&quot;&gt;
    &lt;div class=&quot;panel-heading&quot;&gt;
      &lt;h4 class=&quot;panel-title&quot;&gt;
        &lt;a data-toggle=&quot;collapse&quot; data-toggle=&quot;collapse&quot; data-parent=&quot;#accordion&quot; href=&quot;#collapseThree&quot;&gt;
          Collapsible Group Item #3
        &lt;/a&gt;
      &lt;/h4&gt;
    &lt;/div&gt;
    &lt;div id=&quot;collapseThree&quot; class=&quot;panel-collapse collapse&quot;&gt;
      &lt;div class=&quot;panel-body&quot;&gt;
        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven&#39;t heard of them accusamus labore sustainable VHS.
      &lt;/div&gt;
    &lt;/div&gt;
  &lt;/div&gt;
&lt;/div&gt;</code></pre>

</div>

    <p>You can also use the plugin without the accordion markup. Make a button toggle the expanding and collapsing of another element.</p>
<div class="highlight">
<pre><code class="language-html">&lt;button type=&quot;button&quot; class=&quot;btn btn-danger&quot; data-toggle=&quot;collapse&quot; data-target=&quot;#demo&quot;&gt;
  simple collapsible
&lt;/button&gt;

&lt;div id=&quot;demo&quot; class=&quot;collapse in&quot;&gt;...&lt;/div&gt;</code></pre>

</div>


    <h2 id="collapse-usage">用法</h2>
    <p>The collapse plugin utilizes a few classes to handle the heavy lifting:</p>
    <ul>
      <li><code>.collapse</code> hides the content</li>
      <li><code>.collapse.in</code> shows the content</li>
      <li><code>.collapsing</code> is added when the transition starts, and removed when it finishes</li>
    </ul>
    <p>These classes can be found in <code>component-animations.less</code>.</p>

    <h3>通过data属性</h3>
    <p>仅仅通过向页面元素添加<code>data-toggle="collapse"</code> 和<code>data-target</code>就可以为其赋予控制可折叠页面元素的能力。<code>data-target</code>属性接受一个CSS选择器作为其控制对象。请确保为可折叠页面元素添加<code>collapse</code> class。如果你希望可折叠页面元素的默认状态是展开的，请添加<code>in</code> class。</p>
    <p>为了给一组可折叠页面元素添加控制器，添加<code>data-parent="#selector"</code>即可。请参考下面给出的案例。</p>

    <h3>通过JavaScript</h3>
    <p>手动触发：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'.collapse'</span>.collapse</code></pre>

</div>

    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-parent=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">名称</th>
           <th style="width: 50px;">类型</th>
           <th style="width: 50px;">默认值</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>parent</td>
           <td>selector</td>
           <td>false</td>
           <td>If selector then all collapsible elements under the specified parent will be closed when this collapsible item is shown. similar to traditional accordion behavior - this dependent on the <code>accordion-group</code> class</td>
         </tr>
         <tr>
           <td>toggle</td>
           <td>boolean</td>
           <td>true</td>
           <td>Toggles the collapsible element on invocation</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

    <h3>方法</h3>

    <h4>.collapseoptions</h4>
    <p>赋予页面元素可折叠功能。接受一个可选的<code>object</code>作为参数。
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myCollapsible'</span>.collapse
  toggle: <span class="literal">false</span>
</code></pre>

</div>

    <h4>.collapse'toggle'</h4>
    <p>展示或隐藏一个可折叠的页面元素。</p>

    <h4>.collapse'show'</h4>
    <p>展示一个可折叠页面元素。</p>

    <h4>.collapse'hide'</h4>
    <p>隐藏一个可折叠页面元素。</p>

    <h3>事件</h3>
    <p>Bootstrap中的折叠插件对外暴露了一组可以监听的事件。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>show.bs.collapse</td>
           <td>当<code>show</code>方法被调用之后立即触发此事件。</td>
         </tr>
         <tr>
           <td>shown.bs.collapse</td>
           <td>当可折叠页面元素显示出来之后（同时CSS过渡效果也已执行完毕），此事件被触发。</td>
         </tr>
         <tr>
           <td>hide.bs.collapse</td>
           <td>
            当<code>hide</code>方法被调用之后，此事件被立即触发。
           </td>
         </tr>
         <tr>
           <td>hidden.bs.collapse</td>
           <td>当可折叠页面元素隐藏之后（同时CSS过渡效果也已执行完毕），此事件被触发。</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myCollapsible'</span>.on<span class="string">'hidden.bs.collapse'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>



  <!-- Carousel
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="carousel">轮播 <small>carousel.js</small></h1>
    </div>

    <h2 id="carousel-examples">案例</h2>
    <p>下面展示的就是此插件和相关组件制作的轮播案例。</p>
    <div class="bs-example">
      <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-generic" data-slide-to="1"></li>
          <li data-target="#carousel-example-generic" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img data-src="holder.js/900x500/auto/#777:#555/text:First slide" alt="First slide">
          </div>
          <div class="item">
            <img data-src="holder.js/900x500/auto/#666:#444/text:Second slide" alt="Second slide">
          </div>
          <div class="item">
            <img data-src="holder.js/900x500/auto/#555:#333/text:Third slide" alt="Third slide">
          </div>
        </div>
        <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;div id=&quot;carousel-example-generic&quot; class=&quot;carousel slide&quot; data-ride=&quot;carousel&quot;&gt;
  &lt;!-- Indicators --&gt;
  &lt;ol class=&quot;carousel-indicators&quot;&gt;
    &lt;li data-target=&quot;#carousel-example-generic&quot; data-slide-to=&quot;0&quot; class=&quot;active&quot;&gt;&lt;/li&gt;
    &lt;li data-target=&quot;#carousel-example-generic&quot; data-slide-to=&quot;1&quot;&gt;&lt;/li&gt;
    &lt;li data-target=&quot;#carousel-example-generic&quot; data-slide-to=&quot;2&quot;&gt;&lt;/li&gt;
  &lt;/ol&gt;

  &lt;!-- Wrapper for slides --&gt;
  &lt;div class=&quot;carousel-inner&quot;&gt;
    &lt;div class=&quot;item active&quot;&gt;
      &lt;img src=&quot;...&quot; alt=&quot;...&quot;&gt;
      &lt;div class=&quot;carousel-caption&quot;&gt;
        ...
      &lt;/div&gt;
    &lt;/div&gt;
    ...
  &lt;/div&gt;

  &lt;!-- Controls --&gt;
  &lt;a class=&quot;left carousel-control&quot; href=&quot;#carousel-example-generic&quot; data-slide=&quot;prev&quot;&gt;
    &lt;span class=&quot;glyphicon glyphicon-chevron-left&quot;&gt;&lt;/span&gt;
  &lt;/a&gt;
  &lt;a class=&quot;right carousel-control&quot; href=&quot;#carousel-example-generic&quot; data-slide=&quot;next&quot;&gt;
    &lt;span class=&quot;glyphicon glyphicon-chevron-right&quot;&gt;&lt;/span&gt;
  &lt;/a&gt;
&lt;/div&gt;</code></pre>

</div>
<div class="bs-callout bs-callout-warning" id="callout-carousel-transitions">
  <h4>Internet Explorer 8 &amp; 9不支持过渡动画效果</h4>
  <p>Bootstrap基于CSS3实现动画效果，但是Internet Explorer 8 &amp; 9不支持这些必要的CSS属性。因此，使用这两种浏览器时将会丢失过渡动画效果。而且，我们并不打算使用基于jQuery实现替代功能。</p>
</div>

    <h3>可选选项</h3>
    <p>在任何<code>.item</code>中均可以通过添加<code>.carousel-caption</code>从而为每帧幻灯片添加说明文字。也可以添加任何HTML代码，这些HTML代码将会被自动排列和格式化。</p>
    <div class="bs-example">
      <div id="carousel-example-captions" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carousel-example-captions" data-slide-to="0" class="active"></li>
          <li data-target="#carousel-example-captions" data-slide-to="1"></li>
          <li data-target="#carousel-example-captions" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="item active">
            <img data-src="holder.js/900x500/auto/#777:#777" alt="First slide image">
            <div class="carousel-caption">
              <h3>First slide label</h3>
              <p>Nulla vitae elit libero, a pharetra augue mollis interdum.</p>
            </div>
          </div>
          <div class="item">
            <img data-src="holder.js/900x500/auto/#666:#666" alt="Second slide image">
            <div class="carousel-caption">
              <h3>Second slide label</h3>
              <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
          </div>
          <div class="item">
            <img data-src="holder.js/900x500/auto/#555:#5555" alt="Third slide image">
            <div class="carousel-caption">
              <h3>Third slide label</h3>
              <p>Praesent commodo cursus magna, vel scelerisque nisl consectetur.</p>
            </div>
          </div>
        </div>
         <a class="left carousel-control" href="#carousel-example-captions" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left"></span>
        </a>
        <a class="right carousel-control" href="#carousel-example-captions" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right"></span>
        </a>
      </div>
    </div><!-- /example -->
<div class="highlight">
<pre><code class="language-html">&lt;div class=&quot;item active&quot;&gt;
  &lt;img src=&quot;...&quot; alt=&quot;...&quot;&gt;
  &lt;div class=&quot;carousel-caption&quot;&gt;
    &lt;h3&gt;...&lt;/h3&gt;
    &lt;p&gt;...&lt;/p&gt;
  &lt;/div&gt;
&lt;/div&gt;</code></pre>

</div>

<div class="bs-callout bs-callout-danger">
  <h4>可访问性问题</h4>
  <p>轮播组件并不兼容可访问性标准。如果需要兼容，请考虑其他展示幻灯片的方案。</p>
</div>

    <h2 id="carousel-usage">用法</h2>

    <h3>通过data属性</h3>
    <p>通过data属性可以很容易的控制轮播的定位。<code>data-slide</code>可以接受控制播放位置的<code>prev</code>或<code>next</code>关键字。另外，还可以通过<code>data-slide-to</code>传递以<code>0</code>开始的幻灯片下标。</p>
    <p><code>data-ride="carousel"</code>属性用来标记在页面加载之后即开始启动的轮播组件。</p>

    <h3>通过JavaScript</h3>
    <p>手动启动轮播组件：</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'.carousel'</span>.carousel</code></pre>

</div>

    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-interval=""</code>。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">名称</th>
           <th style="width: 50px;">类型</th>
           <th style="width: 50px;">默认值</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>interval</td>
           <td>number</td>
           <td>5000</td>
           <td>幻灯片轮换的等待时间。如果为false，轮播将不会自动开始循环。</td>
         </tr>
         <tr>
           <td>pause</td>
           <td>string</td>
           <td>"hover"</td>
           <td>鼠标停留在幻灯片区域即暂停轮播，鼠标离开即启动轮播。</td>
         </tr>
         <tr>
           <td>wrap</td>
           <td>boolean</td>
           <td>true</td>
           <td>轮播是否持续循环。</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

    <h3>方法</h3>

    <h4>.carouseloptions</h4>
    <p>初始化轮播组件，接受一个可选的<code>object</code>类型的options参数，并开始幻灯片循环。</p>
<div class="highlight">
<pre><code class="language-js"><span class="string">'.carousel'</span>.carousel
  interval: <span class="number">2000</span>
</code></pre>

</div>

    <h4>.carousel'cycle'</h4>
    <p>从左到右循环各帧。</p>

    <h4>.carousel'pause'</h4>
    <p>停止轮播。</p>


    <h4>.carouselnumber</h4>
    <p>将轮播定位到指定的帧上（帧下标以0开始，类似数组）。</p>

    <h4>.carousel'prev'</h4>
    <p>返回到上一帧。</p>

    <h4>.carousel'next'</h4>
    <p>转到下一帧。</p>

    <h3>事件</h3>
    <p>Bootstrap的轮播组件暴露了两个事件用于监听。</p>
    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 150px;">事件类型</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>slide.bs.carousel</td>
           <td>此事件在<code>slide</code>方法被调用之后立即出发。</td>
         </tr>
         <tr>
           <td>slid.bs.carousel</td>
           <td>当所有幻灯片播放完之后被触发。</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->
<div class="highlight">
<pre><code class="language-js"><span class="string">'#myCarousel'</span>.on<span class="string">'slide.bs.carousel'</span>, <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
  <span class="comment">// do something…</span>
</code></pre>

</div>
  </div>



  <!-- Affix
  ================================================== -->
  <div class="bs-docs-section">
    <div class="page-header">
      <h1 id="affix">Affix <small>affix.js</small></h1>
    </div>

    <h2 id="affix-examples">案例</h2>
    <p>本页面左侧的导航就是affix插件的完整实例。</p>

    <hr class="bs-docs-separator">

    <h2 id="affix-usage">用法</h2>

    <h3>通过data属性</h3>
    <p>只需为需要监听的页面元素添加<code>data-spy="affix"</code>即可方便的添加affix行为。然后设置Then use offsets to define when to toggle the pinning of an element on and off.</p>

<div class="highlight">
<pre><code class="language-html">&lt;div data-spy=&quot;affix&quot; data-offset-top=&quot;200&quot;&gt;...&lt;/div&gt;</code></pre>

</div>

    <div class="bs-callout bs-callout-warning">
      <h4>Requires independent styling ;</h4>
      <p>
        Affix插件在三中状态之间切换：<code>affix</code>、<code>affix-top</code>和<code>affix-bottom</code>。你必须为这三种状态提供自己的样式（不依赖此插件）。
        <code>affix-top</code> class应当是在正常文档流中的状态。<code>affix</code> class应当是以fixed方式定位时的状态。<code>affix-bottom</code>应当是以absolute方式定位时的状态。注意，<code>affix-bottom</code>在此插件中比较特殊， is special in that the plugin will place the element with JS relative to the <code>offset:  bottom: number </code> option you've provided.
      </p>
    </div>

    <h3>通过JavaScript</h3>
    <p>通过JavaScript启动affix插件：</p>
<div class="highlight">
<pre><code class="language-js">  <span class="string">'#myAffix'</span>.affix
    offset: 
      top: <span class="number">100</span>
    , bottom: <span class="function"><span class="keyword">function</span> <span class="params"></span> </span>
        <span class="keyword">return</span> <span class="keyword">this</span>.bottom = <span class="string">'.bs-footer'</span>.outerHeight<span class="literal">true</span>
      
    
  </code></pre>

</div>


    <h3>选项</h3>
    <p>可以将选项通过data属性或JavaScript传递。对于data属性，需要将选项名称放到<code>data-</code>之后，例如<code>data-offset-top="200"</code>。</p>

    <div class="table-responsive">
      <table class="table table-bordered table-striped">
        <thead>
         <tr>
           <th style="width: 100px;">名称</th>
           <th style="width: 100px;">类型</th>
           <th style="width: 50px;">默认值</th>
           <th>描述</th>
         </tr>
        </thead>
        <tbody>
         <tr>
           <td>offset</td>
           <td>number | function | object</td>
           <td>10</td>
           <td>Pixels to offset from screen when calculating position of scroll. If a single number is provided, the offset will be applied in both top and bottom directions. To provide a unique, bottom and top offset just provide an object <code>offset:  top: 10 </code> or <code>offset:  top: 10, bottom: 5 </code>. Use a function when you need to dynamically calculate an offset.</td>
         </tr>
        </tbody>
      </table>
    </div><!-- /.table-responsive -->

  </div>

        </div>
      </div>

    </div>


{/block}

{block name=b_pagefoot}
    {include file="foot.inc"}
{/block}

{block name=b_pagejs}
<script type="text/javascript">
    require(['src/affix']);
</script>
{/block}

