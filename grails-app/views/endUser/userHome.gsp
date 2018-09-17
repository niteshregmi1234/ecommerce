<%--
  Created by IntelliJ IDEA.
  User: hemanta
  Date: 7/13/17
  Time: 6:12 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="userYarsaa">
    <title></title>
</head>

<body>
<div id="content">

    %{--<div class="container coverImage" style="width: 1346px;">--}%
        %{--<div class="col-lg-12">--}%
            <div id="main-slider">
<g:each in="${totalArray[0]}" var="list">

                <div class="item">
                   <g:link action="topBrand" controller="endUser" params="[brandNames:list.productBrand.urlName]"> <img src="${resource(dir: 'images', file: 'spinner-cover.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.imageName])}" class="img-responsive lazy"></g:link>

                </div>

     
          </g:each>
            %{--</div>--}%
            <!-- /#main-slider -->
        </div>

    %{--</div>--}%
    %{--<div class="container">--}%
        %{--<div class="col-md-12">--}%
    <img src="https://dummyimage.com/1400x100/000/fff" class="img img-responsive ad-image" />
    <div id="wrapperTopBrand">
            <div class="box topBrandDiv">

            <div class="social">
            <h2 style="color: #09175E; margin-left: 8px;">Top Brands <g:link action="allBrands" controller="endUser"><i class="fa fa-angle-double-right green-tooltip" data-toggle="tooltip" title="see more"></i></g:link></h2>
                <% int j=0
                k=0%>
<g:each in="${totalArray[1]}" var="list" status="i">
    <g:if test="${Product.findByProductDetailsAndDelFlag(ProductDetails.findByProductBrand(list),false)}">
               <% if(j<12) {%>
                <div class="col-md-2 col-sm-2 col-xs-2" style="margin-bottom: 10px;">
        <g:link action="topBrand" controller="endUser" params="[brandNames:list.urlName]">

            <img src="${resource(dir: 'images', file: 'spinner-brand-logo.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.logoName])}" class="img-responsive lazy">
</g:link>
                </div>

        <%}%>
        <% j=j+1%>

    </g:if>
</g:each>



        </div>
                </h4>
            </div>
    <g:if test="${Aids.list()[0]}">
    <div class="topBrandDivSide ">
        <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[0].adDescribe]">
        <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[0].imageName])}" class="img-responsive lazy">
        </g:link>
    </div>
    </g:if>
</div>
    <img src="https://dummyimage.com/1400x100/000/fff" class="img img-responsive ad-image" />
    <g:if test="${totalArray[2]}">
        <div id="wrapperHotProduct">
            <div class="boxBar">
                <h2>Hot this week <g:link action="latestProducts" controller="endUser"><i class="fa fa-angle-double-right green-tooltip" data-toggle="tooltip" title="see more"></i></g:link></h2>
            </div>
        <div id="hot" class="hot">


            <div class="product-slider productHot" id="topDIv">
<g:each in="${totalArray[2]}" var="list">
    <div class="item ">
                    <div class="product product-height">
                        <div class="flip-container">
                            <div class="flipper">
                                <div class="front">
                                    <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">
                                        <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">
                                    </g:link>
                                </div>
                                <div class="back">
    <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">
        <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">
    </g:link>
                                </div>
                            </div>
                        </div>
                        <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]" class="invisible food1">
                            <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">
                        </g:link>
                        <div class="text">
                                %{--<h3><g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">${list.productDetails.productBrand.brandName+"-"+list.productDetails.briefDescription}</g:link></h3>--}%
                                <div class="productDescription">${list.productDetails.briefDescription}</div>
                            <g:if test="${list.productDetails.isSale==true}">
                                <p class="price priceWithDiscount" style="text-align:left;color:#202020;font-weight: 400;font-size: 14px;margin-top: 2px;width: 135px;word-wrap: break-word;"> Rs.<g:formatNumber number="${list.productDetails.price-(list.productDetails.discountPercentage*list.productDetails.price/100)}" type="number" maxFractionDigits="2" />
                                    <del class="del-price" style="font-size: 13px;font-weight: 400;color: #606060;">Rs.${list.productDetails.price}</del></p>
                                <div class="discountBox">-${list.productDetails.discountPercentage}%</div>
                            </g:if>
                            <g:if test="${list.productDetails.isSale==false}">

                                <p class="price priceWithoutDiscount" style="color:#202020;font-weight: 400;font-size: 14px;text-align: left;width: 163px;">Rs.${list.productDetails.price}</p>
                            </g:if>
                        </div>

                    </div>


    </div>
           </g:each>

            </div>
        </div>
            <g:if test="${Aids.list()[1]}">

                <div class="hotProductSide">
                <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[1].adDescribe]">

                            <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[1].imageName])}" class="img-responsive lazy">
                </g:link>

    </div>
            </g:if>
