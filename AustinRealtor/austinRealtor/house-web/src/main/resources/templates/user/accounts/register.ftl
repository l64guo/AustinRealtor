<!DOCTYPE html>

<html lang="en-US">
<@common.header/>

<body class="page-sub-page page-create-account page-account" id="page-top">
<!-- Wrapper -->
<div class="wrapper">
    <!-- Navigation -->
    <@common.nav/>
    <!-- end Navigation -->
    <!-- Page Content -->
    <div id="page-content">
        <!-- Breadcrumb -->
        <div class="container">
            <ol class="breadcrumb">
                <li><a href="#">Home</a></li>
                <li class="active">Register</li>
            </ol>
        </div>
        <!-- end Breadcrumb -->

        <div class="container">
            <header><h1>Register Account</h1></header>
            <div class="row">
                <div class="col-md-4 col-sm-6 col-md-offset-4 col-sm-offset-3">
                    <h3>Account Type</h3>
                    <form role="form" id="form-create-account" method="post" enctype="multipart/form-data" action="/accounts/register">
                        <div class="radio" id="create-account-user">
                            <label>
                                <input type="radio" value="1" id="account-type-user"  name="type" required>User
                            </label>
                        </div>
                        <div class="radio" id="agent-switch" data-agent-state="">
                            <label>
                                <input type="radio" value="2" id="account-type-agent" name="type" required>Agent
                            </label>
                        </div>
                         <div id="agency" class="disabled">
                            <div class="form-group">
                                <label for="account-agency">Choose Agency:</label>
                                <select name="agencyId" id="agencyId">
                                      <option value="0" >Please Choose Agency</option>
                                     <#list agencyList as agency>
                                        <option value="${agency.id}" >${agency.name}</option>
                                     </#list>
                                </select>
                            </div><!-- /.form-group -->
                        </div>
                        <hr>
                        <div class="form-group">
                            <label for="form-create-account-full-name">Name:</label>
                            <input type="text" class="form-control" id="form-create-account-full-name" name="name" required>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label for="form-create-account-email">Email:</label>
                            <input type="text" class="form-control" id="form-create-account-email"  name="email" required>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label for="form-create-account-email">Phone:</label>
                            <input type="text" class="form-control" id="form-create-account-phone"  name="phone" >
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label for="form-create-account-password">Password:</label>
                            <input type="password" class="form-control" id="form-create-account-password" name="passwd" required>
                        </div><!-- /.form-group -->
                        <div class="form-group">
                            <label for="form-create-account-confirm-password">Confirm Password:</label>
                            <input type="password" class="form-control" id="form-create-account-confirm-password" name="confirmPasswd" required>
                        </div><!-- /.form-group -->
                         <div class="form-group">
                            <label for="form-create-account-email">Self Intro:</label>
                            <textarea class="form-control" name="aboutme"></textarea> 
                        </div>

                        <div class="form-group">
                            <label for="form-create-account-email">Avator:</label>
                            <input id="file-upload" type="file" class="file" multiple="true" data-show-upload="false" data-show-caption="false" data-show-remove="false" accept="image/jpeg,image/png" data-browse-class="btn btn-default" data-browse-label="Browse Images" name="avatarFile" required>
                            <figure class="note">You can upload all images at once!</figure>
                        </div>

                        <div class="form-group clearfix">
                            <button type="submit" class="btn pull-right btn-default" id="account-submit">Register Account</button>
                        </div><!-- /.form-group -->

                    </form>
                    <hr>
<#--                    <div class="center">-->
<#--                        <figure class="note"> <a href="terms-conditions.html">用户协议</a></figure>-->
<#--                    </div>-->
                </div>
            </div><!-- /.row -->
        </div><!-- /.container -->
    </div>
    <!-- end Page Content -->
    <!-- Page Footer -->
    <@common.footer/>
    <!-- end Page Footer -->
</div>

<@common.js/>
<!--[if gt IE 8]>
<script type="text/javascript" src="/static/assets/js/ie.js"></script>
<![endif]-->
 <script  type="text/javascript" >
    $(document).ready(function() {
          var errorMsg   = "${errorMsg!""}";
          var successMsg = "${successMsg!""}";
          if(errorMsg){ 
              errormsg("error",errorMsg);
          }
          if(successMsg) {
              successmsg("success",successMsg);
          }
        })
        
 </script>
</body>
</html>