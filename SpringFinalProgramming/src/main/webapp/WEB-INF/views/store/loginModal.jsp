<%@ page contentType="text/html;charset=UTF-8" %>

<div id="loginModal" class="modal fade" tabindex="-1" role="dialog" >
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Admin<b>BSB</b></h4>
      </div>
      <div class="modal-body">
		<form id="sign_in" method="POST">
		    <div class="msg">Sign in to start your session</div>
		    <div class="input-group">
		        <span class="input-group-addon">
		            <i class="material-icons">person</i>
		        </span>
		        <div class="form-line">
		            <input id="storeId" type="text" class="form-control" name="sid" placeholder="Username" required autofocus>
		        </div>
		    </div>
		    <div class="input-group">
		        <span class="input-group-addon">
		            <i class="material-icons">lock</i>
		        </span>
		        <div class="form-line">
		            <input id="storePw" type="password" class="form-control" name="spw" placeholder="Password" required>
		        </div>
		    </div>
		    <div class="row">
		        <div class="col-xs-8 p-t-5">
		            <input type="checkbox" name="rememberme" id="rememberme" class="filled-in chk-col-pink">
		            <label for="rememberme">Remember Me</label>
		        </div>
		        <div class="col-xs-4">
		            <button id="signIn" onclick="onClickLogin()" class="btn btn-block bg-pink waves-effect" type="submit">SIGN IN</button>
		        </div>
		    </div>
		    <div class="row m-t-15 m-b--20">
		        <div class="col-xs-6">
		            <a href="join">Register Now!</a>
		        </div>
		        <div class="col-xs-6 align-right">
		          <a href="findSid">Forgot ID</a> / <a href="findSpw">Password</a>
		        </div>
		    </div>
		</form>
      </div>
      <div class="modal-footer">
        <!-- 
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button> 
        -->
      </div>
    </div>
  </div>
</div> 