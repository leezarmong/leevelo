var popupWidth = 500;
    var popupHeight = 600;
    var popupX = (window.screen.width / 2) - (popupWidth / 2);
    var popupY = (window.screen.height / 2) - (popupHeight / 2);



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



//--------------------------------- 회원 정보 변경 ----------------------------

// 비밀번호 변경 호출 
function findPW() {

         window.open("findPW", "", "status=no,width=500,height=600,left=" + popupX + ",top=" + popupY);
        
}

// 비밀번호 정보 확인 
function changePw(){
	var member_id = $("#member_id").val();
	var member_name = $("#member_name").val();
	
	$.ajax({
		type : "POST",
		url : "findchackPWing",
		data :{
			"member_id" : member_id,
			"member_name" : member_name
		},
		success: function (data) {
			
			if (data != 0) {
				$.ajax({
					type : "GET",
					url : "findchackPW",						
					data : {
						"member_id" : member_id,
						"member_name" : member_name
					},
					success: function(){
						window.location.href ="findchackPW";
					}
				});
			} else {
				alert("회원 정보를 확인해주세요.");
			}
	         
	        }
		
	});
	
}


