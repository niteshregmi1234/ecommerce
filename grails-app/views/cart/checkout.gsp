<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/html">

<head>

    <meta name="layout" content="userYarsaa">


</head>

<body>
<div id="newLoaderYarsaa" style="display:none;">

</div>

<!-- *** TOPBAR ***
 _________________________________________________________ -->

<!-- *** TOP BAR END *** -->

<!-- *** NAVBAR ***
 _________________________________________________________ -->

<!-- /#navbar -->

<!-- *** NAVBAR END *** -->


<div id="content">
    <div class="container">

        <div class="col-md-12" id="addressBar">
            <ul class="breadcrumb">
                <li><g:link action="userHome" controller="endUser">Home</g:link>
                </li>
                <li>Checkout - Address</li>
            </ul>
        </div>
        <div class="col-md-12" id="deliveryBar" style="display: none;">
            <ul class="breadcrumb">
                <li><g:link action="userHome" controller="endUser">Home</g:link>
                </li>
                <li>Checkout - Delivery method</li>
            </ul>
        </div>
        <div class="col-md-12" id="paymentBar" style="display: none;">
            <ul class="breadcrumb">
                <li><g:link action="userHome" controller="endUser">Home</g:link>
                </li>
                <li>Checkout - Payment method</li>
            </ul>
        </div>
        <div class="col-md-12" id="orderReviewBar" style="display: none;">
            <ul class="breadcrumb">
                <li><g:link action="userHome" controller="endUser">Home</g:link>
                </li>
                <li>Checkout - Order review</li>
            </ul>
        </div>


        <div class="col-md-12" id="checkout">
            <form action="/checkOut/placeOrder" method="post" id="myForm">

                <div class="box"  id="deliveryAddress">

                <h1 class="bigName">Checkout-Address</h1>
                    <ul class="nav nav-pills nav-justified">
                        <li class="active"><a onclick="showAddress(this);"><i class="fa fa-map-marker"></i><br>Billing Address</a>
                        </li>
                        <li class="disabled"><a href="#"><i class="fa fa-truck"></i><br>Delivery Method</a>
                        </li>
                        <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment Method</a>
                        </li>
                        <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Order Review</a>
                        </li>
                    </ul>


                    <div class="content">
<g:if test="${!session.endUser}">

    <button type="button" class="btn btn-primary btn-arrow-right" style="margin-left: 30px;" onclick="$('#login-modal').modal('toggle');">Returning Customer?Click here to login</button>
                        <br><br>
</g:if>
                        <div class="col-sm-6">
                                <div class="box">
                                    <h1 class="checkOutHead">Billing Details</h1>

                                    <style>
                                    .btn-arrow-right{
                                        position: relative;
                                        padding-left: 18px;
                                        padding-right: 18px;
                                    }

                                    .btn-arrow-right {
                                        padding-left: 36px;
                                    }



                                    .btn-arrow-right:before,
                                    .btn-arrow-right:after{
                                        /* make two squares (before and after), looking similar to the button */

                                        content: "";
                                        position: absolute;
                                        top: 5px;
                                        /* move it down because of rounded corners */

                                        width: 22px;
                                        /* same as height */

                                        height: 22px;
                                        /* button_outer_height / sqrt(2) */

                                        background: inherit;
                                        /* use parent background */

                                        border: inherit;
                                        /* use parent border */

                                        border-left-color: transparent;
                                        /* hide left border */

                                        border-bottom-color: transparent;
                                        /* hide bottom border */

                                        border-radius: 0px 4px 0px 0px;
                                        /* round arrow corner, the shorthand property doesn't accept "inherit" so it is set to 4px */

                                        -webkit-border-radius: 0px 4px 0px 0px;
                                        -moz-border-radius: 0px 4px 0px 0px;
                                    }

                                    .btn-arrow-right:before,
                                    .btn-arrow-right:after {
                                        transform: rotate(45deg);
                                        /* rotate right arrow squares 45 deg to point right */

                                        -webkit-transform: rotate(45deg);
                                        -moz-transform: rotate(45deg);
                                        -o-transform: rotate(45deg);
                                        -ms-transform: rotate(45deg);
                                    }



                                    .btn-arrow-right:before{
                                        /* align the "before" square to the left */

                                        left: -11px;
                                    }

                                    .btn-arrow-right:after
                                     {
                                        /* align the "after" square to the right */

                                        right: -11px;
                                    }

                                    .btn-arrow-right:after
                                     {
                                        /* bring arrow pointers to front */

                                        z-index: 1;
                                    }

                                    .btn-arrow-right:before{
                                        /* hide arrow tails background */

                                        background-color: white;
                                    }
                                    </style>
                        <hr>

                        <!-- Form Name -->

                        <div class="form-horizontal" >
                            <fieldset>
                                <legend> Personal Information </legend>

<g:if test="${!session.endUser}">

    <div class="col-sm-6">

                                <div class="form-group">
                                    <label>First Name*</label>
                                    <input name="firstNameBilling" id="firstNameBilling" placeholder="first Name" value="${endUserInformation?.customerPersonalDetails?.firstName}" type="text" class="form-control billingFieldSmall red-tooltip">
                                </div>
                                </div>
                                <div class="col-sm-6">

                                <div class="form-group">
                                    <label >Last Name*</label>
                                    <input name="lastNameBilling" id="lastNameBilling" placeholder="last name" type="text" value="${endUserInformation?.customerPersonalDetails?.lastName}" class="form-control billingFieldSmall red-tooltip" >
                                </div>
                                </div>
</g:if>
                                <g:if test="${session.endUser}">

                                    <div class="col-sm-6">

                                        <div class="form-group">
                                            <label>First Name*</label>
                                            <input placeholder="first Name" disabled="disabled" value="${endUserInformation?.customerPersonalDetails?.firstName}" type="text" class="form-control billingFieldSmall red-tooltip">
                                            <input name="firstNameBilling" id="firstNameBilling" placeholder="first Name" value="${endUserInformation?.customerPersonalDetails?.firstName}" type="hidden" class="form-control billingFieldSmall red-tooltip">

                                        </div>
                                    </div>
                                    <div class="col-sm-6">

                                        <div class="form-group">
                                            <label >Last Name*</label>
                                            <input placeholder="last name" disabled="disabled" type="text" value="${endUserInformation?.customerPersonalDetails?.lastName}" class="form-control billingFieldSmall red-tooltip" >
                                            <input name="lastNameBilling" id="lastNameBilling" placeholder="last name" type="hidden" value="${endUserInformation?.customerPersonalDetails?.lastName}" class="form-control billingFieldSmall red-tooltip" >

                                        </div>
                                    </div>
                                </g:if>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>Company Name</label>
                                        <input name="companyNameBilling" id="companyNameBilling" placeholder="company Name" type="text" value="${endUserInformation?.customerPersonalDetails?.companyName}" class="form-control billingFieldLarge">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                    <label>mobile No*</label>
                                    <input name="mobileOrPhoneCumpolsoryBilling" id="mobileOrPhoneCumpolsoryBilling" placeholder="mobile No" type="text" value="${endUserInformation?.customerPersonalDetails?.mobileOrPhoneCumpolsory}" class="form-control billingFieldSmall red-tooltip" onkeypress="return isNumber(event)">

                                    </div>
                                </div>
                                    <div class="col-sm-6">
                                        <div class="form-group">
                                            <label>mobile No Additional</label>
                                            <input name="mobileOrPhoneOptionalBilling" id="mobileOrPhoneOptionalBilling" placeholder="mobile No" type="text" class="form-control billingFieldSmall red-tooltip" value="${endUserInformation?.customerPersonalDetails?.mobileOrPhoneOptional}" onkeypress="return isNumber(event)">
                                        </div>
                                    </div>