</div>



        <img src="https://dummyimage.com/1400x100/000/fff" class="img img-responsive ad-image" />

    </g:if>
<g:if test="${totalArray[3]}">
    <div class="wrapperSalesProduct">

        <div class="boxBar">
            <h2>Top Sales <g:link action="topSales" controller="endUser"><i class="fa fa-angle-double-right green-tooltip" data-toggle="tooltip" title="see more"></i></g:link></h2>

        </div>

<div id="hot" class="sales">



            <div class="product-slider productHot">
                <g:each in="${totalArray[3]}" var="list">

                    <div class="item">
                        <div class="product product-height">
                            <div class="flip-container">
                                <div class="flipper">
                                    <div class="front">
                                        <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">
                                            <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">

                                        </g:link>
                                    </div>
                                    <div class="back">
                                        <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">

                                            <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">

                                        </g:link>
                                    </div>
                                </div>
                            </div>
                            <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]" class="invisible food1">
                                <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">


                            </g:link>
                            <div class="text">
                                %{--<h3><g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">${list.productDetails.productBrand.brandName+"-"+list.productDetails.briefDescription}</g:link></h3>--}%
                                <div class="productDescription">${list.productDetails.briefDescription}</div>
                                <g:if test="${list.productDetails.isSale==true}">
                                    <p class="price priceWithDiscount" style="text-align:left;color:#202020;font-weight: 400;font-size: 14px;margin-top: 2px;width: 135px;word-wrap: break-word;"> Rs.<g:formatNumber number="${list.productDetails.price-(list.productDetails.discountPercentage*list.productDetails.price/100)}" type="number" maxFractionDigits="2" />
                                        <del class="del-price" style="font-size: 13px;font-weight: 400;color: #606060;">Rs.${list.productDetails.price}</del></p>
                                    <div class="discountBox">-${list.productDetails.discountPercentage}%</div>
                                </g:if>
                                <g:if test="${list.productDetails.isSale==false}">

                                    <p class="price priceWithoutDiscount" style="color:#202020;font-weight: 400;font-size: 14px;text-align: left;width: 163px;">Rs.${list.productDetails.price}</p>
                                </g:if>
                            </div>


                        </div>
                    </div>

                </g:each>
            </div>



    </div>
    <g:if test="${Aids.list()[2]}">

        <div class="salesProductSide">
        <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[2].adDescribe]">

            <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[2].imageName])}" class="img-responsive lazy">
        </g:link>
        </div>
    </g:if>
    </div>

</g:if>

<div class="row aid">
    <div class="col-md-6 col-xs-12 col-sm-12">
        <div class="row">
                <div class="col-md-6 col-sm-6 col-xs-6">
<g:if test="${Aids.list()[3]}">
    <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[3].adDescribe]">
                        <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[3].imageName])}" class="img-responsive lazy smallBoxAd">
                    </g:link>
