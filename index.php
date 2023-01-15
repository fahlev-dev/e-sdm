<?php
session_start();
?>
<!DOCTYPE html>
<html lang="zxx">

<head>
	<link rel="icon" href="images/logo.png">
	<title>E-SDM </title>
	<script>
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
  <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
</head>
	<style type="text/css">
		/*
Author: W3layouts
Author URL: http://w3layouts.com
 */
html {
  scroll-behavior: smooth;
}

body,
html {
  margin: 0;
  padding: 0;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto,
    Oxygen-Sans, Ubuntu, Cantarell, "Helvetica Neue", sans-serif;
}

* {
  box-sizing: border-box;
}

.d-grid {
  display: grid;
}

.d-flex {
  display: flex;
  display: -webkit-flex;
}

.text-center {
  text-align: center;
}

.text-left {
  text-align: left;
}

.text-right {
  text-align: right;
}

button,
input,
select {
  -webkit-appearance: none;
  outline: none;
}

button,
.btn,
select {
  cursor: pointer;
}
a {
  text-decoration: none;
}

h1,
h2,
h3,
h4,
h5,
h6,
p {
  margin: 0;
  padding: 0
}

p {
  color: #666;
}

.p-relative {
  position: relative;
}

.p-absolute {
  position: absolute;
}

.p-fixed {
  position: fixed;
}

.p-sticky {
  position: sticky;
}

.btn,
button,
.actionbg,
input {
  border-radius: 4px;
  -webkit-border-radius: 4px;
  -moz-border-radius: 4px;
  -o-border-radius: 4px;
  -ms-border-radius: 4px;
}

.btn:hover,
button:hover {
  transition: 0.5s ease;
  -webkit-transition: 0.5s ease;
  -o-transition: 0.5s ease;
  -ms-transition: 0.5s ease;
  -moz-transition: 0.5s ease;
}