<g:if test="${!session.endUser}">

                                    <div class="col-sm-12">
                                        <div class="form-group" >
                                        <label>Email*</label>
                                        <input name="email" placeholder="email@hostname.com" type="text" class="form-control billingFieldLarge red-tooltip" value="${endUserInformation?.email}" id="email" >
                                    </div>
                                    </div>
</g:if>
                                <g:if test="${session.endUser}">

                                    <div class="col-sm-12">
                                        <div class="form-group" >
                                            <label>Email*</label>
                                            <input placeholder="email@hostname.com" disabled="disabled" type="text" class="form-control billingFieldLarge red-tooltip" value="${endUserInformation?.email}" >
                                            <input name="email"  type="hidden"  value="${endUserInformation?.email}" id="email" >

                                        </div>
                                    </div>
                                </g:if>

                                <div class="col-sm-6">
                                    <div class="form-group">
                                    <label>Address*</label>
                                    <input name="cumpolsoryAddressBilling" id="cumpolsoryAddressBilling" placeholder="street address" value="${endUserInformation?.customerPersonalDetails?.cumpolsoryAddress}" type="text" class="form-control billingFieldSmall red-tooltip">
                                </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label>Address Optional</label>
                                        <input name="optionalAddressBilling" id="optionalAddressBilling" placeholder="apartment,suite,unit etc." value="${endUserInformation?.customerPersonalDetails?.optionalAddress}" type="text" class="form-control billingFieldSmall">
                                    </div>
                                </div>
                                <div class="col-sm-12">
                                    <div class="form-group">
                                        <label>City*</label>
                                        <input name="cityBilling" id="cityBilling" placeholder="kathmandu,lalitpur,bhaktapur etc." type="text" value="${endUserInformation?.customerPersonalDetails?.townOrCity}" class="form-control billingFieldLarge red-tooltip">
                                    </div>
                                </div>
                                <g:if test="${!session.endUser}">
                                <div class="col-sm-12">
                                    <div class="form-check">
                                    <input type="checkbox" class="form-check-input" name="isCreateAccount" id="isCreateAccount" onclick="checkBox();">
                                    <label class="form-check-label" for="isCreateAccount">Create an account</label>
                                    </div>
                                    </div>
                                </g:if>
                            </fieldset>
<g:if test="${!session.endUser}">

    <script>
                                        function checkBox(){
                                            var checkedValue = $('#isCreateAccount:checked').val();
                                           if(checkedValue){
                                               document.getElementById("createAccount").style.display='block';
                                           }
                                           else{
                                               document.getElementById("createAccount").style.display='none';

                                           }
                                        }
                                    </script>
                                    <div id="createAccount" style="display:none;">
                                    <fieldset>
                            <legend> Create an account by entering the information below. If you are a returning customer please login at the top of the page.
                            </legend>
                                        <div class="col-sm-6">

                                        <div class="form-group">
                                <label for="userPw">Account Password*</label>
                                <input class="form-control billingFieldSmall red-tooltip" id="userPw" type="password" placeholder="password"
                                       name="password"/>
                            </div>
                                        </div>
                                        <div class="col-sm-6">

                            <div class="form-group">
                                <label for="userPw2">Confirm Password*</label>
                                <input class="form-control billingFieldSmall red-tooltip" id="userPw2" type="password" placeholder="Confirm password"
                                       name="confirmPassword"/>
                            </div>
                                        </div>
                        </fieldset>
                                    </div>
</g:if>
                        </div>
                    </div>
                </div>
                        <div class="col-sm-6">
                            <div class="box">
                                <h1 class="checkOutHead">Ship to a different address?</h1>

                                <hr>

                                <!-- Form Name -->

                                <div class="form-horizontal">

                                    <fieldset>
                                        <input type="checkbox" name="isShipping" class="form-check-input" id="isShipping" onclick="checkBox1();"/>
<div id="shipping_form" style="display:none;">


                                        <legend> Personal Information </legend>
                                        <div class="col-sm-6">

                                            <div class="form-group">
                                                <label>First Name*</label>
                                                <input name="firstNameShipping" id="firstNameShipping" placeholder="first Name" type="text" class="form-control billingFieldSmall red-tooltip">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">

                                            <div class="form-group">
                                                <label >Last Name*</label>
                                                <input name="lastNameShipping" placeholder="last name" id="lastNameShipping" type="text" class="form-control billingFieldSmall red-tooltip" >
                                            </div>
                                        </div>

                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Company Name</label>
                                                <input name="companyNameShipping" placeholder="company Name" id="companyNameShipping" type="text" class="form-control billingFieldLarge">
                                            </div>
                                        </div>
    <div class="col-sm-12">
        <div class="form-group">
            <label>mobile No*</label>
            <input name="mobileOrPhoneShipping" id="mobileOrPhoneShipping" placeholder="mobile No" type="text"  class="form-control billingFieldLarge red-tooltip" onkeypress="return isNumber(event)">
        </div>
    </div>

    <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Address*</label>
                                                <input name="cumpolsoryAddressShipping" placeholder="street address" id="cumpolsoryAddressShipping" type="text" class="form-control billingFieldSmall red-tooltip">
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="form-group">
                                                <label>Address Optional</label>
                                                <input name="optionalAddressShipping" placeholder="apartment,suite,unit etc." id="optionalAddressShipping" type="text" class="form-control billingFieldSmall red-tooltip">
                                            </div>
                                        </div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>City*</label>
                                                <input name="cityShipping" placeholder="kathmandu,lalitpur,bhaktapur etc." id="cityShipping" type="text" class="form-control billingFieldLarge red-tooltip">
                                            </div>
                                        </div>
