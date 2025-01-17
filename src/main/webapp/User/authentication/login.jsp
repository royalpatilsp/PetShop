<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="../link.jsp"></jsp:include>
<style>

body {
	background-image: url('../img/dogy2.jpg');
	background-repeat: no-repeat;
	background-attachment: fixed;
	background-size: cover;
}

* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
	font-family: sans-serif;
}

.container {
	width: 100%;
	height: 100vh;
	display: flex;
	justify-content: start;
	align-items: center;
}

.form-box {
	max-width: 400px;
	background-color: #ffffff5c;
	border-radius: 8px;
	padding: 20px 28px;
	margin-inline: 20px;
	margin-left: 160px;
}

.form-box header h1 {
	text-align: center;
	color: #f04336;
}

.form-box form {
	margin-block: 30px;
}

input {
	width: 100%;
	padding: 18px 16px;
	border: none;
	outline: none;
	border-radius: 4px;
	background-color: #fff;
	font-size: 16px;
	margin: 12px 0;
}

input[type="text"] {
	display: none;
}

#Forgot {
	display: none;
}

a {
	text-decoration: none;
	color:#e72416;
	font-size: 14px;
}

input[type="button"] {
	width: 100%;
	margin-block: 30px;
 	background-color: #e72416;
 	color: #ffffff;
	font-size: 22px;
	font-weight: 700;
	border-radius: 8px;
	cursor: pointer;
	transition: .4s;
}

input[type="button"]:hover {
	background-color: #e72416;
}

#signupBtn, #loginBack {
	text-align: center;
	margin-block: 20px;
}

#loginBack {
	display: none;
}

#signupBtn a {
	font-size: 16px;
	font-weight: 700;
	color:#e72416;
}

#loginBack a {
	font-size: 16px;
	font-weight: 700;
	color: #e72416;
}

#signupBtn a:hover {
	color: #e72416;
	text-decoration: underline 2px;
	text-underline-offset: 3.5px;
}

#loginBack a:hover {
	color: #e72416;
	text-decoration: underline 2px;
	text-underline-offset: 3.5px;
}

input:hover{
	background-color:#f5f2eb;

}

 #namefield {
      display: none;
    }

    #signupBtn, #loginBack {
      display: block;
    }

    #loginBack {
      display: none;
    }
    
    #loginLink{
    color:#e72416;
    }


/* CSS  to achieve responsiveness */
@media screen and (max-width:700px) { /* .form-box:100%; */
}
</style>
</head>
<body>
	 <div class="container">
    <div class="form-box">
      <header>
        <h1 id="title">Login</h1>
      </header>
      <form action="#">
        <input type="text" placeholder="name" id="namefield">
        <input type="email" placeholder="Email">
        <input type="password" placeholder="Password">
        <a id="Forgot" href="#">Forgot Password</a>
        <input type="button" value="Login" id="signinBtn" class="col-lg-6" data-aos="fade-right" data-aos-delay="100">
        <p id="signupBtn">
          Don't Have Account? <a href="#" id="signupLink">Sign Up</a>
        </p>
        <p id="loginBack">
          Already have an account. <a href="#" id="loginLink">Login</a>
        </p>
      </form>
    </div>
  </div>

  <script>
    document.addEventListener('DOMContentLoaded', function () {
      const title = document.getElementById('title');
      const nameField = document.getElementById('namefield');
      const signinBtn = document.getElementById('signinBtn');
      const signupBtn = document.getElementById('signupBtn');
      const signupLink = document.getElementById('signupLink');
      const loginLink = document.getElementById('loginLink');
      const para = document.getElementById('loginBack');
      const forgotLink = document.getElementById('Forgot');

      signupLink.addEventListener('click', function () {
        title.innerHTML = 'Sign Up';
        signinBtn.value = 'Sign Up';
        nameField.style.display = 'block';
        para.style.display = 'block';
        signupBtn.style.display = 'none';
        forgotLink.style.display = 'block';
      });

      loginLink.addEventListener('click', backtoLogin);
      para.addEventListener('click', backtoLogin);
      forgotLink.addEventListener('click', function () {
        // Handle forgot password link click
      });

      function backtoLogin() {
        title.innerHTML = 'Login';
        nameField.style.display = 'none';
        signinBtn.value = 'Login';
        para.style.display = 'none';
        signupBtn.style.display = 'block';
        forgotLink.style.display = 'none';
      }
    });
  </script>

</body>
</html>