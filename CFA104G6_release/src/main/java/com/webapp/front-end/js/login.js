// $("#get").click(function(){ 使用get方法
//     $.ajax({
//         url: "NameCity.jsp?name=Jennifer&city=Taoyuan",
//         type: "GET",
//         success: function(data){
//             $("#demo").html(data);
//         }
//     })
// });
(() => {
$("#submitButton").click(function(){/*登入時點*/
	var dataJSON = {};
	dataJSON["account"] = $("#account").val();
	dataJSON["password"] = $("#password").val();
	console.log(JSON.stringify(dataJSON));    

	$.ajax({
        url: "../front-end/member/member-login",
        type: "POST",
        data: JSON.stringify(dataJSON),
        success: function(data){
		var jsonObj = JSON.parse(data);
		console.log(jsonObj.errorCode);
		if(jsonObj.errorCode==='login-failure'){
			alert(jsonObj.errorCode+','+jsonObj.errorMes);
			location.reload();
		}else if(jsonObj.errorCode==='login-success' && jsonObj.body.identity === 'M'){
            alert(jsonObj.errorMes);
			document.cookie = 'identity=0; max-age=0';
			document.cookie = `token=${jsonObj.body.token}; max-age=60*60*24`;
			document.cookie = `identity=${jsonObj.body.identity}; max-age=60*60*24`;
			location.href='AfterLogin.html',1000;
		}else if(jsonObj.errorCode==='login-success' && jsonObj.body.identity === 'C') {
			alert(jsonObj.errorMes);
			document.cookie = 'identity=0; max-age=0';
			document.cookie = `token=${jsonObj.body.token}; max-age=60*60*24`;
			document.cookie = `identity=${jsonObj.body.identity}; max-age=60*60*24`;
			location.href= 'Carer.jsp',1000;
		}
    }
	});
});
})();
function jumpRegistPage(){
	window.location.href="regist.html";
}