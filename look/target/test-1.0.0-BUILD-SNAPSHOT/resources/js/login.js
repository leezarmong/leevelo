//로그인 
function login() {
var member_id = $("#member_id").val();
var member_password = $("#member_password").val();

if(!member_id || !member_password){
    alert("입력 확인 해주세요.");
    }
    else{
        $.ajax({
            type : "POST",
            url : "chackmember",
            data : {
                "member_id" :member_id,
                "member_password" :member_password
            },success : function(data){
                if(data != 0){
                	$.ajax({
                		type : "POST",
                		url : "login",
                		data : {"member_id" :member_id,
                            "member_password" :member_password
                		},success : function(){
                			window.location.href ="main";
                		}
                	});
                }else{
                	alert("아이디 비밀번호를 다시 확인해 주세요.");
                }
            }

        });
    }

}




