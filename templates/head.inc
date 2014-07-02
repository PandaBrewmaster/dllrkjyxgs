{config_load file="language.conf" section="menu"}

<div class="container navbar-inverse navbar-fixed-top">
    <ul class="nav navbar-nav">
        <li{if $current == "index"} class="active"{/if}><a href="./index.php">{#index#}</a></li>
        <li{if $current == "product"} class="active"{/if}><a href="./product.php">{#product#}</a></li>
        <li{if $current == "goodcase"} class="active"{/if}><a href="./goodcase.php">{#goodcase#}</a></li>
        <li{if $current == "price"} class="active"{/if}><a href="./price.php">{#price#}</a></li>
        <li{if $current == "share"} class="active"{/if}><a href="./share.php">{#share#}</a></li>
        <li{if $current == "aboutus"} class="active"{/if}><a href="./aboutus.php">{#aboutus#}</a></li>
    </ul>
</div>

