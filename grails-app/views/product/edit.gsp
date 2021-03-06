<%--
  Created by IntelliJ IDEA.
  User: Hemanta
  Date: 3/13/2017
  Time: 12:29 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="adminYamsaa">
    <title></title>
</head>
<body>
<g:form action="save" controller="product" class="form-horizontal" enctype="multipart/form-data" onsubmit="return ValidateUpdate(this);">
    <g:hiddenField name="id" value="${productInstance?.id}"></g:hiddenField>

<g:render template="form"></g:render>
<div class="col-lg-12">
    <div class="form-group">
        <label class="control-label col-sm-2"></label>

        <div class="col-sm-6">
            <g:submitButton name="update" value="Update" id="submit_Id" class="btn btn-default"></g:submitButton>
        </div>
    </div>
</div>
</g:form>
<script>
    function preventMultipleSubmissions() {
        $('#submit_Id').prop('disabled', true);
    }

    window.onbeforeunload = preventMultipleSubmissions;
    var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png"];

    function ValidateUpdate(oForm) {
        var responseValue;
        var productCategory = document.getElementById("productCategory").value;
        var productSubCategory = document.getElementById("productSubCategory").value;
        var productColor = document.getElementById("productColor").value;
        var productSize = document.getElementById("productSize").value;
        var name = document.getElementById("name").value;
        var productBrand = document.getElementById("productBrand").value;
        var price = document.getElementById("price").value;
        var isSale = document.getElementById("isSale").value;

        var discountPercentage = document.getElementById("discountPercentage").value;
        var description = document.getElementById("descriptionArea").value;

        var frontImageName = document.getElementById("frontImageName").value;
        var backImageName = document.getElementById("backImageName").value;
        var sideImageName = document.getElementById("sideImageName").value;
        if(frontImageName.length>0 || backImageName.length>0 || sideImageName.length>0) {
            var arrInputs = oForm.getElementsByTagName("input");
            for (var i = 0; i < arrInputs.length; i++) {
                var oInput = arrInputs[i];
                if (oInput.type == "file") {
                    var sFileName = oInput.value;
                    if (sFileName.length > 0) {
                        var blnValid = false;
                        for (var j = 0; j < _validFileExtensions.length; j++) {
                            var sCurExtension = _validFileExtensions[j];
                            if (sFileName.substr(sFileName.length - sCurExtension.length, sCurExtension.length).toLowerCase() == sCurExtension.toLowerCase()) {
                                blnValid = true;
                                break;
                            }
                        }

                        if (!blnValid) {
                            bootbox.alert("Sorry, " + sFileName + " is invalid, allowed extensions are: " + _validFileExtensions.join(", "));
                            return false;
                        }

                    }

                }
            }}
        if(frontImageName.length>0){

            var jForm = new FormData();

            jForm.append("Image", $('#frontImageName').get(0).files[0]);
            $.ajax({
                url: "${createLink(controller:'product', action:'checkPhoto')}",
                type: "POST",
                data: jForm,
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                async: false,
                success: function (result) {
                    if(result=="Photo bad format"){
                        bootbox.alert({
                            message: "Image bad format",
                            size: 'small'
                        });
                        responseValue=false;

                    }

                    else{
                        responseValue=true;
                    }
                }
            });
        }
        if(backImageName.length>0){
            var jForm = new FormData();

            jForm.append("Image", $('#backImageName').get(0).files[0]);
            $.ajax({
                url: "${createLink(controller:'product', action:'checkPhoto')}",
                type: "POST",
                data: jForm,
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                async: false,
                success: function (result) {
                    if(result=="Photo bad format"){
                        bootbox.alert({
                            message: "Image bad format",
                            size: 'small'
                        });
                        responseValue=false;

                    }

                    else{
                        responseValue=true;
                    }
                }
            });
        }
        if(sideImageName.length>0){
            var jForm = new FormData();

            jForm.append("Image", $('#sideImageName').get(0).files[0]);
            $.ajax({
                url: "${createLink(controller:'product', action:'checkPhoto')}",
                type: "POST",
                data: jForm,
                mimeType: "multipart/form-data",
                contentType: false,
                cache: false,
                processData: false,
                async: false,
                success: function (result) {
                    if(result=="Photo bad format"){
                        bootbox.alert({
                            message: "Image bad format",
                            size: 'small'
                        });
                        responseValue=false;

                    }

                    else{
                        responseValue=true;
                    }
                }
            });
        }
        if(price.length>0){
            var price = document.getElementById("price").value;

            var valid = (price.match(/^-?\d*(\.\d+)?$/));

            if(!valid){
                document.getElementById("price").focus();
                bootbox.alert({
                    message: "invalid price",
                    size: 'small'
                });
                return false;

            }
        }
        if(discountPercentage.length>0){
            var discountPercentage = document.getElementById("discountPercentage").value;

            var valid = (discountPercentage.match(/^-?\d*(\.\d+)?$/));

            if(!valid){
                document.getElementById("discountPercentage").focus();
                bootbox.alert({
                    message: "invalid discount",
                    size: 'small'
                });
                return false;

            }
            else if(discountPercentage<0 ||discountPercentage>100 ){
                document.getElementById("discountPercentage").focus();
                bootbox.alert({
                    message: "discount % must be between 0 and 100",
                    size: 'small'
                });
                return false;

            }
        }
        if(productCategory==''){
            bootbox.alert({
                message: "Category must be selected",
                size: 'small'
            });
            document.getElementById("productCategory").focus();
            return false;
        }
        else if(productSubCategory==''){
            bootbox.alert({
                message: "sub-Category must be selected",
                size: 'small'
            });
            document.getElementById("productSubCategory").focus();
            return false;
        }

        else if(productSize==''){
            bootbox.alert({
                message: "Size must be selected",
                size: 'small'
            });
            document.getElementById("productSize").focus();
            return false;
        }
        else if(productColor==''){
            bootbox.alert({
                message: "Color must be selected",
                size: 'small'
            });
            document.getElementById("productColor").focus();
            return false;
        }

        else if(name==''){
            bootbox.alert({
                message: "name must not be blank",
                size: 'small'
            });
            document.getElementById("name").focus();
            return false;
        }

        else if(productBrand==''){
            bootbox.alert({
                message: "brand must be selected",
                size: 'small'
            });
            document.getElementById("productBrand").focus();
            return false;
        }
        else if(price==''){
            bootbox.alert({
                message: "price must not be blank",
                size: 'small'
            });
            document.getElementById("price").focus();
            return false;
        }
        else if(description==''){
            bootbox.alert({
                message: "description must not be blank",
                size: 'small'
            });
            document.getElementById("descriptionArea").focus();
            return false;
        }

        else if(isSale=="true") {

            if (discountPercentage == '') {

                bootbox.alert({
                    message: "discount must not be blank",
                    size: 'small'
                });
                document.getElementById("discountPercentage").focus();
                return false;
            }


        }



        return responseValue;
    }

</script>

</body>
</html>