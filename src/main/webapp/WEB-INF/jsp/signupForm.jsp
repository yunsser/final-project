<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "layout/headerBasic.jsp" %>
<style type="text/css">

      .form-control{
      	margin-top: 0.5em;
      }

	  .title {
	  	display : inline-block;
	  	text-align: center;
	  	margin-top : 0.5em;
	  }
	  
	  #idcheckbts, #postbts {
	  	margin-left : 0.5em;
	  }
</style>

    		<!-- 본문 들어가는 부분 -->	
<form id = "signupForm" class="container" onsubmit = "return signup()">
  <fieldset>
    <legend class ="title">회원가입</legend>
    <div class="input-group">
      <label for="uid" class="col-sm-2 col-form-label">아이디</label>
      <div class="col-sm-8">
        <input type="text" class="form-control" id="uid" name = "uid" placeholder="아이디는 영어, 숫자 5~20자리로 입력해주세요." />
      </div>
      <div class="input-group-addon input-group-button">
        <button id = "idcheckbts" type="button" 
        		class="btn btn-outline-secondary form-control"
        		onclick="idCheck();">중복확인</button>      
      </div>
    </div>
    <p />
	<div class="col-md-6 offset-md-3">
			<span id="checkId"></span>
	</div>
	<p />
	<div class="input-group">
		<label for="upw" class="col-sm-2 col-form-label">비밀번호</label>
		<div class="col-sm-8">
			<input type="password" class="form-control" id="upw" name = "upw" placeholder="최소 8 자, 하나 이상의 문자, 하나의 숫자 및 하나의 특수 문자" />
		</div>
	</div>
	 <p />
	<div class="col-md-6 offset-md-3">
		<span id="checkUpw"></span>
	</div>
	<p />
	<div class="input-group">
		<label for="confirmUpw" class="col-sm-2 col-form-label">비밀번호 확인</label>
		<div class="col-sm-8">
			<input type="password" class="form-control" id="confirmUpw"  placeholder="비밀번호를 한번 더 입력해 주세요." />
		</div>
	</div>
	<p />
	<div class="col-md-6 offset-md-3">
		<span id="checkUpw2"></span>
	</div>
	<p />
	<div class="input-group">
		<label for="name" class="col-sm-2 col-form-label">이름</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="name" name = "name" placeholder="한글 영문, 최소 2자 최대20자" />
		</div>
	</div>
	<p />
	<div class="input-group">
		<label for="birth" class="col-sm-2 col-form-label">생년월일</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="birth" name = "birth" placeholder="ex) 20220623" />
		</div>
	</div>
	<p />
	<div class="input-group">
		<label for="phone" class="col-sm-2 col-form-label">전화번호</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="phone" name = "phone" placeholder=" - 제외 ex) 01011112222" />
		</div>
	</div>
	<p />
	<div class="input-group">
		<label for="email" class="col-sm-2 col-form-label">email</label>
		<div class="col-sm-8">
			<input type="email" class="form-control" id="email" name = "email" placeholder="ex) example@abc.com" />
		</div>
	</div>
	<div class="input-group">
      <label for="zipcode" class="col-sm-2 col-form-label">우편번호</label>
      <div class="col-sm-3">
        <input type="text" class="form-control" id="zipcode" name = "zipecode" placeholder="우편번호" />
      </div>
      <div class="input-group-addon input-group-button">
        <button id = "postbts" type="button" 
        		class="btn btn-outline-secondary form-control"
        		onclick="kakaopost();">검색하기</button>      
      </div>
    </div>
	<div class="input-group">
		<label for="address" class="col-sm-2 col-form-label">주소</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="addr" name = "addr" placeholder="주소를 입력해주세요." />
		</div>
	</div>
		<div class="input-group">
		<label for="detailAddr" class="col-sm-2 col-form-label">상세주소</label>
		<div class="col-sm-8">
			<input type="text" class="form-control" id="detailAddr" name = "detailAddr" placeholder="상세주소를 입력해주세요." />
		</div>
	</div>
	<p />
	<div class="input-group">
		<label for="pet" class="col-sm-2 col-form-label">반려동물</label>
	<fieldset class="form-group">
      <div class="form-check">
        <input class="form-check-input" type="radio" id="pet" name = "pet" value="Y" >
          있다
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="pet" name = "pet" value="N" >
          없다
      </div>
    </fieldset>
	</div>
	<p />
	<div class="input-group">
		<label for="petsize" class="col-sm-2 col-form-label">반려동물 크기</label>
	<fieldset class="form-group">
      <div class="form-check">
        <input class="form-check-input" type="radio" id="petsize" name = "petsize" value="s" >
          소형견
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="petsize" name = "petsize" value="m" >
          중형견
      </div>
      <div class="form-check">
        <input class="form-check-input" type="radio" id="petsize" name = "petsize" value="l" >
          대형견
      </div>
    </fieldset>
	</div>
	<p />
	<p />
	<input type = "hidden" name = "role" value = "ROLE_USER" />
  </fieldset>
	<div class="form-row text-center">
    <div class="col-12">
		    <button type="submit" class="btn btn-outline-primary">가입</button>
		    <button type="button" class="btn btn-outline-danger">취소</button>
	</div>
	</div>

</form>
			<!-- 본문 들어가는 부분 끝 -->
			
<!-- 주소 api 시작 -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
function kakaopost() {
    new daum.Postcode({
        oncomplete: function(data) {
           document.querySelector("#zipcode").value = data.zonecode;
           document.querySelector("#addr").value =  data.address
        }
    }).open();
}
</script>
<!-- 주소 api 끝 -->