</g:if>

                </div>
    <div class="col-md-6 col-sm-6 col-xs-6">

            <g:if test="${Aids.list()[4]}">
                <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[4].adDescribe]">

                <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[4].imageName])}" class="img-responsive lazy smallBoxAd">
                </g:link>
            </g:if>
            </div>
                </div><br>
        <div class="row">
            <div class="col-md-6 col-sm-6 col-xs-6">

        <g:if test="${Aids.list()[5]}">
            <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[5].adDescribe]">

            <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[5].imageName])}" class="img-responsive lazy smallBoxAd">
            </g:link>
        </g:if>
        </div>
    <div class="col-md-6 col-sm-6 col-xs-6">

            <g:if test="${Aids.list()[6]}">
                <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[6].adDescribe]">

            <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[6].imageName])}" class="img-responsive lazy smallBoxAd">
                </g:link>
                </g:if>
            </div>
            </div>
            </div>
    <div class="col-md-6 col-xs-12 col-sm-12" id="lastAd">
<div class="row">
    <div class="col-md-12 ">
                        <g:if test="${Aids.list()[7]}">
                            <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[7].adDescribe]">

                        <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[7].imageName])}" class="img-responsive lazy">
                            </g:link>
                        </g:if>
                </div>
</div><br>
        <div class="row">

            <div class="col-md-12 ">
                                                    <g:if test="${Aids.list()[8]}">
                                                        <g:link action="ad" controller="endUser" params="[aidsDescribe:Aids.list()[8].adDescribe]">

                                                    <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:Aids.list()[8].imageName])}" class="img-responsive lazy">
                                                        </g:link>
                                                    </g:if>
                    </div>
        </div>
    </div>
    </div>

    <img src="https://dummyimage.com/1400x100/000/fff" class="img img-responsive ad-image" />

    
<br>
    <g:each in="${totalArray[4]}" var="listProducts">
        <div id="hot">

            <div class="boxBar">

                        <h2>${listProducts[0].productDetails.productSubCategory.subCategoryName} <g:link action="subCategory" controller="endUser" params="[subCategory:listProducts[0].productDetails.productSubCategory.urlName]"><i class="fa fa-angle-double-right green-tooltip" data-toggle="tooltip" title="see more"></i></g:link></h2>
            </div>

            <div class="container">
                <div class="product-slider">
                    <g:each in="${listProducts}" var="list">

                        <div class="item">
                            <div class="product product-height">
                                <div class="flip-container">
                                    <div class="flipper">
                                        <div class="front">
                                            <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">
                                                <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">

                                            </g:link>
                                        </div>
                                        <div class="back">
                                            <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">

                                                <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">

                                            </g:link>
                                        </div>
                                    </div>
                                </div>
                                <g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]" class="invisible food1">
                                    <img src="${resource(dir: 'images', file: 'Spinner-1s-25px.gif')}" data-src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.specialImageName])}" class="img-responsive lazy">


                                </g:link>
                                <div class="text">
                                    %{--<h3><g:link action="singleProduct" controller="endUser" params="[specificationName:list.productSpecificationName]">${list.productDetails.productBrand.brandName+"-"+list.productDetails.briefDescription}</g:link></h3>--}%
                                    <div class="productDescription">${list.productDetails.briefDescription}</div>
                                    <g:if test="${list.productDetails.isSale==true}">
                                        <p class="price priceWithDiscount" style="text-align:left;color:#202020;font-weight: 400;font-size: 14px;margin-top: 2px;width: 135px;word-wrap: break-word;"> Rs.<g:formatNumber number="${list.productDetails.price-(list.productDetails.discountPercentage*list.productDetails.price/100)}" type="number" maxFractionDigits="2" />
                                            <del class="del-price" style="font-size: 13px;font-weight: 400;color: #606060;">Rs.${list.productDetails.price}</del></p>
                                        <div class="discountBox">-${list.productDetails.discountPercentage}%</div>
                                    </g:if>
                                    <g:if test="${list.productDetails.isSale==false}">

                                        <p class="price priceWithoutDiscount" style="color:#202020;font-weight: 400;font-size: 14px;text-align: left;width: 163px;">Rs.${list.productDetails.price}</p>
                                    </g:if>
                                </div>


                            </div>
                        </div>

                    </g:each>
                </div>

            </div>


        </div>


    </g:each>


</div>
</body>
</html>