</div>
                                        <div class="col-sm-12">
                                            <div class="form-group">
                                                <label>Order Notes</label>
                                                <textArea name="orderNotesShipping" placeholder="notes about your order,eg special notes for delivery" id="orderNotesShipping" class="form-control billingFieldLarge" style="resize: none;"></textArea>
                                            </div>
                                        </div>

                                    </fieldset>
                                    <script>
                                        function checkBox1(){
                                            var checkedValue = $('#isShipping:checked').val();
                                            if(checkedValue){
                                                document.getElementById("shipping_form").style.display='block';
                                            }
                                            else{
                                                document.getElementById("shipping_form").style.display='none';

                                            }
                                        }
                                    </script>
                                <div class="col-sm-12">
                                    <div class="col-sm-6">

                                        <div class="pull-left">
                                        <g:link action="cart" controller="cart" class="btn btn-default bigButton"><i class="fa fa-chevron-left"></i>Back to basket</g:link>
                                    </div>
                                    </div>
                                    <div class="col-sm-6">

                                        <div class="pull-right">
                                        <div class="btn btn-primary bigButton" onclick="deliveryMethod(this);">Continue to Delivery Method<i class="fa fa-chevron-right"></i>
                                        </div>
                                    </div>
                                    </div>
                                </div>

                                </div>
                            </div>
                        </div>



                    </div>
                </div>
                <g:if test="${flash.uniqueEmail}">
                    <script>
                        $('#email').attr('data-toggle', 'tooltip');
                        $('#email').attr('data-placement', 'top');
                        $('#email').attr('data-original-title', 'email is already in use. Take another email.');
                        $("#email").tooltip();
                        $("#email").css("border", "1px solid #a94442");
                        document.getElementById("email").focus();
                    </script>
                </g:if>

            <div class="box" style="display: none;" id="deliveryMethod">
                 <h1 class="bigName">Checkout - Delivery method</h1>
                    <ul class="nav nav-pills nav-justified">
                        <li><div onclick="showAddress(this);"><i class="fa fa-map-marker"></i><br>Billing Address</div>
                        </li>
                        <li class="active"><a onclick="deliveryMethod(this);"><i class="fa fa-truck"></i><br>Delivery Method</a>
                        </li>
                        <li class="disabled"><a href="#"><i class="fa fa-money"></i><br>Payment Method</a>
                        </li>
                        <li class="disabled"><a href="#"><i class="fa fa-eye"></i><br>Order Review</a>
                        </li>
                    </ul>
                <div class="content">
                        <div class="row">
                            <g:each in="${DeliveryMethod.findAllByIsShowStatus(true)}" var="list">
                            <div class="col-sm-6">
                                <div class="box shipping-method">

                                    <h4>${list.briefDescribe}</h4>

                                    <p>${list.detailDescribe}</p>

                                    <div class="box-footer text-center">

                                        <input type="radio" name="delivery" value="${list.id}">
                                    </div>
                                </div>
                            </div>
                            </g:each>
                        </div>
                        <!-- /.row -->

                    </div>
                    <!-- /.content -->

                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="btn btn-default bigButton" onclick="backToAddress(this);"><i class="fa fa-chevron-left" ></i>Back to Addresses</div>
                        </div>
                        <div class="pull-right">
                            <div class="btn btn-primary bigButton" onclick="paymentMethod(this);">Continue to Payment Method<i class="fa fa-chevron-right"></i>
                            </div>
                        </div>
                    </div>

            </div>
            <div class="box" style="display: none;" id="paymentMethod">

                    <h1 class="bigName">Checkout - Payment method</h1>
                    <ul class="nav nav-pills nav-justified">
                        <li><div onclick="showAddress(this);"><i class="fa fa-map-marker"></i><br>Billing Address</div>
                        </li>
                        <li><div onclick="deliveryMethod(this);"><i class="fa fa-truck"></i><br>Delivery Method</div>
                        </li>
                        <li class="active"><a onclick="paymentMethod(this);"><i class="fa fa-money"></i><br>Payment Method</a>
                        </li>
                        <li class="disabled"><a href="checkout4.html"><i class="fa fa-eye"></i><br>Order Review</a>
                        </li>
                    </ul>

                    <div class="content">
                        <div class="row">
                            <g:each in="${PaymentMethod.findAllByIsShowStatus(true)}" var="list">
                            <div class="col-sm-6">
                                <div class="box payment-method">

                                    <h4>${list.briefDescribe}</h4>

                                    <p>${list.detailDescribe}</p>

                                    <div class="box-footer text-center">

                                        <input type="radio" name="payment" value="${list.id}">
                                    </div>
                                </div>
                            </div>
                            </g:each>
                        </div>
                        <!-- /.row -->

                    </div>
                    <!-- /.content -->

                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="btn btn-default bigButton" onclick="backToDeliveryMethod(this);"><i class="fa fa-chevron-left"></i>Back to Shipping method</div>
                        </div>
                        <div class="pull-right">
                            <div class="btn btn-primary bigButton" onclick="orderReview(this);">Continue to Order review<i class="fa fa-chevron-right"></i>
                            </div>
                        </div>
                    </div>

            </div>
                <div id="orderReview" style="display: none;">



                   <div class="col-sm-9">
            <div class="box">
                    <h1 class="bigName">Checkout - Order review</h1>
                    <ul class="nav nav-pills nav-justified">
                        <li><div onclick="showAddress(this);"><i class="fa fa-map-marker"></i><br>Billing Address</div>
                        </li>
                        <li><div onclick="deliveryMethod(this);"><i class="fa fa-truck"></i><br>Delivery Method</div>
                        </li>
                        <li><div onclick="paymentMethod(this);"><i class="fa fa-money"></i><br>Payment Method</div>
                        </li>
                        <li class="active"><a onclick="orderReview(this);"><i class="fa fa-eye"></i><br>Order Review</a>
                        </li>
                    </ul>

                    <div class="content">
                        <div class="table-responsive" id="tableResponsive1">
                            <table class="table">
                                <thead>
                                <tr>
                                    <th colspan="2">Product</th>
                                    <th>Size</th>
                                    <th>Quantity</th>
                                    <th>Unit price</th>
                                    <th>Discount</th>
                                    <th>Total</th>
                                </tr>
                                </thead>
                                <tbody>
                                <g:each in="${session.cart}" var="list">
                                    <tr>
                                        <td><a>
                                            <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:list.product.specialImageName])}">

                                        </a>
                                        </td>
                                        <td>${list.productDetails.productName+" "+list.productBrand.brandName}
                                        </td>
                                        <td>${list.productSize.sizeName}</td>

                                        <td>
${list.quantity}
                                        </td>
                                        <td>Rs.<g:formatNumber number="${list.productDetails.price}" type="number" maxFractionDigits="2" /></td>
                                        <td>${list.productDetails.discountPercentage}%</td>
                                        <td>Rs.<g:formatNumber number="${(list.productDetails.price*list.quantity)-(list.productDetails.discountPercentage*(list.productDetails.price*list.quantity)/100)}" type="number" maxFractionDigits="2" /></td>

                                    </tr>

                                </g:each>
                                </tbody>
                                <tfoot>
                                <tr>
                                    <th colspan="6">Total</th>
                                    <th id="totalPrice1">Rs.${totalArray[0]}</th>
                                </tr>
                                </tfoot>
                            </table>

                        </div>
                        <!-- /.table-responsive -->
                    </div>
                    <!-- /.content -->