<!-- 회원가입 폼 전송 시작 -->
<script type="text/javascript">

//아이디 중복 체크확인 위한 변수 선언.
	 var idChecked = false;
	 
	function signup(){
		
		// 입력항목 체크 변수 선언.
		 var upw = $('#upw').val();
		 var confirmUpw = $('#confirmUpw').val();
		 var name = $('#name').val();
		 var birth = $('#birth').val();
		 var phone = $('#phone').val();
		 var email = $('#email').val();
		 var zipcode = $('#zipcode').val();
		 var addr = $('#addr').val();
		 var detailAddr = $('#detailAddr').val();
		 // 정규표현식
		 var upwRegExp = /^[a-zA-Z\\d`~!@#$%^&*()-_=+]{8,}$/;
		 var nameRegExp = /^[a-zA-z가-힣]{2,20}$/;
		 var birthRegExp = /^[0-9]{8}$/;
		 var phoneRegExp = /^[0-9]{10,11}$/;
		 var emailRegExp = /^[0-9a-zA-Z]([-_￦.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_￦.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;
		
		if(idChecked == false){
				alert('아이디 중복을 확인 하세요.');
				return false;
		}
		
		if (!upwRegExp.test(upw)) {
 			alert('비밀번호 양식을 확인해주세요.');
 			return false;
 		}
 		if(upw =='') {
 			alert('비밀번호는 필수입력 항목입니다.');
 			return false;
 		}
 		if(upw != confirmUpw) {
 			alert('비밀번호와 일치하지 않습니다.');
 			return false;
 		}
 		
 		
 		if (!nameRegExp.test(name)) {
 			alert('이름 양식을 확인해주세요.');
 			return false;
 		}
 		if(name =='') {
 			alert('이름은 필수입력 항목입니다.');
 			return false;
 		}
 		
 		if (!birthRegExp.test(birth)) {
 			alert('생년월일 양식을 확인해주세요.');
 			return false;
 		}
 		if(birth =='') {
 			alert('생년월일은 필수입력 항목입니다.');
 			return false;
 		}
 		
 		if (!phoneRegExp.test(phone)) {
 			alert('휴대폰 번호 양식을 확인해주세요.');
 			return false;
 		}
 		if(phone =='') {
 			alert('휴대폰번호는 필수입력 항목입니다.');
 			return false;
 		}
 		
 		if (!emailRegExp.test(email)) {
 			alert('이메일 양식을 확인해주세요.');
 			return false;
 		}
 		if(email =='') {
 			alert('이메일은 필수입력 항목입니다.');
 			return false;
 		}
 		
 		if(zipcode =='') {
 			alert('우편번호는 필수입력 항목입니다.');
 			return false;
 		}
 		
 		if(addr =='') {
 			alert('주소는 필수입력 항목입니다.');
 			return false;
 		}
 		
 		if(detailAddr =='') {
 			alert('상세주소는 필수입력 항목입니다.');
 			return false;
 		}
		 
 		
		var serData = $('#signupForm').serialize();
		
		$.ajax({
			url : '/signup',
			method : 'post',
			cache : false,
			data : serData, 
			dataType : 'json',
			success : function(res){
				alert(res.signup ? '회원가입 완료' : '실패!');
					if(res.signup) location.href = '/loginForm';
			},
			error : function(xhr, status, err) {
				alert('에러 : ' + xhr + status + err);
			}
		});
		return false;
	}
<!-- 회원가입 폼 전송 끝 -->



<!-- 아이디체크 전송 시작 -->	
	function idCheck(){
		var uid = $('#uid').val();
		var uidRegExp = /^[a-zA-Z0-9_]{5,20}$/;
		
		if (!uidRegExp.test(uid)) {
			alert('아이디 양식을 확인해주세요.');
			return false;
		}
		
		if(email==''){
			alert('아이디는 필수입력 항목입니다.');
			return;
		}
		
		var obj = {};
		obj.uid = uid;
		
		$.ajax({
			url : '/idCheck',
			method : 'post',
			cache : false,
			data : obj,
			dataType : 'json',
			success : function(res){
				alert(res.idCheck ? '사용가능한 아이디입니다.' : '사용할 수 없는 아이디입니다.');
				idChecked = res.idCheck;
				// 사용 가능하다면 메시지 입력
				if (idChecked == true) {
					$("#checkId").text("사용가능한 아이디입니다.")
		            .css("color", "green");
				}
			},
			error : function(xhr, status, err){
				alert('에러 : ' + xhr + status + err);
			}
			
		});
		
	}
<!-- 아이디체크 전송 끝 -->
	
	// 비밀번호 재확인 메시지 출력

	$("#confirmUpw").keyup(function(){
	    
	    if($("#upw").val() == '' || $("#upw").val() == null && confirmUpw.length > 0){
	    	$("#checkUpw2").text("비밀번호를 먼저 작성해주세요.")
			.css("color", "red");
	        $("#confirmUpw").val(""); // 비밀번호 확인에 입력한 값 삭제
	    } else {
	    	if (upw.length == 0 || confirmUpw.length == 0){
				$("#checkUpw2").text("");
			} else if ($(this).val() != $("#upw").val()) {
				$("#checkUpw2").text("비밀번호가 불일치합니다.")
           	 	.css("color", "red");
			} else if ($(this).val() == $("#upw").val()){
            	$("#checkUpw2").text("비밀번호가 일치합니다.")
				.css("color", "green");
			}
	    }
	});

</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>