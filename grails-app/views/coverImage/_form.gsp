
    <div class="col-lg-12">
        <div class="form-group ">
            <label class="control-label col-sm-2" for="imageName">Upload Image:</label>

            <div class="col-sm-4">

                <g:field type="file" name="imageName" class="form-control-file" id="imageName"/>

                %{--<g:formatDate format="yyyy-MM-dd" class="form-control"/>--}%
                %{--<input type="email" class="form-control" id="email" placeholder="Enter email">--}%
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group">
            <label class="control-label col-sm-2">Choose Offered Brand:</label>
            <div class="col-sm-4">
                <g:select class="selectpicker" id="productBrand" name="productBrand" value="${coverImageInstance?.productBrand?.id}"
                          from="${ProductBrand.findAllByStatusShow(true)}" optionKey="id" optionValue="brandName" data-show-subtext="true"
                          data-live-search="true" title="choose brand "/>

            </div>
        </div>
    </div>

    <div class="col-lg-12">
        <div class="form-group ">
            <label class="control-label col-sm-2" for="statusShow">Show Status:</label>

            <div class="col-sm-4">
                <g:select name="statusShow" from="${['TRUE','FALSE']}"
                          keys="${[1,0]}" value="${coverImageInstance?.statusShow?1:0}" class="form-control"/>
                %{--<g:formatDate format="yyyy-MM-dd" class="form-control"/>--}%
                %{--<input type="email" class="form-control" id="email" placeholder="Enter email">--}%
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group ">
            <label class="control-label col-sm-2" for="slidePlace">where to Slide?:</label>

            <div class="col-sm-4">
                <g:select name="slidePlace" from="${[DOWN: 'DOWN', UP: 'UP']}"
                          optionKey="key" optionValue="value"  value="${coverImageInstance?.slidePlace}" class="form-control"/>
                %{--<g:formatDate format="yyyy-MM-dd" class="form-control"/>--}%
                %{--<input type="email" class="form-control" id="email" placeholder="Enter email">--}%
            </div>
        </div>
    </div>
    <div class="col-lg-12">
        <div class="form-group">
            <label class="control-label col-sm-2">Priority Number:</label>
            <div class="col-sm-4">
                <g:textField name="priorityNumber" id="priorityNumber" class="form-control" onkeypress="return isNumber(event)" value="${coverImageInstance?.priorityNumber}"/>
            </div>
        </div>
    </div>

    <script>
        function isNumber(evt) {
            evt = (evt) ? evt : window.event;
            var charCode = (evt.which) ? evt.which : evt.keyCode;

            if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                bootbox.alert({
                    message: "not allowed must be number",
                    size: 'small'
                });
                return false;
            }
            return true;
        }

        function preventMultipleSubmissions() {
            $('#submit_Id').prop('disabled', true);
        }
        window.onbeforeunload = preventMultipleSubmissions;
        function Validate(oForm) {
            var responseValue;
            var _validFileExtensions = [".jpg", ".jpeg", ".bmp", ".gif", ".png"];
            var productBrand = document.getElementById("productBrand").value;

            var imageName = document.getElementById("imageName").value;
            if(imageName.length==0){
                document.getElementById("imageName").focus();
                bootbox.alert({
                    message: "image must be choosen",
                    size: 'small'
                });
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


            if(imageName.length>0) {
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
                                responseValue=false;
                            }
                            else{
                                var jForm = new FormData();

                                jForm.append("Image", $('#imageName').get(0).files[0]);


                                $.ajax({
                                    url: "${createLink(controller:'coverImage', action:'checkPhoto')}",
                                    type: "POST",
                                    data: jForm,
                                    mimeType: "multipart/form-data",
                                    contentType: false,
                                    cache: false,
                                    processData: false,
                                    async: false,
                                    success: function (result) {
                                        if(result=="Photo bad format"){
                                            document.getElementById("imageName").focus();
                                            bootbox.alert({
                                                message: "image is bad format",
                                                size: 'small'
                                            });
                                            responseValue=false;

                                        }

                                    }
                                });
                            }
                        }
                            }

                        }

                    }


return responseValue;
        }

    </script>
