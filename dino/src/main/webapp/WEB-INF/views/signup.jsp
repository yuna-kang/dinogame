<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>dinogame</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	
<style>
/* 구글 폰트 import url */
/* 구글 폰트 CSS rules를 전체 적용 */
@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&family=Gowun+Dodum&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Black+Han+Sans&display=swap')
	;

* {
	font-family: "Gowun Dodum", sans-serif;
}

body {background-color: white; color: black;}

main {
	width : 100%; 
	height: 700px; 	
	background-size: cover;
	background-image:url('https://i.pinimg.com/originals/26/b8/f1/26b8f1a0d3308bd834ad7152b6062e1a.gif'); 
	margin: auto auto; 
	background-position: right;
	height: 700px;
	display: flex;
	flex-direction: column;
}

/* .header {
	background-size: cover;
	background-image:
		url('https://i.pinimg.com/originals/26/b8/f1/26b8f1a0d3308bd834ad7152b6062e1a.gif');
	background-position: right;
	height: 826px;
	flex-direction: column;
} */

/* .header>div {
	font-size: 18px;
	margin-top: 10px;
} */

.form-button {
	width: 150px;
	height: 40px;
	background-color: transparent;
	border: 1px solid tr;
	color: black;
	font-size: 15px;
	margin: 20px 10px 0px 0px;
}

.form-button:hover {
	border: 2px solid black;
}

.info-button {
	margin: 20px 0 0 15px;
	height: 40px;
	font-size: 14px;
}

.form-floating input, .form-floating textarea {
	color: black;
	background-color: white;
}


.col {
	margin: 10px auto 0px auto;
}


.comment {
	color: black;
}

.play-button {
	display: flex;
	justify-content: flex-start;
	margin-top: 15px;
}

a.nav-link {
	color: #F17228;
	font-size: large;
}

.icon {
	height: 50px;
	margin-left: -50px;
}

.form-floating input, .form-floating textarea {
	color: black;
	background-color: #f9f9f9;
	border: 1px solid #ccc;
	border-radius: 5px;
	margin-bottom: 10px;
	padding: 10px;
	width: 100%;
}

.form-floating label {
	color: #333;
}

.input-group button, .input-group select {
	background-color: rgb(168, 161, 161);
	color: white;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	margin-top: 10px;
}

.input-group button:hover, .input-group select:hover {
	background-color: gray;
}	

.logo-name {
	height: 200px;
}

.text-danger {
	margin-top: 20px;
	margin-bottom: -15px;
	margin-left: -13px;
}

.goRanking {
	margin-right: 9px;
}


#bg {display:flex; width : 1200px; height: 600px; background: #fff; margin : auto auto; border-radius:10px; }

#loginDiv {width : 300px; height: 400px; background: fff; margin: auto auto;  }

#userid, #password, #username {
	width: calc(100% - 0px);
	padding: 14px 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	font-size: 14px;
	margin-bottom: 20px;
}

#signUpButton {
	width: calc(100% - 0px);
	padding: 10px;
	background-color: #d9d9d9;
	color: white;
	border: none;
	border-radius: 3px;
	font-size: 16px;
	cursor: pointer;
	margin-top: 10px;
}


#signUpButton:hover {
	background-color: #bab6b6;
}

#copy {
	copy: #333;
	font-size: 0.85rem;
	margin-top: -225px;
	margin-left: 270px;
}

</style>

</head>
<body>
	
	<header class="p-3 text-bg-dark">

		<div class="container">
			<div
				class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
				<a href="/"
					class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
					<svg class="bi me-2" width="40" height="32" role="img"
						aria-label="Bootstrap">
                        <use xlink:href="#bootstrap"></use>
                    </svg>
				</a>
				<ul
					class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
					<img
						src="https://static-00.iconduck.com/assets.00/f-letter-icon-2048x2048-1jnqbk05.png"
						class="icon">
					<div id="logo-name">
						<li><strong><a href="#"
								class="nav-link px-2 text-danger">actory Game</a></strong></li>
					</div>
				</ul>

				<div class="text-end">
					<button type="button" onclick="location.href='ranking.do'" class="btn btn-warning goRanking">랭킹보기</button>
					<button type="button" onclick="location.href='login.do'" class="btn btn-warning me-2">Login</button>
					<button type="button" onclick="location.href='signup.do'" class="btn btn-warning">Sign-up</button>
				</div>
			</div>
		</div>

	</header>
	
	<main>
		<div id="bg">
			<div id="loginDiv">
				<h2>회원가입</h2>
				<form action="../signup.do" method="post">
					<div>
						<label for="userid">ID:</label> 
						<input type="text" id="userid" name="userid" placeholder="아이디를 입력해 주세요" required>
					</div>
					<div>
						<label for="password">Password:</label> 
						<input type="password" id="password" name="password" placeholder="비밀번호를 입력해 주세요" required>
					</div>
					<div>
						<label for="username">이름:</label> 
						<input type="text" id="username" name="username" placeholder="이름을 입력해 주세요" required>
					</div>
					<div>
						<button type="submit" id="signUpButton">가입하기</button>
					</div>
				</form>
				<p>
					이미 회원이신가요? <a href="../login.do">로그인</a>
				</p>
			</div>
		</div>
	</main>
	
	<div class="container2">
		<footer
			class="row row-cols-1 row-cols-sm-2 row-cols-md-5 py-5 my-5 border-top">
			<div class="col mb-3">
				<a href="/"
					class="d-flex align-items-center mb-3 link-body-emphasis text-decoration-none">
				</a>
			</div>
			<div class="col mb-3"></div>
			<div class="col mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">About</a></li>
				</ul>
			</div>

			<div class="col mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">About</a></li>
				</ul>
			</div>

			<div class="col mb-3">
				<h5>Section</h5>
				<ul class="nav flex-column">
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Home</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Features</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">Pricing</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">FAQs</a></li>
					<li class="nav-item mb-2"><a href="#"
						class="nav-link p-0 text-body-secondary">About</a></li>
				</ul>
			</div>
			<div id=copy>&copy; 강유나 정기웅 정나실 2024</div>
		</footer>
	</div>
</body>
</html>
