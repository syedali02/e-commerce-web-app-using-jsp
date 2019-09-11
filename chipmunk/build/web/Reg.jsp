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
		<!--<link rel="shortcut icon" href="favicon.ico" /> !--->
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
                                            Sign Up
                                        </h3>
                                    </div>
                                     <form action="" method="post" class="m-login__form m-form">
                                                <div class="form-group m-form__group">
                                                    <input class="form-control m-input" type="text" name="userid" placeholder="userid" required />
                                                </div>
                                                <div class="form-group m-form__group">
                                                        <input class="form-control m-input" type="text" placeholder="fname" name="fname" required />
                                                </div>
                                                <div class="form-group m-form__group">
                                                        <input class="form-control m-input" type="text" placeholder="lname" name="lname" required />
                                                </div>
                                                <div class="form-group m-form__group">
                                                    <input class="form-control m-input" type="text" placeholder="Email" name="email" required />
                                                </div>
                                                <div class="form-group m-form__group">
                                                    <input class="form-control m-input" type="password" placeholder="Password" name="pwd" required />
                                                </div>
                                                <div class="form-group m-form__group">
                                                    <input class="form-control m-input m-login__form-input--last" type="password" placeholder="Confirm Password" name="rpwd">
                                                </div>
                                                <div class="m-login__form-action">
                                                    <button id="m_login_signup_submit" class="btn m-btn m-btn--pill m-btn--custom m-btn--air m-login__btn m-login__btn--primary" name="addtocart" onClick="submit">Sign Up</button>
                                                    &nbsp;&nbsp;
                                                    <a id="m_login_signup_cancel" href="index.jsp" class="btn m-btn m-btn--pill m-btn--custom m-btn--air m-login__btn">
                                                        Cancel
                                                    </a>
                                                </div>            
                                        </form>
                                        <% if (request.getParameter("addtocart")!=null)
                                            {
                                                String userid=request.getParameter("userid");
                                                String fname=request.getParameter("fname");
                                                String lname=request.getParameter("lname");
                                                String email=request.getParameter("email");
                                                String pwd=request.getParameter("pwd");

                                                String sql="insert into users(userid,fname,lname,email,pwd) values ('"+userid+"','"+fname+"','"+lname+"','"+email+"','"+pwd+"')";
                                                String url="jdbc:mysql://localhost:3306/chipmunk_database";
                                                String username="root";
                                                String password="";
                                                try{
                                                Class.forName("com.mysql.jdbc.Driver");
                                                Connection con = DriverManager.getConnection(url,username,password);
                                                PreparedStatement st = con.prepareStatement(sql);
                                                int rs= st.executeUpdate(sql);
                                                
                                                } catch (ClassNotFoundException e) { 
                                                e.printStackTrace();
                                                }
                                                response.sendRedirect("frontpage.html");
                                            }
                                        %>   
                                </div>
                                 
                                       
                            </div>
                        </div>
                     </div>
            </div>                          
    </body>
</html>