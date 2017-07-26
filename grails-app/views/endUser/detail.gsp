<!DOCTYPE html>
<html lang="en">

<head>
<meta name="layout" content="userYarsaa">
<title>


</title>

</head>

<body>

    <!-- *** TOPBAR ***
 _________________________________________________________ -->

    <!-- *** TOP BAR END *** -->

    <!-- *** NAVBAR ***
 _________________________________________________________ -->

    <!-- /#navbar -->

    <!-- *** NAVBAR END *** -->

    <div id="all">

        <div id="content">
            <div class="container">

                <div class="col-md-12">
                    <ul class="breadcrumb">
                        <li><a href="#">Home</a>
                        </li>
                        <li><a href="#">Ladies</a>
                        </li>
                        <li><a href="#">Tops</a>
                        </li>
                        <li>White Blouse Armani</li>
                    </ul>

                </div>

                <div class="col-md-3">
                    <!-- *** MENUS AND FILTERS ***
 _________________________________________________________ -->
                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Categories</h3>
                        </div>

                        <div class="panel-body">
                            <ul class="nav nav-pills nav-stacked category-menu">
                                <g:each in="${productCategoryList}" var="categoryList">
                                    <g:if test="${categoryList.equals(productCategory)}">
                                        <li class="active">
                                    </g:if>
                                    <g:if test="${categoryList!=(productCategory)}">
                                        <li>

                                    </g:if>
                                    <g:link action="allCategoryProducts" id="${categoryList.id}" controller="endUser">${categoryList.categoryName} <span class="badge pull-right"></span></g:link>
                                    <ul>
                                        <g:each in="${productSubCategoryList}" var="subCategoryList">
                                            <li><g:link action="subCategoryList" controller="endUser" params="[id1:categoryList.id,id2:subCategoryList.id]">${subCategoryList.subCategoryName}</g:link>

                                            </li>
                                        %{--<li><a href="category.html">Shirts</a>--}%
                                        </g:each>   %{--</li>--}%
                                    %{--<li><a href="category.html">Pants</a>--}%
                                    %{--</li>--}%
                                    %{--<li><a href="category.html">Accessories</a>--}%
                                    %{--</li>--}%
                                    </ul>
                                    </li>
                                </g:each>
                            %{--<li class="active">--}%
                            %{--<a href="category.html">Ladies  <span class="badge pull-right">123</span></a>--}%
                            %{--<ul>--}%
                            %{--<li><a href="category.html">T-shirts</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="category.html">Skirts</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="category.html">Pants</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="category.html">Accessories</a>--}%
                            %{--</li>--}%
                            %{--</ul>--}%
                            %{--</li>--}%
                            %{--<li>--}%
                            %{--<a href="category.html">Kids  <span class="badge pull-right">11</span></a>--}%
                            %{--<ul>--}%
                            %{--<li><a href="category.html">T-shirts</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="category.html">Skirts</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="category.html">Pants</a>--}%
                            %{--</li>--}%
                            %{--<li><a href="category.html">Accessories</a>--}%
                            %{--</li>--}%
                            %{--</ul>--}%
                            %{--</li>--}%

                            </ul>

                        </div>
                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Brands </h3>
                        </div>

                        <div class="panel-body">

                            <g:form action="abc" controller="endUser">
                                <div class="form-group">
                                    <g:each in="${productBrandList}" var="brandList">
                                        <div class="checkbox">
                                            <label>
                                                <g:checkBox name="brand" value="${brandList.id}"  />${brandList.brandName}
                                            </label>
                                        </div>
                                    </g:each>
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                            </g:form>

                        </div>
                    </div>

                    <div class="panel panel-default sidebar-menu">

                        <div class="panel-heading">
                            <h3 class="panel-title">Colours</h3>
                        </div>

                        <div class="panel-body">

                            <form>
                                <div class="form-group">
                                    <g:each in="${productColourList}" var="colourList">
                                        <div class="checkbox">
                                            <label>
                                                <g:checkBox name="colour" value="${colourList.id}"/>${colourList.colorName}

                                            </label>
                                        </div>
                                    </g:each>
                                %{--<div class="checkbox">--}%
                                %{--<label>--}%
                                %{--<input type="checkbox"> <span class="colour blue"></span> Blue (10)--}%
                                %{--</label>--}%
                                %{--</div>--}%
                                %{--<div class="checkbox">--}%
                                %{--<label>--}%
                                %{--<input type="checkbox"> <span class="colour green"></span> Green (20)--}%
                                %{--</label>--}%
                                %{--</div>--}%
                                %{--<div class="checkbox">--}%
                                %{--<label>--}%
                                %{--<input type="checkbox"> <span class="colour yellow"></span> Yellow (13)--}%
                                %{--</label>--}%
                                %{--</div>--}%
                                %{--<div class="checkbox">--}%
                                %{--<label>--}%
                                %{--<input type="checkbox"> <span class="colour red"></span> Red (10)--}%
                                %{--</label>--}%
                                %{--</div>--}%
                                </div>

                                <button class="btn btn-default btn-sm btn-primary"><i class="fa fa-pencil"></i> Apply</button>

                            </form>

                        </div>
                    </div>

                    <!-- *** MENUS AND FILTERS END *** -->

                    %{--<div class="banner">--}%
                    %{--<a href="#">--}%
                    %{--<img src="img/banner.jpg" alt="sales 2014" class="img-responsive">--}%
                    %{--</a>--}%
                    %{--</div>--}%
                </div>


                <div class="col-md-9">
                    <div class="row" id="productMain">
                        <div class="col-sm-6">
                            <div id="mainImage" class="mainImage-coverDown mainImage-height">
                                    <img id="myImg " src="${resource(dir: "images/allProducts/frontImage",file: "${productInstance.frontImageName}")}" alt="" class="img-responsive image-zoom mainImage-height">

                            </div>
                            <div class="ribbon sale">
                                <div class="theribbon">SALE</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <div id="myModal" class="modal">
                                <span id="a" class="close">x</span>
                                <img class="modal-content" id="img01">
                                <div id="caption"></div>
                            </div>
                            <style>
                            #myImg {
                                border-radius: 5px;
                                cursor: pointer;
                                transition: 0.3s;
                            }

                            #myImg:hover {opacity: 0.7;}

                            /* The Modal (background) */
                            .modal {
                                display: none; /* Hidden by default */
                                position: fixed; /* Stay in place */
                                z-index: 1; /* Sit on top */
                                padding-top: 50px; /* Location of the box */
                                left: 0;
                                top: 0;
                                width: 100%; /* Full width */
                                height: 100%; /* Full height */
                                overflow: auto; /* Enable scroll if needed */
                                background-color: rgb(0,0,0); /* Fallback color */
                                background-color: rgba(0,0,0,0.9); /* Black w/ opacity */
                            }

                            /* Modal Content (image) */
                            .modal-content {
                                margin: auto;
                                display: block;
                                width: 800px;
                                height:1000px;
                            }

                            /* Caption of Modal Image */
                            #caption {
                                margin: auto;
                                display: block;
                                width: 80%;
                                max-width: 700px;
                                text-align: center;
                                color: #ccc;
                                height: 150px;
                            }

                            /* Add Animation */
                            .modal-content, #caption {
                                -webkit-animation-name: zoom;
                                -webkit-animation-duration: 0.6s;
                                animation-name: zoom;
                                animation-duration: 0.6s;
                            }

                            @-webkit-keyframes zoom {
                                from {-webkit-transform:scale(0)}
                                to {-webkit-transform:scale(1)}
                            }

                            @keyframes zoom {
                                from {transform:scale(0)}
                                to {transform:scale(1)}
                            }

                            /* The Close Button */
                            .close {
                                position: absolute;
                                top: 15px;
                                right: 35px;
                                color: #f1f1f1;
                                font-size: 40px;
                                font-weight: bold;
                                transition: 0.3s;
                            }

                            .close:hover,
                            .close:focus {
                                color: #bbb;
                                text-decoration: none;
                                cursor: pointer;
                            }

                            /* 100% Image Width on Smaller Screens */
                            @media only screen and (max-width: 700px){
                                .modal-content {
                                    width: 100%;
                                }
                            }
                            </style>

                            <script>
                                // Get the modal
                                var modal = document.getElementById('myModal');
                                var span = document.getElementById("a");

                                // Get the image and insert it inside the modal - use its "alt" text as a caption
                                var img = document.getElementById('myImg');
                                var modalImg = document.getElementById("img01");
                                var captionText = document.getElementById("caption");
                                img.onclick = function(){
                                    modal.style.display = "block";
                                    modalImg.src = this.src;
                                    captionText.innerHTML = this.alt;
                                }

                                // Get the <span> element that closes the modal

                                // When the user clicks on <span> (x), close the modal
                                span.onclick = function() {
                                    modal.style.display ="none";
                                }
                            </script>

                            <!-- /.ribbon -->
                            <div class="ribbon new">
                                <div class="theribbon">NEW</div>
                                <div class="ribbon-background"></div>
                            </div>
                            <!-- /.ribbon -->

                        </div>
                        <div class="col-sm-6">
                            <div class="box box-height">
                                <h1 class="text-center">White Blouse Armani</h1>
                                <p class="goToDescription"><a href="#details" class="scroll-to">Scroll to product details, material & care and sizing</a>
                                </p>
                                <div class="price">
                                <ul style="list-style: none;">
                                    <li>$124.00</li>
                                    <li>
                                        <small><del>$200</del></small>
                                    </li>
                                </ul>
                                </div>
                                <p class="text-center buttons">
                                    <a href="basket.html" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Add to cart</a>
                                    <a href="basket.html" class="btn btn-default"><i class="fa fa-heart"></i> Add to wishlist</a>
                                </p>


                            </div>

                            <div class="row" id="thumbs">
                                <div class="col-xs-4">
                                    <a href="${resource(dir: "images/allProducts/frontImage",file: "${productInstance.frontImageName}")}" class="thumb">
                                        <img src="${resource(dir: "images/allProducts/frontImage",file: "${productInstance.frontImageName}")}" alt="" class="img-responsive img-thumb" data-zoom-image="${resource(dir: "images/allProducts/frontImage",file: "${productInstance.frontImageName}")}">

                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="${resource(dir: "images/allProducts/sideImage",file: "${productInstance.sideImageName}")}" class="thumb">
                                        <img src="${resource(dir: "images/allProducts/sideImage",file: "${productInstance.sideImageName}")}" alt="" class="img-responsive img-thumb" data-zoom-image="${resource(dir: "images/allProducts/sideImage",file: "${productInstance.sideImageName}")}">


                                    </a>
                                </div>
                                <div class="col-xs-4">
                                    <a href="${resource(dir: "images/allProducts/backImage",file: "${productInstance.backImageName}")}" class="thumb">
                                        <img src="${resource(dir: "images/allProducts/backImage",file: "${productInstance.backImageName}")}" alt="" class="img-responsive img-thumb" data-zoom-image="${resource(dir: "images/allProducts/backImage",file: "${productInstance.backImageName}")}" data-zoom-image="${resource(dir: "images/allProducts/backImage",file: "${productInstance.backImageName}")}">
                                    </a>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="pannel-tab">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingOne">
                                <h4 class="panel-title asd">
                                    <a class="pa_italic" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">Description <span class="glyphicon glyphicon glyphicon-chevron-down" aria-hidden="true"></span>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body panel_text">
                                    <div class="scrollbar" id="style-2">
                                        Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingTwo">
                                <h4 class="panel-title asd">
                                    <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">More Colors (2) <span class="glyphicon glyphicon glyphicon-chevron-down" aria-hidden="true"></span><i class="glyphicon glyphicon-menu-up" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="accordion-image">
                                    <div class="ac-img">
                                        <a href="#"><img src="images/product-11.jpg" alt="Groovy Apparel"></a>
                                    </div>
                                    <div class="ac-img">
                                        <a href="#"><img src="images/product-12.jpg" alt="Groovy Apparel"></a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title asd">
                                    <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">Rating & Reviews (40+) <span class="glyphicon glyphicon glyphicon-chevron-down" aria-hidden="true"></span><i class="glyphicon glyphicon-menu-up" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <h3>"Excellent Quality & Fitting!"</h3>
                                <h4>Mathilda, Certified Buyer.</h4>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
                                <span>5 Stars</span>
                                <a href="#" class="next">Next Review &rarr;</a>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingFour">
                                <h4 class="panel-title asd">
                                    <a class="pa_italic collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour">Shipping Info <span class="glyphicon glyphicon glyphicon-chevron-down" aria-hidden="true"></span><i class="glyphicon glyphicon-menu-up" aria-hidden="true"></i>
                                    </a>
                                </h4>
                            </div>
                            <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                <h3>Shipping</h3>
                                <ul class="ship">
                                    <li class="day"><i class="fa fa-calendar" aria-hidden="true"></i> 5-10 Business Days</li>
                                    <li class="home"><i class="fa fa-truck" aria-hidden="true"></i> Free Home Delivery</li>
                                    <li class="cod"><i class="fa fa-male" aria-hidden="true"></i> Cash On Delivery Available*</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    </div>

                    %{--<div class="box" id="details">--}%
                        %{--<p>--}%
                            %{--<h4>Product details</h4>--}%
                            %{--<p>White lace top, woven, has a round neck, short sleeves, has knitted lining attached</p>--}%
                            %{--<h4>Material & care</h4>--}%
                            %{--<ul>--}%
                                %{--<li>Polyester</li>--}%
                                %{--<li>Machine wash</li>--}%
                            %{--</ul>--}%
                            %{--<h4>Size & Fit</h4>--}%
                            %{--<ul>--}%
                                %{--<li>Regular fit</li>--}%
                                %{--<li>The model (height 5'8" and chest 33") is wearing a size S</li>--}%
                            %{--</ul>--}%

                            %{--<blockquote>--}%
                                %{--<p><em>Define style this season with Armani's new range of trendy tops, crafted with intricate details. Create a chic statement look by teaming this lace number with skinny jeans and pumps.</em>--}%
                                %{--</p>--}%
                            %{--</blockquote>--}%

                            %{--<hr>--}%
                            %{--<div class="social">--}%
                                %{--<h4>Show it to your friends</h4>--}%
                                %{--<p>--}%
                                    %{--<a href="#" class="external facebook" data-animate-hover="pulse"><i class="fa fa-facebook"></i></a>--}%
                                    %{--<a href="#" class="external gplus" data-animate-hover="pulse"><i class="fa fa-google-plus"></i></a>--}%
                                    %{--<a href="#" class="external twitter" data-animate-hover="pulse"><i class="fa fa-twitter"></i></a>--}%
                                    %{--<a href="#" class="email" data-animate-hover="pulse"><i class="fa fa-envelope"></i></a>--}%
                                %{--</p>--}%
                            %{--</div>--}%
                    %{--</div>--}%

                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>You may also like these products</h3>
                            </div>
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front front-img">
                                            <a href="detail.gsp">
                                                <img src="img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.gsp">
                                                <img src="img/product2_2.jpg" alt="" class="img-responsive front-img">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.gsp" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">
                                        $143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.gsp">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.gsp">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.gsp" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.gsp">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.gsp">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.gsp" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>

                    <div class="row same-height-row">
                        <div class="col-md-3 col-sm-6">
                            <div class="box same-height">
                                <h3>Products viewed recently</h3>
                            </div>
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.gsp">
                                                <img src="img/product2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.gsp">
                                                <img src="img/product2_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.gsp" class="invisible">
                                    <img src="img/product2.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.gsp">
                                                <img src="img/product1.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.gsp">
                                                <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.gsp" class="invisible">
                                    <img src="img/product1.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>
                                </div>
                            </div>
                            <!-- /.product -->
                        </div>


                        <div class="col-md-3 col-sm-6">
                            <div class="product same-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <a href="detail.gsp">
                                                <img src="img/product3.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                        <div class="back">
                                            <a href="detail.gsp">
                                                <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <a href="detail.gsp" class="invisible">
                                    <img src="img/product3.jpg" alt="" class="img-responsive">
                                </a>
                                <div class="text">
                                    <h3>Fur coat</h3>
                                    <p class="price">$143</p>

                                </div>
                            </div>
                            <!-- /.product -->
                        </div>

                    </div>

                </div>
                <!-- /.col-md-9 -->
            </div>
            <!-- /.container -->
        </div>
        <!-- /#content -->


        <!-- *** FOOTER ***
 _________________________________________________________ -->
        <!-- /#footer -->

        <!-- *** FOOTER END *** -->




        <!-- *** COPYRIGHT ***
 _________________________________________________________ -->
        <!-- *** COPYRIGHT END *** -->



    </div>
    <!-- /#all -->


    

    <!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->






</body>

</html>