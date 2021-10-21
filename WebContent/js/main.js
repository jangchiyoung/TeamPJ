// 변수 설정

const id = document.querySelector('#id');
const pw1 = document.querySelector('#pswd1');

const pw2 = document.querySelector('#pswd2');

const userName = document.querySelector('#name');

const tel = document.querySelector('#tel');

const email = document.querySelector('#email');

const adress = document.querySelector('#userAddress')

const error = document.querySelectorAll('.error_next_box');



// 함수 호출
id.addEventListener("blur", checkId);
pw1.addEventListener("blur", checkPw);
pw2.addEventListener("blur", comparePw);
userName.addEventListener("blur", checkName);
tel.addEventListener("blur", checkPhoneNum);
email.addEventListener("blur", isEmailCorrect);


//함수

/*아이디*/

function checkId() {
	let check = 0;
	let tempInt = 0;
	$.ajax({
		type: 'post', //post 방식으로 전송
		url: './community/IdCheck_Ajax.jsp', //데이터를 주고받을 파일 주소
		data: { "id": id.value }, //위의 변수에 담긴 데이터를 전송해준다.
		dataType: "text", //html 파일 형식으로 값을 담아온다.
		success: function(data) { //파일 주고받기가 성공했을 경우. data 변수 안에 값을 담아온다.
			let temp = data.trim();
			tempInt = parseInt(temp);
		}
	});

	setTimeout(function() {

		if (tempInt == 32) {	//임의의 값 32
			check = 1;
		}

		var idPattern = /[a-zA-Z0-9_-]{5,20}/;
		if (id.value === "") {
			error[0].innerHTML = "필수 정보입니다.";
			error[0].style.color = "red";
			error[0].style.display = "block";
		} else if (!idPattern.test(id.value)) {
			error[0].innerHTML = "5~20자의 영문 소문자, 숫자와 특수기호(_),(-)만 사용 가능합니다.";
			error[0].style.color = "red";
			error[0].style.display = "block";
		} else if (check == 1) {
			error[0].innerHTML = "사용중인 아이디 입니다.";
			error[0].style.color = "red";
			error[0].style.display = "block";
		} else {
			error[0].innerHTML = "적합한 아이디입니다.";
			error[0].style.color = "green";
			error[0].style.display = "block";
		}

	}, 500);

}
/*비밀번호*/
function checkPw() {
	var pwPattern = /[a-zA-Z0-9~!@#$%^&*()_+|<>?:{}]{8,16}/;
	if (pw1.value === "") {
		error[1].innerHTML = "필수 정보입니다.";
		error[1].style.color = "red";
		error[1].style.display = "block";
	} else if (!pwPattern.test(pw1.value)) {
		error[1].innerHTML = "8~16자 영문 대 소문자, 숫자, 특수문자를 사용하세요.";
		error[1].style.color = "red";
		error[1].style.display = "block";
	} else {
		error[1].innerHTML = "적합한 비밀번호입니다.";
		error[1].style.color = "green";
		error[1].style.display = "block";
	}
}
/*비밀번호 체크*/
function comparePw() {
	if (pw2.value === pw1.value) {
		error[2].innerHTML = "비밀번호가 일치합니다.";
		error[2].style.color = "green";
		error[2].style.display = "block";
	} else if (pw2.value !== pw1.value) {
		error[2].innerHTML = "비밀번호가 일치하지 않습니다.";
		error[2].style.color = "red";
		error[2].style.display = "block";
	}

	if (pw2.value === "") {
		error[2].innerHTML = "필수 정보입니다.";
		error[2].style.color = "red";
		error[2].style.display = "block";
	}
}
/*이름*/
function checkName() {
	var namePattern = /[a-zA-Z가-힣]/;
	if (userName.value === "") {
		error[3].innerHTML = "필수 정보입니다.";
		error[3].style.color = "red";
		error[3].style.display = "block";
	} else if (!namePattern.test(userName.value) || userName.value.indexOf(" ") > -1) {
		error[3].innerHTML = "한글과 영문 대 소문자를 사용하세요. (특수기호, 공백 사용 불가)";
		error[3].style.color = "red";
		error[3].style.display = "block";
	} else {
		error[3].innerHTML = "적합한 이름입니다.";
		error[3].style.color = "green";
		error[3].style.display = "block";
	}
}
/*전화번호*/
function checkPhoneNum() {
	var isPhoneNum = /([01]{2,})([01679]{1,})([0-9]{3,4})([0-9]{4})/;

	if (tel.value === "") {
		error[4].innerHTML = "필수 정보입니다.";
		error[4].style.display = "block";
		error[4].style.color = "red";
	} else if (!isPhoneNum.test(tel.value)) {
		error[4].innerHTML = "형식에 맞지 않는 번호입니다.";
		error[4].style.color = "red";
		error[4].style.display = "block";
	} else {
		error[4].innerHTML = "형식에 맞는 번호입니다.";
		error[4].style.color = "green";
		error[4].style.display = "block";
	}
}
/*이메일*/
function isEmailCorrect() {
	var emailPattern = /[a-z0-9]{2,}@[a-z0-9-]{2,}\.[a-z0-9]{2,}/;

	if (email.value === "") {
		error[5].innerHTML = "필수 정보입니다.";
		error[5].style.color = "red";
		error[5].style.display = "block";
	} else if (!emailPattern.test(email.value)) {
		error[5].innerHTML = "형식에 맞지 않는 이메일입니다.";
		error[5].style.display = "block";
		error[5].style.color = "red";
	} else {
		error[5].innerHTML = "형식에 맞는 이메일입니다.";
		error[5].style.display = "block";
		error[5].style.color = "green";
	}
}
/*주소*/