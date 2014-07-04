{config_load file="cn.conf" section="menu"}
<a class="sr-only sr-only-focusable" href="#content">Skip to main content</a>
<header class="navbar navbar-static-top bs-docs-nav" id="top" role="banner">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".bs-navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="../" class="navbar-brand">Bootstrap</a>
    </div>
    <nav class="collapse navbar-collapse bs-navbar-collapse" role="navigation">
      <ul class="nav navbar-nav">
        <li{if $current == "index"} class="active"{/if}><a href="./index.php">{#index#}</a></li>
        <li{if $current == "product"} class="active"{/if}><a href="./product.php">{#product#}</a></li>
        <li{if $current == "goodcase"} class="active"{/if}><a href="./goodcase.php">{#goodcase#}</a></li>
        <li{if $current == "price"} class="active"{/if}><a href="./price.php">{#price#}</a></li>
        <li{if $current == "share"} class="active"{/if}><a href="./share.php">{#share#}</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li{if $current == "aboutus"} class="active"{/if}><a href="./aboutus.php">{#aboutus#}</a></li>
      </ul>
    </nav>
  </div>
</header>


