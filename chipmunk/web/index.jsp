<%@ page import="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LOGIN</title>
        <meta name="description" content="Latest updates and statistic charts">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!--begin::Web font -->
		<script src="https://ajax.googleapis.com/ajax/libs/webfont/1.6.16/webfont.js"></script>
		<script>
          WebFont.load({
            google: {"families":["Poppins:300,400,500,600,700","Roboto:300,400,500,600,700"]},
            active: function() {
                sessionStorage.fonts = true;
            }
          });
		</script>
		<!--end::Web font -->
        <!--begin::Base Styles -->
		<link href="vendors.bundle.css" rel="stylesheet" type="text/css" />
		<link href="style.bundle.css" rel="stylesheet" type="text/css" />
		<!--end::Base Styles -->
		<!--<link rel="shortcut icon" href="favicon.ico" />!-->
    </head>
    
    <body>
            <div class="m-grid m-grid--hor m-grid--root m-page">
                    <div class="m-grid__item m-grid__item--fluid m-grid m-grid--hor m-login m-login--singin m-login--2 m-login-2--skin-1" id="m_login" style="background-image: url(bg-1.jpg);">
                        <div class="m-grid__item m-grid__item--fluid	m-login__wrapper">
                            <div class="m-login__container">
                                <div class="m-login__logo">
                                   
                                </div>
                                <div class="m-login__signin">
                                    <div class="m-login__head">
                                        <h3 class="m-login__title">
                                            Sign In
                                        </h3>
                                    </div>
                                        <form method="post" class="m-login__form m-form" action="login.jsp">
                                            
                                                    <div class="form-group m-form__group">
                                                        <input  class="form-control m-input" type="text" name="username" placeholder="username" required/>
                                                    </div>
                                                    <div class="form-group m-form__group">
                                                        <input class="form-control m-input m-login__form-input--last" type="password" placeholder="Password" name="password" required/>
                                                    </div>
                                                    <div class="m-login__form-action">
                                                            <input type="submit" value="Login" id="m_login_signin_submit" class="btn btn-focus m-btn m-btn--pill m-btn--custom m-btn--air  m-login__btn m-login__btn--primary" />
                                                            
                                                    </div>     
                                        </form>
                                </div>
                                 
                                <div class="m-login__account">
                                        <span class="m-login__account-msg">
                                            Don't have an account yet ?
                                        </span>
                                        &nbsp;&nbsp;
                                        <a href="Reg.jsp" id="m_login_signup" class="m-link m-link--light m-login__account-link">
                                            Sign Up
                                        </a>
                                        
                                </div>        
                            </div>
                        </div>
                     </div>
            </div>                          
    </body>
</html>