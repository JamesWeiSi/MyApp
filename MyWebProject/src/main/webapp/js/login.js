/**
 * 
 */
 
 
 window.onload = function () {
 		var login = document.getElementById("log");
 		alert("好");
 
 }
 
  function validationOfLogin () {
 		var username = document.form.username.value;
 		var pswd = document.form.pswd.value;
 		var confirmPswd = document.form.confirmPswd.value;
 		
 		if(username == null || username == ""){
 				alert("用户名不能为空");
 				return false;
 		}
 		
 		if(pswd == null || pswd == ""){
 				alert("密码不能为空");
 				return false;
 		}else if(pswd.length <6){
 				alert("密码不能小于6位");
 				return false;
 		}
 		
 		if(confirmPswd != pswd){
 				alert("确认密码不一致");
 				return false;
 		}
 
 }