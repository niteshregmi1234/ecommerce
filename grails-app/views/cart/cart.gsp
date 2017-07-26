<!DOCTYPE html>
<html lang="en">

<head>
<meta name="layout" content="userYarsaa">


</head>

<body>
<!-- *** TOPBAR ***
 _________________________________________________________ -->

<!-- *** TOP BAR END *** -->

<!-- *** NAVBAR ***
 _________________________________________________________ -->

<!-- /#navbar -->

<!-- *** NAVBAR END *** -->


    <div id="content">
        <div class="container">

            <div class="col-md-12">
                <ul class="breadcrumb">
                    <li><g:link action="userHome" controller="endUser">Home</g:link>
                    </li>
                    <li>Shopping cart</li>
                </ul>
            </div>

            <div class="col-md-9" id="basket">

                <div class="box">

                    <g:form method="post" controller="cart" action="updateBasket">

                        <h1>Shopping cart</h1>
                        <p class="text-muted">You currently have ${Cart.findAllByEndUserInformation(session.endUser).size()} item(s) in your cart.</p>
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th colspan="2">Product</th>
                                    <th>Quantity</th>
                                    <th>Unit price</th>
                                    <th>Discount</th>
                                    <th colspan="2">Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${cartList}" var="list">
                                    <g:hiddenField name="id" value="${list?.product.id}"></g:hiddenField>
                                <tr>
                                    <td>
                                        <img src="${resource(dir: "images/allProducts/specialImage",file: "${list.product.specialImageName}")}">

                                    </td>
                                    <td>${list.product.productColor.colorName+" "+list.product.productDetails.productName+" "+list.product.productDetails.productBrand.brandName}
                                    </td>
                                    <td>

                                        <g:field  type="number" name="quantity" value="${list?.quantity}" class="form-control"/>
                                    </td>
                                    <td>Rs.${list.product.productDetails.price}</td>
                                    <td>${list.product.productDetails.discountPercentage}%</td>
                                    <td>Rs.${(list.product.productDetails.price*list.quantity)-(list.product.productDetails.discountPercentage*(list.product.productDetails.price*list.quantity)/100)}</td>
                                    <td><g:link action="delete" controller="cart" id="${list.id}"><i class="fa fa-trash-o"></i></g:link>
                                    </td>
                                </tr>
                                    </g:each>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th colspan="5">Total</th>
                                    <th colspan="2">Rs.${totalPrice}</th>
                                </tr>
                                </tfoot>
                            </table>

                        </div>
                        <!-- /.table-responsive -->

                        <div class="box-footer">
                            <div class="pull-left">
                                <a href="category.html" class="btn btn-default"><i class="fa fa-chevron-left"></i> Continue shopping</a>
                            </div>
                            <div class="pull-right">
                                <button class="btn btn-default"><i class="fa fa-refresh"></i> Update basket</button>
                                <g:link action="deliveryAddress" controller="checkOut" class="btn btn-primary">Proceed to checkout <i class="fa fa-chevron-right"></i>
                                </g:link>
                            </div>
                        </div>

                    </g:form>

                </div>
                <!-- /.box -->


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
                                    <div class="front">
                                        <a href="detail.html">
                                            <img src="img/product2.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.html">
                                            <img src="img/product2_2.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.html" class="invisible">
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
                                        <a href="detail.html">
                                            <img src="img/product1.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.html">
                                            <img src="img/product1_2.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.html" class="invisible">
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
                                        <a href="detail.html">
                                            <img src="img/product3.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="back">
                                        <a href="detail.html">
                                            <img src="img/product3_2.jpg" alt="" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <a href="detail.html" class="invisible">
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

            <div class="col-md-3">
                <div class="box" id="order-summary">
                    <div class="box-header">
                        <h3>Order summary</h3>
                    </div>
                    <p class="text-muted">Shipping and additional costs are calculated based on the values you have entered.</p>

                    <div class="table-responsive">
                        <table class="table">
                            <tbody>
                            <tr>
                                <td>Order subtotal</td>
                                <th>$446.00</th>
                            </tr>
                            <tr>
                                <td>Shipping and handling</td>
                                <th>$10.00</th>
                            </tr>
                            <tr>
                                <td>Tax</td>
                                <th>$0.00</th>
                            </tr>
                            <tr class="total">
                                <td>Total</td>
                                <th>$456.00</th>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>


                <div class="box">
                    <div class="box-header">
                        <h4>Coupon code</h4>
                    </div>
                    <p class="text-muted">If you have a coupon code, please enter it in the box below.</p>
                    <form>
                        <div class="input-group">

                            <input type="text" class="form-control">

                            <span class="input-group-btn">

                                <button class="btn btn-primary" type="button"><i class="fa fa-gift"></i></button>

                            </span>
                        </div>
                        <!-- /input-group -->
                    </form>
                </div>

            </div>
            <!-- /.col-md-3 -->

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



<!-- /#all -->




<!-- *** SCRIPTS TO INCLUDE ***
 _________________________________________________________ -->



</body>

</html>