/*--/wrapper--*/
.wrapper {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

@media (min-width: 576px) {
  .wrapper {
    max-width: 540px;
  }
}

@media (min-width: 768px) {
  .wrapper {
    max-width: 720px;
  }
}

@media (min-width: 992px) {
  .wrapper {
    max-width: 960px;
  }
}

@media (min-width: 1200px) {
  .wrapper {
    max-width: 1140px;
  }
}

.wrapper-full {
  width: 100%;
  padding-right: 15px;
  padding-left: 15px;
  margin-right: auto;
  margin-left: auto;
}

/*--//wrapper--*/
/*-- login --*/
.forms23-block-hny h1 {
  margin-bottom: 40px;
  font-size: 40px;
  color: #fff;
}

.w3l-forms-23 {
  padding: 2rem 0;
  align-items: center;
  background: url(images/background.jpg) no-repeat top;
  background-size: cover;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  -ms-background-size: cover;
  position: relative;
  display: grid;
  align-items: center;
  min-height: 100vh;
  z-index: 0;
  text-align: center;
}

.w3l-forms-23:before {
  content: "";
  background: rgba(12, 9, 16, 0.57);
  position: absolute;
  top: 0;
  min-height: 100%;
  left: 0;
  right: 0;
  z-index: -1;
}

.forms23-block-hny .main-bg {
  background: url(images/logodepan.png) no-repeat center;
  background-size: cover;
  -webkit-background-size: cover;
  -moz-background-size: cover;
  -o-background-size: cover;
  -ms-background-size: cover;
  border-radius: 0 0 300px 300px;
  z-index: 0;
  position: relative;
}

.forms23-block-hny .main-bg:before {
  content: "";
  background: rgba(43, 32, 34, 0.42);
  position: absolute;
  top: 0;
  min-height: 100%;
  left: 0;
  right: 0;
  z-index: -1;
  border-radius: 0 0 300px 300px;
}

.forms23-block-hny .form23 {
  background: #fff;
  box-shadow: 0 10px 30px 0 rgba(17, 17, 17, 0.09);
  margin: 0 auto;
  max-width: 430px;
  text-align: center;
  border-radius: 0 0 6px 6px;
  -webkit-border-radius: 0 0 6px 6px;
  -o-border-radius: 0 0 6px 6px;
  -moz-border-radius: 0 0 6px 6px;
}

.forms23-block-hny .form23 h6 {
  font-size: 24px;
  line-height: 30px;
  color: #fff;
  padding-top: 5em;
  padding-bottom: 2em;
}

.forms23-block-hny .form23 form .input-form {
  font-size: 16px;
  border: none;
  width: 100%;
  padding: 15px 15px;
  margin-bottom: 12px;
  border: 1px solid #dedddd;
  outline: none;
  background:transparent;
}
.forms23-block-hny .form23 form .input-form:focus {
  background: rgba(43, 32, 34, 0.09);
  border: 1px solid #2B2022;
}
.forms23-block-hny .form23 p {
  margin-top: 20px;
  font-size: 16px;
  font-weight: normal;
}

.forms23-block-hny button.btn.loginhny-btn {
  width: 100%;
  padding: 15px 28px;
  color: #fff;
  font-size: 15px;
  display: inline-block;
  text-align: center;
  font-weight: 600;
  line-height: 24px;
  text-transform: uppercase;
  border: none;
  background: #2B2022;
  border-radius:4px;
  -webkit-border-radius:4px;
  -o-border-radius:4px;
  -moz-border-radius:4px;
  margin-top: 12px;
}

.forms23-block-hny button.btn.loginhny-btn:hover {
  background: #BD783A;
  color: #2B2022;
  text-decoration: none;
  transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -webkit-transition: all 0.2s ease;
  -ms-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
}

.forms23-block-hny .form23 a {
  font-size: 15px;
  line-height: 20px;
  font-weight: bold;
  color: #BD783A;
}
.forms23-block-hny .form23 a:hover {
  color:#2B2022;
  text-decoration: none;
  transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -webkit-transition: all 0.2s ease;
  -ms-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
}
.forms23-block-hny .first-look{
  border-radius: 50%;
  margin: 0 auto;
  border-radius: 50%;
  margin: 0 auto;
  background: #fff;
  width: 60px;
  height: 60px;
  border: 4px solid rgba(99, 85, 87, 0.19);
  border: 4px solid rgba(99, 85, 87, 0.19);
}
.forms23-block-hny .first-look img{
  margin-top: 12px;
  text-align: center;
}
.forms23-block-hny .bottom-content {
  padding: 35px;
}

.forms23-block-hny .speci-login {
  position: absolute;
  left: 0;
  right: 0;
  bottom: -30px;
}

.forms23-block-hny .form23 h6 {
  font-size: 24px;
  line-height: 30px;
  color: #fff;
  padding-top: 5em;
  padding-bottom: 2em;
}
.forms23-block-hny .form23 h6.sec-one {
  padding-top:5em;
  padding-bottom: 2.8em;
  margin-bottom: 1em;
}

/*/copy-right*/
.w3l-copy-right.text-center {
  margin-top: 2em;
}

.w3l-copy-right p {
  font-size: 15px;
  line-height: 29px;
  color: #fff;
}

.w3l-copy-right p a {
  color: #bd783a;
}
.w3l-copy-right p a:hover {
  color:#fff;
  text-decoration: none;
  transition: all 0.2s ease;
  -moz-transition: all 0.2s ease;
  -webkit-transition: all 0.2s ease;
  -ms-transition: all 0.2s ease;
  -o-transition: all 0.2s ease;
}
/*//copy-right*/
@media all and (max-width:667px) {
  .forms23-block-hny h1 {
    font-size: 32px;
  }
}
@media all and (max-width: 440px) {
  .forms23-block-hny .form23 h6 {
    padding-top: 4em;
  }
  .forms23-block-hny h1 {
    font-size: 30px;
  }
}

@media all and (max-width: 410px) {
  .forms23-block-hny .form23 h6.sec-one {
    padding-top: 3.5em;
  }

  .forms23-block-hny .bottom-content {
    padding: 35px 20px;
  }
}
	</style>
<body>
	<!-- /login-section -->

	<section class="w3l-forms-23">
		<div class="forms23-block-hny">
			<div class="wrapper">
				<h1>E-SDM</h1>
				<!-- if logo is image enable this   
					<a class="logo" href="index.html">
					  <img src="image-path" alt="Your logo" title="Your logo" style="height:35px;" />
					</a> 
				-->
				<div class="d-grid forms23-grids">
					<div class="form23">
						<div class="main-bg">
							<h6 class="sec-one"></h6>
							<div class="speci-login first-look">
								<img src="images/user.png" alt="" class="img-responsive">
							</div>
						</div>
						<div class="bottom-content">
							<form action="config/login.php" method="post">
								<input type="text" name="username" class="input-form" placeholder="NRP/NIP"
										required="required" />
								<input type="password" name="password" class="input-form"
										placeholder="Password" required="required" />
								<button type="submit" class="loginhny-btn btn">Login</button>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- //login-section -->
</body>

</html>
<?php
    unset($_SESSION["error"]);
?>