<style>
                td img{
                    width: 50px;
                }
            </style>
                    <div class="box-footer">
                        <div class="pull-left">
                            <div class="btn btn-default bigButton" onclick="backToPayment(this);"><i class="fa fa-chevron-left"></i>Back to Payment method</div>
                        </div>
                        <div class="pull-right">

                            <button type="button"  class="btn btn-primary bigButton"  id="submit_IdOrder">Place an order<i class="fa fa-chevron-right"></i>
                            </button>

                        </div>
                    </div>
            </div>
                   </div>
                <g:if test="${session.cart}">

                    <div class="col-sm-3" id="basketSummary1">
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
                                        <th class="totalPrice">Rs.${totalArray[0]}</th>
                                    </tr>
                                    <tr>
                                        <td>Shipping and handling</td>
                                        <th class="shippingAndHandling">Rs.${totalArray[2]}</th>
                                    </tr>
                                    <tr>
                                        <td>Tax</td>
                                        <th class="tax">Rs.${totalArray[3]}</th>
                                    </tr>
                                    <tr class="total">
                                        <td>Total</td>
                                        <th class="totalPriceTotal">Rs.${totalArray[4]}</th>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>

                        </div>



                    </div>

                </g:if>
                </div>
            <!-- /.box -->

            </form>

        </div>



        <script>

            $( document ).ready(function() {
                document.getElementsByName("payment")[0].checked = true;
                document.getElementsByName("delivery")[0].checked = true;
            });

            function isNumber(evt) {
                evt = (evt) ? evt : window.event;
                var charCode = (evt.which) ? evt.which : evt.keyCode;
                if (charCode > 31 && (charCode < 48 || charCode > 57)) {

                    return false;
                }
                return true;
            }
            function preventMultipleSubmissions() {
                $('#submit_IdOrder').prop('disabled', true);
            }
            window.onbeforeunload = preventMultipleSubmissions;
            $('#submit_IdOrder').click(function(){
                $('#newLoaderYarsaa').show();
                $('#submit_IdOrder').prop('disabled', true);
                setTimeout(function() {
                    $('#newLoaderYarsaa').fadeOut();
                }, 5000);
                ValidCheckOut();
            });
            function ValidCheckOut(){
                var responseValue;
                $('#newLoaderYarsaa').show();
                setTimeout(function() {
                    $('#newLoaderYarsaa').fadeOut();
                }, 5000);
    $.ajax({
        url: "${createLink(controller:'checkOut', action:'checkCart')}",
        type: "POST",
        cache: false,
        async: false,
        success: function (text) {
            if(text=="sessionNull"){
                bootbox.alert({
                    message: "Sorry, your cart session has expired as you are inactive for long time.",
                    callback: function(){
                        window.location="/cart/cart";
                    }

                });


responseValue=false;
            }
            else if(text=="cartEmpty"){
                bootbox.alert({
                    message: "Sorry, your cart is empty. You must have something in your cart to send enquiry!!!.",
                    callback: function(){
                        window.location="/cart/cart";

                    }

                });

                responseValue=false;

            }
            else if(text=="ok"){
                var payment=$("input[name='payment']:checked").val();
                var delivery=$("input[name='delivery']:checked").val();
                var orderNotes=document.getElementById("orderNotesShipping").value;
                var firstNameBilling=document.getElementById("firstNameBilling").value;
                var lastNameBilling=document.getElementById("lastNameBilling").value;
                var companyNameShipping=document.getElementById("companyNameBilling").value;
                var mobileOrPhoneCumpolsoryBilling=document.getElementById("mobileOrPhoneCumpolsoryBilling").value;
                var mobileOrPhoneOptionalBilling=document.getElementById("mobileOrPhoneOptionalBilling").value;
                var email=document.getElementById("email").value;
                var cumpolsoryAddressBilling=document.getElementById("cumpolsoryAddressBilling").value;
                var optionalAddressBilling=document.getElementById("optionalAddressBilling").value;
                var cityBilling=document.getElementById("cityBilling").value;
                var billingInfo=[];
                billingInfo[0]=firstNameBilling;
                billingInfo[1]=lastNameBilling;
                billingInfo[2]=companyNameShipping;
                billingInfo[3]=mobileOrPhoneCumpolsoryBilling;
                billingInfo[4]=mobileOrPhoneOptionalBilling;
                billingInfo[5]=email;
                billingInfo[6]=cumpolsoryAddressBilling;
                billingInfo[7]=optionalAddressBilling;
                billingInfo[8]=cityBilling;
                placeOrder(orderNotes,billingInfo,delivery,payment);
            }
        }

    });
return responseValue
}

            function showAddress(evt){
                $('#deliveryBar').hide();

                $('#deliveryMethod').hide();
                $('#paymentBar').hide();

                $('#paymentMethod').hide();

                $('#orderReviewBar').hide();

                $('#orderReview').hide();

                $('#addressBar').show();
                $('#deliveryAddress').show();
                evt.preventDefault();
            }

            function deliveryMethod(evt){
                var isChecked=$('#isShipping:checked');
                var passwordCheck=true;
                var responseValue=true;
                var check=true;
                var phoneNumberCumpolsory=$('#mobileOrPhoneCumpolsoryBilling').val();
                var email=$('#email').val()
                var phoneno = /^\d{10}$/;
             if(${!session.endUser}){
                if(!($('#firstNameBilling').val())){
                    $('#firstNameBilling').attr('data-toggle', 'tooltip');
                    $('#firstNameBilling').attr('data-placement', 'top');
                    $('#firstNameBilling').attr('data-original-title', 'first name must not be blank');
                    $("#firstNameBilling").tooltip();
                    $("#firstNameBilling").css("border", "1px solid #a94442");
                    document.getElementById("firstNameBilling").focus();
                    return false;
                }
                if(!($('#lastNameBilling').val())){
                    $('#lastNameBilling').attr('data-toggle', 'tooltip');
                    $('#lastNameBilling').attr('data-placement', 'top');
                    $('#lastNameBilling').attr('data-original-title', 'last name must not be blank');
                    $("#lastNameBilling").tooltip();
                    $("#lastNameBilling").css("border", "1px solid #a94442");
                    document.getElementById("lastNameBilling").focus();
                    return false;
                }
                if(!($('#mobileOrPhoneCumpolsoryBilling').val())){
                    $('#mobileOrPhoneCumpolsoryBilling').attr('data-toggle', 'tooltip');
                    $('#mobileOrPhoneCumpolsoryBilling').attr('data-placement', 'top');
                    $('#mobileOrPhoneCumpolsoryBilling').attr('data-original-title', 'mobile no must not be blank');
                    $("#mobileOrPhoneCumpolsoryBilling").tooltip();
                    $("#mobileOrPhoneCumpolsoryBilling").css("border", "1px solid #a94442");
                    document.getElementById("mobileOrPhoneCumpolsoryBilling").focus();
                    return false;
                }


                if(!(phoneNumberCumpolsory.match(phoneno)))
                {
                    $('#mobileOrPhoneCumpolsoryBilling').attr('data-toggle', 'tooltip');
                    $('#mobileOrPhoneCumpolsoryBilling').attr('data-placement', 'top');
                    $('#mobileOrPhoneCumpolsoryBilling').attr('data-original-title', 'invalid mobile number format');
                    $("#mobileOrPhoneCumpolsoryBilling").tooltip();
                    $("#mobileOrPhoneCumpolsoryBilling").css("border", "1px solid #a94442");
                    document.getElementById("phone").focus();
                    return false;

                }
                if($('#mobileOrPhoneOptionalBilling').val()){
                    var phoneNumberOptional=$('#mobileOrPhoneOptionalBilling').val();
                    if(!(phoneNumberOptional.match(phoneno)))
                    {
                        $('#mobileOrPhoneOptionalBilling').attr('data-toggle', 'tooltip');
                        $('#mobileOrPhoneOptionalBilling').attr('data-placement', 'top');
                        $('#mobileOrPhoneOptionalBilling').attr('data-original-title', 'invalid mobile number format. ');
                        $("#mobileOrPhoneOptionalBilling").tooltip();
                        $("#mobileOrPhoneOptionalBilling").css("border", "1px solid #a94442");
                        document.getElementById("mobileOrPhoneOptionalBilling").focus();
                        return false;

                    }
                }

                if(!email){
                    $('#email').attr('data-toggle', 'tooltip');
                    $('#email').attr('data-placement', 'top');
                    $('#email').attr('data-original-title', 'email must not be blank');
                    $("#email").tooltip();
                    $("#email").css("border", "1px solid #a94442");
                    document.getElementById("email").focus();
                    return false;
                }
                if(!validate(email)){
                    $('#email').attr('data-toggle', 'tooltip');
                    $('#email').attr('data-placement', 'top');
                    $('#email').attr('data-original-title', 'invalid email format. Email must end with @gmail.com,@yahoo.com etc');
                    $("#email").tooltip();
                    $("#email").css("border", "1px solid #a94442");
                    document.getElementById("email").focus();
                    return false;
                }
                if(!($('#cumpolsoryAddressBilling').val())){
                    $('#cumpolsoryAddressBilling').attr('data-toggle', 'tooltip');
                    $('#cumpolsoryAddressBilling').attr('data-placement', 'top');
                    $('#cumpolsoryAddressBilling').attr('data-original-title', 'address must not be blank');
                    $("#cumpolsoryAddressBilling").tooltip();
                    $("#cumpolsoryAddressBilling").css("border", "1px solid #a94442");
                    document.getElementById("cumpolsoryAddressBilling").focus();
                    return false;
                }
                if(!($('#cityBilling').val())){
                    $('#cityBilling').attr('data-toggle', 'tooltip');
                    $('#cityBilling').attr('data-placement', 'top');
                    $('#cityBilling').attr('data-original-title', 'city must not be blank');
                    $("#cityBilling").tooltip();
                    $("#cityBilling").css("border", "1px solid #a94442");
                    document.getElementById("cityBilling").focus();
                    return false;
                }
                 if($('#isCreateAccount:checked').val()){
                    var userPw=$('#userPw').val();
                    var userPw2=$('#userPw2').val();
                    $.ajax({
                        url: "${createLink(controller:'endUserInformation', action:'testEmail')}",
                        global: false,
                        type: "POST",
                        data: { "email": email },
                        cache: false,
                        async: false,
                        success: function (text) {
                            if(text=="false"){
                                $('#email').attr('data-toggle', 'tooltip');
                                $('#email').attr('data-placement', 'top');
                                $('#email').attr('data-original-title', 'email is already in use.Take another email.');
                                $("#email").tooltip();
                                $("#email").css("border", "1px solid #a94442");
                                document.getElementById("email").focus();
                                responseValue=false;
                            }
                        }

                    });
if(responseValue) {
    if (!userPw) {
        $('#userPw').attr('data-toggle', 'tooltip');
        $('#userPw').attr('data-placement', 'top');
        $('#userPw').attr('data-original-title', 'password must not be blank');
        $("#userPw").tooltip();
        $("#userPw").css("border", "1px solid #a94442");
        document.getElementById("userPw").focus();
        passwordCheck=false;
    }
    if (userPw) {
        if (userPw.length < 6) {
            $('#userPw').attr('data-toggle', 'tooltip');
            $('#userPw').attr('data-placement', 'top');
            $('#userPw').attr('data-original-title', 'password must not be less than six character');
            $("#userPw").tooltip();
            $("#userPw").css("border", "1px solid #a94442");
            document.getElementById("userPw").focus();
            passwordCheck=false;

        }
        if (userPw != userPw2) {
            $('#userPw2').attr('data-toggle', 'tooltip');
            $('#userPw2').attr('data-placement', 'top');
            $('#userPw2').attr('data-original-title', 'account password and confirm password must be same to proceed');
            $("#userPw2").tooltip();
            $("#userPw2").css("border", "1px solid #a94442");
            document.getElementById("userPw2").focus();
            passwordCheck=false;
        }
        if(isChecked.val()){
check=checkShipping();
        }

        else if(check && passwordCheck) {
            showDivs();
        }

    }
}
                }
                 if(isChecked.val()) {
                     check=checkShipping();

                }

                 if(check && responseValue && passwordCheck){
                    showDivs();
                }
             }
                else{
                 if(!($('#firstNameBilling').val())){
                     $('#firstNameBilling').attr('data-toggle', 'tooltip');
                     $('#firstNameBilling').attr('data-placement', 'top');
                     $('#firstNameBilling').attr('data-original-title', 'first name must not be blank');
                     $("#firstNameBilling").tooltip();
                     $("#firstNameBilling").css("border", "1px solid #a94442");
                     document.getElementById("firstNameBilling").focus();
                     return false;
                 }
                 if(!($('#lastNameBilling').val())){
                     $('#lastNameBilling').attr('data-toggle', 'tooltip');
                     $('#lastNameBilling').attr('data-placement', 'top');
                     $('#lastNameBilling').attr('data-original-title', 'last name must not be blank');
                     $("#lastNameBilling").tooltip();
                     $("#lastNameBilling").css("border", "1px solid #a94442");
                     document.getElementById("lastNameBilling").focus();
                     return false;
                 }
                 if(!($('#mobileOrPhoneCumpolsoryBilling').val())){
                     $('#mobileOrPhoneCumpolsoryBilling').attr('data-toggle', 'tooltip');
                     $('#mobileOrPhoneCumpolsoryBilling').attr('data-placement', 'top');
                     $('#mobileOrPhoneCumpolsoryBilling').attr('data-original-title', 'mobile no must not be blank');
                     $("#mobileOrPhoneCumpolsoryBilling").tooltip();
                     $("#mobileOrPhoneCumpolsoryBilling").css("border", "1px solid #a94442");
                     document.getElementById("mobileOrPhoneCumpolsoryBilling").focus();
                     return false;
                 }


                 if(!(phoneNumberCumpolsory.match(phoneno)))
                 {
                     $('#mobileOrPhoneCumpolsoryBilling').attr('data-toggle', 'tooltip');
                     $('#mobileOrPhoneCumpolsoryBilling').attr('data-placement', 'top');
                     $('#mobileOrPhoneCumpolsoryBilling').attr('data-original-title', 'invalid mobile number format');
                     $("#mobileOrPhoneCumpolsoryBilling").tooltip();
                     $("#mobileOrPhoneCumpolsoryBilling").css("border", "1px solid #a94442");
                     document.getElementById("phone").focus();
                     return false;

                 }
                 if($('#mobileOrPhoneOptionalBilling').val()){
                     var phoneNumberOptional=$('#mobileOrPhoneOptionalBilling').val();
                     if(!(phoneNumberOptional.match(phoneno)))
                     {
                         $('#mobileOrPhoneOptionalBilling').attr('data-toggle', 'tooltip');
                         $('#mobileOrPhoneOptionalBilling').attr('data-placement', 'top');
                         $('#mobileOrPhoneOptionalBilling').attr('data-original-title', 'invalid mobile number format. ');
                         $("#mobileOrPhoneOptionalBilling").tooltip();
                         $("#mobileOrPhoneOptionalBilling").css("border", "1px solid #a94442");
                         document.getElementById("mobileOrPhoneOptionalBilling").focus();
                         return false;

                     }
                 }

                 if(!email){
                     $('#email').attr('data-toggle', 'tooltip');
                     $('#email').attr('data-placement', 'top');
                     $('#email').attr('data-original-title', 'email must not be blank');
                     $("#email").tooltip();
                     $("#email").css("border", "1px solid #a94442");
                     document.getElementById("email").focus();
                     return false;
                 }
                 if(!validate(email)){
                     $('#email').attr('data-toggle', 'tooltip');
                     $('#email').attr('data-placement', 'top');
                     $('#email').attr('data-original-title', 'invalid email format. Email must end with @gmail.com,@yahoo.com etc');
                     $("#email").tooltip();
                     $("#email").css("border", "1px solid #a94442");
                     document.getElementById("email").focus();
                     return false;
                 }
                 if(!($('#cumpolsoryAddressBilling').val())){
                     $('#cumpolsoryAddressBilling').attr('data-toggle', 'tooltip');
                     $('#cumpolsoryAddressBilling').attr('data-placement', 'top');
                     $('#cumpolsoryAddressBilling').attr('data-original-title', 'address must not be blank');
                     $("#cumpolsoryAddressBilling").tooltip();
                     $("#cumpolsoryAddressBilling").css("border", "1px solid #a94442");
                     document.getElementById("cumpolsoryAddressBilling").focus();
                     return false;
                 }
                 if(!($('#cityBilling').val())){
                     $('#cityBilling').attr('data-toggle', 'tooltip');
                     $('#cityBilling').attr('data-placement', 'top');
                     $('#cityBilling').attr('data-original-title', 'city must not be blank');
                     $("#cityBilling").tooltip();
                     $("#cityBilling").css("border", "1px solid #a94442");
                     document.getElementById("cityBilling").focus();
                     return false;
                 }
                 if(isChecked.val()) {
                     check=checkShipping();

                 }
                 if(check){

                     showDivs();
                 }
             }

evt.preventDefault();
            }
            function checkShipping(){
                var phoneNumber=$('#mobileOrPhoneShipping').val();
                var phoneno = /^\d{10}$/;
                if(!($('#firstNameShipping').val())){
                    $('#firstNameShipping').attr('data-toggle', 'tooltip');
                    $('#firstNameShipping').attr('data-placement', 'top');
                    $('#firstNameShipping').attr('data-original-title', 'first name must not be blank');
                    $("#firstNameShipping").tooltip();
                    $("#firstNameShipping").css("border", "1px solid #a94442");
                    document.getElementById("firstNameShipping").focus();
                    return false;
                }
                if(!($('#lastNameShipping').val())){
                    $('#lastNameShipping').attr('data-toggle', 'tooltip');
                    $('#lastNameShipping').attr('data-placement', 'top');
                    $('#lastNameShipping').attr('data-original-title', 'last name must not be blank');
                    $("#lastNameShipping").tooltip();
                    $("#lastNameShipping").css("border", "1px solid #a94442");
                    document.getElementById("lastNameShipping").focus();
                    return false;
                }
                if(!($('#mobileOrPhoneShipping').val())){
                    $('#mobileOrPhoneShipping').attr('data-toggle', 'tooltip');
                    $('#mobileOrPhoneShipping').attr('data-placement', 'top');
                    $('#mobileOrPhoneShipping').attr('data-original-title', 'mobile no must not be blank');
                    $("#mobileOrPhoneShipping").tooltip();
                    $("#mobileOrPhoneShipping").css("border", "1px solid #a94442");
                    document.getElementById("mobileOrPhoneShipping").focus();
                    return false;
                }


                if(!(phoneNumber.match(phoneno)))
                {
                    $('#mobileOrPhoneShipping').attr('data-toggle', 'tooltip');
                    $('#mobileOrPhoneShipping').attr('data-placement', 'top');
                    $('#mobileOrPhoneShipping').attr('data-original-title', 'invalid mobile number format');
                    $("#mobileOrPhoneShipping").tooltip();
                    $("#mobileOrPhoneShipping").css("border", "1px solid #a94442");
                    document.getElementById("mobileOrPhoneShipping").focus();
                    return false;

                }

                if(!($('#cumpolsoryAddressShipping').val())){
                    $('#cumpolsoryAddressShipping').attr('data-toggle', 'tooltip');
                    $('#cumpolsoryAddressShipping').attr('data-placement', 'top');
                    $('#cumpolsoryAddressShipping').attr('data-original-title', 'address must not be blank');
                    $("#cumpolsoryAddressShipping").tooltip();
                    $("#cumpolsoryAddressShipping").css("border", "1px solid #a94442");
                    document.getElementById("cumpolsoryAddressShipping").focus();
                    return false;
                }
                if(!($('#cityShipping').val())){
                    $('#cityShipping').attr('data-toggle', 'tooltip');
                    $('#cityShipping').attr('data-placement', 'top');
                    $('#cityShipping').attr('data-original-title', 'city must not be blank');
                    $("#cityShipping").tooltip();
                    $("#cityShipping").css("border", "1px solid #a94442");
                    document.getElementById("cityShipping").focus();
                    return false;
                }
                else{
                    return true;
                }
            }

            function showDivs(){
                $('#paymentBar').hide();

                $('#paymentMethod').hide();

                $('#orderReviewBar').hide();

                $('#orderReview').hide();

                $('#addressBar').hide();

                $('#deliveryAddress').hide();
                $('#deliveryBar').show();

                $('#deliveryMethod').show();
            }
            function backToAddress(evt){
                $('#deliveryBar').hide();

                $('#deliveryMethod').hide();

                $('#addressBar').show();

                $('#deliveryAddress').show();
                evt.preventDefault();


            }
            function paymentMethod(evt){
                $('#orderReviewBar').hide();

                $('#orderReview').hide();

                $('#addressBar').hide();

                $('#deliveryAddress').hide();

                $('#deliveryBar').hide();

                $('#deliveryMethod').hide();

                $('#paymentBar').show();

                $('#paymentMethod').show();

                evt.preventDefault();


            }
            function validate(sEmail) {
                var filter = /^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;

                if (filter.test(sEmail)) {

                    return true;

                }

            else {

                    return false;

                }
            }
            function backToDeliveryMethod(evt){
                $('#paymentBar').hide();

                $('#paymentMethod').hide();
                $('#deliveryBar').show();

                $('#deliveryMethod').show();

                evt.preventDefault();

            }
            function orderReview(evt){

                $('#addressBar').hide();

                $('#deliveryAddress').hide();

                $('#deliveryBar').hide();

                $('#deliveryMethod').hide();

                $('#paymentBar').hide();

                $('#paymentMethod').hide();
                $('#orderReviewBar').show();

                $('#orderReview').show();


                evt.preventDefault();

            }
            function backToPayment(e){
                $('#orderReview').hide();

                $('#orderReviewBar').hide();
                $('#paymentBar').show();

                $('#paymentMethod').show();
                e.preventDefault();

            }
        </script>
        <g:if test="${session.endUser}">
        <script>
                function placeOrder(orderNotes,billingInfo,delivery,payment) {
                    var isCheckedShipping=$("#isShipping").prop('checked');

if(isCheckedShipping){
    var shippingInfo = [];
    shippingInfo[0]=document.getElementById("firstNameShipping").value;
    shippingInfo[1]=document.getElementById("lastNameShipping").value;
    shippingInfo[2]=document.getElementById("companyNameShipping").value;
    shippingInfo[3]=document.getElementById("mobileOrPhoneShipping").value;
    shippingInfo[4]=document.getElementById("cumpolsoryAddressShipping").value;
    shippingInfo[5]=document.getElementById("optionalAddressShipping").value;
    shippingInfo[6]=document.getElementById("cityShipping").value;
    $.ajax({
        url: "${createLink(controller:'checkOut', action:'placeOrder')}",
        type: "POST",
        data: { "isShipping": JSON.stringify(shippingInfo) ,"billingInfo": JSON.stringify(billingInfo) ,"orderNotes":orderNotes ,"delivery":delivery ,"payment":payment},
        async : false,
        cache:false,
        success: function(result) {
if(result=="enquiry not sent"){
    $('#messageModel1').modal({backdrop: 'static', keyboard: false});

}
else{
    document.getElementById('orderIdWithoutAccount').innerHTML+="Order Id:"+result;
    $('#messageModelWithoutAccount').modal({backdrop: 'static', keyboard: false});

}
        }
    });

}
else{
    $.ajax({
        url: "${createLink(controller:'checkOut', action:'placeOrder')}",
        type: "POST",
        data: { "billingInfo": JSON.stringify(billingInfo) ,"orderNotes":orderNotes,"delivery":delivery ,"payment":payment},
        async : false,
        cache:false,
        success: function(result) {
            if(result=="enquiry not sent"){
                $('#messageModel1').modal({backdrop: 'static', keyboard: false});
            }
            else{
                document.getElementById('orderIdWithoutAccount').innerHTML+="Order Id:"+result;
                $('#messageModelWithoutAccount').modal({backdrop: 'static', keyboard: false});
            }
        }
    });

}
                }
        </script>
        </g:if>
        <g:else>
            <script>
                function placeOrder(orderNotes,billingInfo,delivery,payment) {
                    var isCheckedShipping=$("#isShipping").prop('checked');
                    var isCheckedCreateAccount=$("#isCreateAccount").prop('checked');
                    var shippingInfo = [];
                    var password = document.getElementById("userPw").value;
                    if(isCheckedShipping && isCheckedCreateAccount){
    shippingInfo[0]=document.getElementById("firstNameShipping").value;
    shippingInfo[1]=document.getElementById("lastNameShipping").value;
    shippingInfo[2]=document.getElementById("companyNameShipping").value;
    shippingInfo[3]=document.getElementById("mobileOrPhoneShipping").value;
    shippingInfo[4]=document.getElementById("cumpolsoryAddressShipping").value;
    shippingInfo[5]=document.getElementById("optionalAddressShipping").value;
    shippingInfo[6]=document.getElementById("cityShipping").value;
                        $.ajax({
                            url: "${createLink(controller:'checkOut', action:'placeOrder')}",
                            type: "POST",
                            data: { "isShipping": JSON.stringify(shippingInfo) ,"billingInfo": JSON.stringify(billingInfo) ,"isCreateAccount":password,"orderNotes":orderNotes,"delivery":delivery ,"payment":payment},
                            async : false,
                            cache:false,
                            success: function(result) {
                                if(result=="enquiry not sent"){
                                    $('#messageModel1').modal({backdrop: 'static', keyboard: false});

                                }
                                else if(result=="email is already taken"){
                                    $('#deliveryBar').hide();

                                    $('#deliveryMethod').hide();
                                    $('#paymentBar').hide();

                                    $('#paymentMethod').hide();

                                    $('#orderReviewBar').hide();

                                    $('#orderReview').hide();

                                    $('#addressBar').show();
                                    $('#deliveryAddress').show();
                                    $('#email').attr('data-toggle', 'tooltip');
                                    $('#email').attr('data-placement', 'top');
                                    $('#email').attr('data-original-title', 'email is already in use.Take another email.');
                                    $("#email").tooltip();
                                    $("#email").css("border", "1px solid #a94442");
                                    document.getElementById("email").focus();
                                }
                                else{
                                    document.getElementById('createdEmail').innerHTML+="Email:"+result[1];
                                    document.getElementById('createdPassword').innerHTML+="Password:"+result[2];
                                    document.getElementById('orderIdWithAccount').innerHTML+="Order Id:"+result[0];
                                    $('#messageModelWithAccount').modal({backdrop: 'static', keyboard: false});

                                }
                            }
                        });

                    }
else if(!isCheckedShipping && isCheckedCreateAccount){
                        $.ajax({
                            url: "${createLink(controller:'checkOut', action:'placeOrder')}",
                            type: "POST",
                            data: { "billingInfo": JSON.stringify(billingInfo) ,"isCreateAccount":password,"orderNotes":orderNotes,"delivery":delivery ,"payment":payment},
                            async : false,
                            cache:false,
                            success: function(result) {
                                if(result=="enquiry not sent"){
                                    $('#messageModel1').modal({backdrop: 'static', keyboard: false});
                                }
                                else if(result=="email is already taken"){
                                    $('#deliveryBar').hide();

                                    $('#deliveryMethod').hide();
                                    $('#paymentBar').hide();

                                    $('#paymentMethod').hide();

                                    $('#orderReviewBar').hide();

                                    $('#orderReview').hide();

                                    $('#addressBar').show();
                                    $('#deliveryAddress').show();
                                    $('#email').attr('data-toggle', 'tooltip');
                                    $('#email').attr('data-placement', 'top');
                                    $('#email').attr('data-original-title', 'email is already in use.Take another email.');
                                    $("#email").tooltip();
                                    $("#email").css("border", "1px solid #a94442");
                                    document.getElementById("email").focus();

                                }
                                else{
                                    document.getElementById('createdEmail').innerHTML+="Email:"+result[1];
                                    document.getElementById('createdPassword').innerHTML+="Password:"+result[2];
                                    document.getElementById('orderIdWithAccount').innerHTML+="Order Id:"+result[0];
                                    $('#messageModelWithAccount').modal({backdrop: 'static', keyboard: false});
                                }
                            }
                        });

}
else if(!isCheckedCreateAccount && isCheckedShipping){
    shippingInfo[0]=document.getElementById("firstNameShipping").value;
    shippingInfo[1]=document.getElementById("lastNameShipping").value;
    shippingInfo[2]=document.getElementById("companyNameShipping").value;
    shippingInfo[3]=document.getElementById("mobileOrPhoneShipping").value;
    shippingInfo[4]=document.getElementById("cumpolsoryAddressShipping").value;
    shippingInfo[5]=document.getElementById("optionalAddressShipping").value;
    shippingInfo[6]=document.getElementById("cityShipping").value;
                        $.ajax({
                            url: "${createLink(controller:'checkOut', action:'placeOrder')}",
                            type: "POST",
                            data: { "isShipping": JSON.stringify(shippingInfo) ,"billingInfo": JSON.stringify(billingInfo),"orderNotes":orderNotes,"delivery":delivery ,"payment":payment},
                            async : false,
                            cache:false,
                            success: function(result) {
                                if(result=="enquiry not sent"){
                                    $('#messageModel1').modal({backdrop: 'static', keyboard: false});
                                }
                                else{
                                    document.getElementById('orderIdWithoutAccount').innerHTML+="Order Id:"+result;
                                    $('#messageModelWithoutAccount').modal({backdrop: 'static', keyboard: false});

                                }
                            }
                        });

                    }
else if(!isCheckedCreateAccount && !isCheckedShipping){
                        $.ajax({
                            url: "${createLink(controller:'checkOut', action:'placeOrder')}",
                            type: "POST",
                            data: { "billingInfo": JSON.stringify(billingInfo),"orderNotes":orderNotes,"delivery":delivery ,"payment":payment},
                            async : false,
                            cache:false,
                            success: function(result) {
                                if(result=="enquiry not sent"){
                                    $('#messageModel1').modal({backdrop: 'static', keyboard: false});

                                }
                                else{
                                    document.getElementById('orderIdWithoutAccount').innerHTML+="Order Id:"+result;
                                    $('#messageModelWithoutAccount').modal({backdrop: 'static', keyboard: false});

                                }
                            }
                        });

}

                                  }
            </script>

        </g:else>
        <!-- /.col-md-9 -->

        <!-- /.col-md-3 -->

    </div>
    <div class="bootbox modal fade bootbox-confirm in" id="messageModelWithAccount" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" id="modalBodyWithAccount">
                    <button type="button" class="bootbox-close-button close" data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;" onclick="reloadPage();">×</button>

                    <p class="text-center">
                        <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:CompanyInformation.list()[0].logoImageName])}">


                    </p>
                        <h3 class="alert alert-success fade in">You have successfully created account. This login information is one time notification. You are requested to remember your email and password</h3><h5 style="text-align: center;" id="createdEmail"></h5><h5 style="text-align: center;" id="createdPassword"></h5>
                    <h3 class="alert alert-success fade in">Dear,Customer. Your order has been successfully kept under process.</h3><h2 style="text-align: center;" id="orderIdWithAccount"></h2>
                    <h4>Dear Customer, you are requested to remember your order Id. Thank you!!</h4>

                </div>
                <div class="modal-footer">
                    <div data-bb-handler="cancel" type="button" class="btn btn-primary" data-dismiss="modal" onclick="reloadPage();">Okey</div>
                </div>
            </div>
        </div>
    </div>
    <div class="bootbox modal fade bootbox-confirm in" id="messageModelWithoutAccount" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body" id="modalBodyWithoutAccount">
                    <button type="button" class="bootbox-close-button close" data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;" onclick="reloadPage();">×</button>

                    <p class="text-center">
                        <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:CompanyInformation.list()[0].logoImageName])}">


                    </p>
                    <h3 class="alert alert-success fade in">Dear,Customer. Your order has been successfully kept under process.</h3><h2 style="text-align: center;" id="orderIdWithoutAccount"></h2>
                    <h4>Dear Customer, you are requested to remember your order Id. Thank you!!</h4>

                </div>
                <div class="modal-footer">
                    <div data-bb-handler="cancel" type="button" class="btn btn-primary" data-dismiss="modal" onclick="reloadPage();">Okey</div>
                </div>
            </div>
        </div>
    </div>

    <div class="bootbox modal fade bootbox-confirm in" id="messageModel1" tabindex="-1" role="dialog"  aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-body">
                    <button type="button" class="bootbox-close-button close" data-dismiss="modal" aria-hidden="true" style="margin-top: -10px;" onclick="reloadPage();">×</button>

                    <p class="text-center">
                        <img src="${createLink(controller: 'imageRender', action:'renderImage',params: [imageName:CompanyInformation.list()[0].logoImageName])}">


                    </p>

                    <h3 class="alert alert-danger fade in">your enquiry has been not been sent due to some problems.Please try again later.</h3>

                </div>
                <div class="modal-footer">
                    <div data-bb-handler="cancel" type="button" class="btn btn-primary" data-dismiss="modal" onclick="reloadPage();">Okey</div>
                </div>
            </div>
        </div>
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





<script>

    function reloadPage(){
        window.location="/basket";
    }

</script>
</body>

</html>