<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공룡게임</title>
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

h2 {
   /* font-family: "Black Han Sans", sans-serif; */
   font-weight: 400px;
   font-style: normal;
   margin-bottom: 40px;
}

body {
   background-color: white;
   color: black;
}

main {
   width: 100%;
   height: 700px;
   background-size: cover;
   background-image:
      url('https://i.pinimg.com/originals/26/b8/f1/26b8f1a0d3308bd834ad7152b6062e1a.gif');
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
   display: flex;
   flex-direction: column;
} */

/* .header>div {
   font-size: 18px;
   margin-top: 10px;
} */

.col {
   margin: 10px auto 0px auto;
}

.icon {
   height: 50px;
   margin-left: -50px;
}

.form-floating label {
   color: #333;
}

a.nav-link {
   color: #F17228;
   font-size: large;
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

.form-group {
   position: relative;
}

#bg {
   display: flex;
   width: 1200px;
   height: 600px;
   background: #fff;
   margin: auto auto;
   border-radius: 10px;
}

#iframe-content {
   margin-top: 40px;
   margin-left: 239px;
   width: 800px;
   height: 600px;
}

#gameDiv {
   margin: auto auto;
   display: flex;
}


/* li를 지우기 위한 ul 태그 */ 
.flex-column {
   list-style-type: none;
   list-style: none;
   padding: 0;
   margin-left: 0;
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
         <div id="GameDiv">
            <form action="../login.do" method="post">

               <!-- 게임이 들어가야하는 시작 공간 -->

               <iframe id="iframe-content" srcdoc="<img src='/resources/static/img/rank.png' alt='공룡게임 이미지' style='width:100%; height:100%;'>" ></iframe>
               <!-- HTML 파일 경로 -->

               <!-- 게임이 들어가야하는 엔드 공간 -->

            </form>
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