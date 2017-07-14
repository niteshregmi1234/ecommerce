<!--
	Author: W3layouts
	Author URL: http://w3layouts.com
	License: Creative Commons Attribution 3.0 Unported
	License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html lang="zxx">
<!-- Head -->
<head>
    <title>Groovy Apparel a E-Commerce & Fashion Category Bootstrap Responsive Website Template | Men's :: W3layouts</title>

    <!-- Meta-Tags -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="keywords" content="Groovy Apparel a Responsive Web Template, Bootstrap Web Templates, Flat Web Templates, Android Compatible Web Template, Smartphone Compatible Web Template, Free Webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design">
    <!-- //Meta-Tags -->
    <!-- //Font-Awesome-File-Links -->
    <meta name="layout" content="endUserYamsaa">
</head>
<!-- //Head -->



<!-- Body -->
<body>



<!-- Header -->
<!-- //Header -->

<div class="agileheader-banner">
    <img src="${resource(dir: "images/subCategoryImage",file: "${productSubCategory.coverImageName}")}" width="1291" height="379">

</div>


<!-- Heading -->
<h1 class="w3wthreeheadingaits">${productSubCategory.subCategoryName}</h1>
<!-- //Heading -->



<!-- Men's-Product-Display -->
<div class="wthreeproductdisplay">
    <div id="cbp-pgcontainer" class="cbp-pgcontainer">
        <ul class="cbp-pggrid">
            <g:each in="${productList}" var="list">
                <li class="wthree aits w3l">
                    <div class="cbp-pgcontent" id="men-8">
                        <span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>
                        <a href="mens_single.html">
                            <div class="cbp-pgitem a3ls">
                                <div class="cbp-pgitem-flip">
                                    <g:link action="singleProduct" id="${list.id}" controller="endUser">
                                        <img src="${resource(dir: "images/allProducts/frontImage",file: "${list.frontImageName}")}" height="276.217" width="276.217">

                                        <img src="${resource(dir: "images/allProducts/backImage",file: "${list.backImageName}")}" height="276.217" width="276.217">
                                    </g:link>

                                </div>
                            </div>
                        </a>
                        %{--<ul class="cbp-pgoptions w3l">--}%
                        %{--<li class="cbp-pgoptcompare">--}%
                        %{--<input type="checkbox" name="checkboxG8" id="checkboxG8" class="css-checkbox w3"><label for="checkboxG8" class="css-label"></label>--}%
                        %{--</li>--}%
                        %{--<li class="cbp-pgoptfav">--}%
                        %{--<span>5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
                        %{--</li>--}%
                        %{--<li class="cbp-pgoptsize agile">--}%
                        %{--<span data-size="XL">XL</span>--}%
                        %{--<div class="cbp-pgopttooltip">--}%
                        %{--<span data-size="XL">XL</span>--}%
                        %{--<span data-size="L">L</span>--}%
                        %{--<span data-size="M">M</span>--}%
                        %{--<span data-size="S">S</span>--}%
                        %{--</div>--}%
                        %{--</li>--}%
                        %{--<li class="cbp-pgoptcart">--}%
                        %{--<form action="#" method="post">--}%
                        %{--<input type="hidden" name="cmd" value="_cart">--}%
                        %{--<input type="hidden" name="add" value="1"> --}%
                        %{--<input type="hidden" name="w3l_item" value="Sweater "> --}%
                        %{--<input type="hidden" name="amount" value="25.00"> --}%
                        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--}%
                        %{--<span class="w3-agile-line"> </span>--}%
                        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
                        %{--</form>--}%
                        %{--</li>--}%
                        %{--</ul>--}%
                    </div>
                    <g:link action="singleProduct" controller="endUser" id="${list.id}">
                        <div class="cbp-pginfo w3layouts">
                            <h3>${list.productDetails.productName}</h3>
                        </div>
                    </g:link>
                </li>
            </g:each>
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-8">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/2-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/2-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG8" id="checkboxG8" class="css-checkbox w3"><label for="checkboxG8" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Grey T-Shirt "> --}%
        %{--<input type="hidden" name="amount" value="15.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Grey T-Shirt</h3>--}%
        %{--<span class="cbp-pgprice">$15</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-8">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/3-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/3-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG8" id="checkboxG8" class="css-checkbox w3"><label for="checkboxG8" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="White T-Shirt "> --}%
        %{--<input type="hidden" name="amount" value="15.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>White T-Shirt</h3>--}%
        %{--<span class="cbp-pgprice">$15</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-7">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/4-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/4-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG7" id="checkboxG7" class="css-checkbox w3"><label for="checkboxG7" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>4.5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Denim Jaket "> --}%
        %{--<input type="hidden" name="amount" value="15.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> </button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Denim Jacket</h3>--}%
        %{--<span class="cbp-pgprice">$15</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-8">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/5-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/5-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG8" id="checkboxG8" class="css-checkbox w3"><label for="checkboxG8" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Blue Jeans "> --}%
        %{--<input type="hidden" name="amount" value="20.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Blue Jeans</h3>--}%
        %{--<span class="cbp-pgprice">$20</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-9">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/6-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/6-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG9" id="checkboxG9" class="css-checkbox w3"><label for="checkboxG9" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Green Trousers "> --}%
        %{--<input type="hidden" name="amount" value="18.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Green Trousers</h3>--}%
        %{--<span class="cbp-pgprice">$18</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-7">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/7-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/7-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG7" id="checkboxG7" class="css-checkbox w3"><label for="checkboxG7" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>4.5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Red Shorts "> --}%
        %{--<input type="hidden" name="amount" value="15.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> </button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Red Shorts</h3>--}%
        %{--<span class="cbp-pgprice">$15</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-8">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/8-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/8-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG8" id="checkboxG8" class="css-checkbox w3"><label for="checkboxG8" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Black Jacket "> --}%
        %{--<input type="hidden" name="amount" value="35.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i></button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Black Jacket</h3>--}%
        %{--<span class="cbp-pgprice">$35</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        %{--<li class="wthree aits w3l">--}%
        %{--<div class="cbp-pgcontent" id="men-7">--}%
        %{--<span class="cbp-pgrotate"><i class="fa fa-exchange" aria-hidden="true"></i></span>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pgitem a3ls">--}%
        %{--<div class="cbp-pgitem-flip">--}%
        %{--<img src="images/4-front.jpg" alt="Groovy Apparel">--}%
        %{--<img src="images/4-back.jpg" alt="Groovy Apparel">--}%
        %{--</div>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--<ul class="cbp-pgoptions w3l">--}%
        %{--<li class="cbp-pgoptcompare">--}%
        %{--<input type="checkbox" name="checkboxG7" id="checkboxG7" class="css-checkbox w3"><label for="checkboxG7" class="css-label"></label>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptfav">--}%
        %{--<span>4.5 <i class="fa fa-star" aria-hidden="true"></i></span>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptsize agile">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<div class="cbp-pgopttooltip">--}%
        %{--<span data-size="XL">XL</span>--}%
        %{--<span data-size="L">L</span>--}%
        %{--<span data-size="M">M</span>--}%
        %{--<span data-size="S">S</span>--}%
        %{--</div>--}%
        %{--</li>--}%
        %{--<li class="cbp-pgoptcart">--}%
        %{--<form action="#" method="post">--}%
        %{--<input type="hidden" name="cmd" value="_cart">--}%
        %{--<input type="hidden" name="add" value="1"> --}%
        %{--<input type="hidden" name="w3l_item" value="Denim Jaket "> --}%
        %{--<input type="hidden" name="amount" value="15.00"> --}%
        %{--<button type="submit" class="w3l-cart pw3l-cart"><i class="fa fa-cart-plus" aria-hidden="true"></i> </button>--}%
        %{--<span class="w3-agile-line"> </span>--}%
        %{--<a href="#" data-toggle="modal" data-target="#myModal1"></a>--}%
        %{--</form>--}%
        %{--</li>--}%
        %{--</ul>--}%
        %{--</div>--}%
        %{--<a href="mens_single.html">--}%
        %{--<div class="cbp-pginfo w3layouts">--}%
        %{--<h3>Denim Jacket</h3>--}%
        %{--<span class="cbp-pgprice">$15</span>--}%
        %{--</div>--}%
        %{--</a>--}%
        %{--</li>--}%
        </ul>
    </div>
</div>
<!-- //Men's-Product-Display -->



<!-- Newsletter -->
<div class="w3lsnewsletter" id="w3lsnewsletter">
    <div class="container">
        <div class="w3lsnewsletter-grids">
            <div class="col-md-5 w3lsnewsletter-grid w3lsnewsletter-grid-1 subscribe">
                <h2>Subscribe to our Newsletter</h2>
            </div>
            <div class="col-md-7 w3lsnewsletter-grid w3lsnewsletter-grid-2 email-form">
                <form action="#" method="post">
                    <input class="email" type="email" name="Email" placeholder="Email Address" required="">
                    <input type="submit" class="submit" value="SUBSCRIBE">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //Newsletter -->



<!-- Footer -->
<!-- //Footer -->



<!-- Copyright -->
<!-- //Copyright -->
<!-- Custom-JavaScript-File-Links -->
<!-- Default-JavaScript -->



<!-- Shopping-Cart-JavaScript -->
<!-- cart-js -->
<script>
    w3l.render();

    w3l.cart.on('w3agile_checkout', function (evt) {
        var items, len, i;

        if (this.subtotal() > 0) {
            items = this.items();

            for (i = 0, len = items.length; i < len; i++) {
            }
        }
    });
</script>
<!-- //cart-js -->

<!-- Shopping-Cart-JavaScript -->

<!-- Dropdown-Menu-JavaScript -->
<script>
    $(document).ready(function(){
        $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
                    $(this).toggleClass('open');
                }
        );
    });
</script>
<!-- //Dropdown-Menu-JavaScript -->

<!-- Popup-Box-JavaScript -->
<script>
    $(document).ready(function() {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });
    });
</script>
<!-- //Popup-Box-JavaScript -->

<script>
    var shop = new cbpShop( document.getElementById( 'cbp-pgcontainer' ) );
</script>

<!-- //Custom-JavaScript-File-Links -->


</body>
<!-- //Body -->



</html>