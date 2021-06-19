<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Business Casual - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="./Resources/js/all.js" crossorigin="anonymous"></script>
        <!-- ./Resources/js/all.min.js -->
        <!-- Google fonts-->
        <link href="stylesheet" rel="stylesheet" />
        <link href="stylesheet" rel="stylesheet" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="./Resources/css/styles.css" rel="stylesheet" />
        <link rel="stylesheet" href="./Resources/css/style.css" />
    </head>
    <body>
        <header>
            <h1 class="site-heading text-center text-faded d-none d-lg-block">
                <span class="site-heading-upper text-primary mb-3"><!-- A Free Bootstrap Business Theme --></span>
                <span class="site-heading-lower"><!-- Business Casual --></span>
            </h1>
        </header>
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark py-lg-4" id="mainNav">
            <div class="container">
                <a class="navbar-brand text-uppercase fw-bold d-lg-none" href="index.html">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="index.jsp">Home</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="about.jsp">About</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="products.jsp">Products</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="store.jsp">Store</a></li>
                        <li class="nav-item px-lg-4"><a class="nav-link text-uppercase" href="login.jsp">Login</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section class="page-section about-heading">
            <div class="container">
            
            
                <div class="about-heading-content">
                    <div class="row">
                        <div class="col-xl-9 col-lg-10 mx-auto">
                        <!-- 로그인 바디 넣는 곳 -->
                        
                        <div class="form-wrap">
                <div class="button-wrap">
                    <div id="btn"></div>
                    <button type="button" class="togglebtn" onclick="login()">LOG IN</button>
                    <button type="button" class="togglebtn" onclick="register()">REGISTER</button>
                </div>
               <!--  <div class="social-icons">
                    <img src="./Resources/assets/img/fb.png" alt="facebook">
                    <img src="./Resources/assets/img/tw.png" alt="twitter">
                    <img src="./Resources/assets/img/gl.png" alt="google">
                </div> -->
                
                <form id="login" action="" class="input-group">
                    <input type="text" class="input-field" placeholder="User ID" required>
                    <input type="password" class="input-field" placeholder="Password" required>
                    <!-- <input type="checkbox" class="checkbox"><span>Remember Password</span> -->
                    <button class="loginsubmit">Login</button>
                </form>
                <form id="register" action="#login" class="input-group">
                    <input type="text" class="input-field" id="userid" maxlength="20" placeholder="ID" required>
                    <!-- <input type="email" class="input-field" placeholder="Your Email" required> -->
                    <input type="password" id="password" maxlength="20" class="input-field" placeholder="Password" required>
                    <p class="limit_txt user_pwd_txt" id="password_txt" style="font-size:0.5em;  color: red;">
                       	영문, 숫자 혼합하여 20자리 이내로 입력하세요.
                    </p>
                    <input type="password" id="password_chk" maxlength="20" class="input-field" placeholder="Password check" required>
                    <!-- <input type="checkbox" class="checkbox"><span>Terms and conditions</span> -->
                    <input type="text" class="input-field" placeholder="nickname" required>
                    <br>
                    <p style="font-size:1.0em;  color: gray;">gender
                    
                    <input type="radio" name="chk_info" value="male">male
            		  <input type="radio" name="chk_info" value="female">female
                    
                    </p>
                    
                    
                    <button class="registersubmit" onclick="registerFn()">register</button>
                    
                </form>
            </div>
                        
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <footer class="footer text-faded text-center py-5">
            <div class="container"><p class="m-0 small">Copyright &copy; Your Website 2021</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="./Resources/js/scripts.js"></script>
        
        
        <script>
            var x = document.getElementById("login");
            var y = document.getElementById("register");
            var z = document.getElementById("btn");
            
            
            function login(){
                x.style.left = "50px";
                y.style.left = "450px";
                z.style.left = "0";
            }

            function register(){
                x.style.left = "-400px";
                y.style.left = "50px";
                z.style.left = "110px";
            }
            
            function loginFn() {
                var user_id = $("#user_id").val(); //id하나만 가지고 오기위해서 val을 씀
                var password = $("#password").val(); //serialize는 다 가져오는것
                $.ajax({
                   url : "ajaxlogin.do", //글쓰기 버튼을 누르면 serialize을 가지고ajaxregister여기로 연결해서 처리해주고
                   type : "post",
                   data : {
                      "user_id" : user_id,
                      "password" : password
                   }, //"파라메터":벨류값
                   success : function(data) {
                      if (data == "NO") {
                         alert("회원 인증에 실패했습니다");
                      } else {
                         location.href = "index.jsp"; //로그인 성공하면 메인화면으로
                      }
                   }, //처리가 성공하면 바로 list를 뽑아준다
                   error : function() {
                      alert("error");
                   }
                });
             }
            function regisgerFn(){
               
            }
            
        </script>
        
        
    </body>
</html>
