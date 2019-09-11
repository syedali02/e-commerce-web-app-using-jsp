
<%@ page
   import="java.sql.*" %>
   <%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>Accessories</title>


  <link rel="stylesheet" type="text/css" href="homepage.css">
  
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="css/bootstrap.css" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="css/mdb.min.css" rel="stylesheet">
  <link rel="stylesheet" type="text/css" href="accss.css">
  <!-- Your custom styles (optional) -->
  <link href="css/style.min.css" rel="stylesheet">
  <style>

    .map-container{
    overflow:hidden;
    padding-bottom:56.25%;
    position:relative;
    height:0;
    }
    .map-container iframe{
    left:0;
    top:0;
    height:100%;
    width:100%;
    position:absolute;
    }
  </style>
</head>

<body class="grey lighten-3">
    
  <!--Main Navigation-->
  <header>

   
    
    
    <!-- Sidebar -->
    <div class="sidebar-fixed position-fixed">

      <a class="logo-wrapper waves-effect">
        
      </a>

      <div class="list-group list-group-flush">
        <a href="accessories.jsp" class="list-group-item active waves-effect">
          <i class="fas fa-chart-pie mr-3"></i>Accessories
        </a>
       
          <a href="frontpage.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Home Page</a>
          
          <a href="AboutUs.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>About Us</a>
          
          <a href="Training.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Training</a>
          
          <a href="contactus.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Contact Us</a>
          
        <a href="view.jsp" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>view cart</a>
        
      </div>

    </div>
    <!-- Sidebar -->

  </header>
  <!--Main Navigation-->

  <!--Main layout-->
  <main class="pt-5 mx-lg-5">
      
      <!--<div class="">
          <ul class="header">
            <li><a href="frontpage.html">Home</a></li>
            <li><a href="AboutUs.html">About Us</a></li>
            <li><a class="active" href="accessories.jsp">Accessories</a></li>
            <li><a href="Training.html">Training/Workshop</a></li>
            <li><a href="contactus.html">Contact Us</a></li>
          </ul>
      </div> !---->     
    <div class="container-fluid mt-5">
      <div class="row wow fadeIn">
          <h1>Accessories</h1>
          <hr>
          <div class="row text-center">
            
              <div class="product-wrapper col-md-4 col-sm-6">
                <form method="post" action="#"> 
                  <div class="product center">
                      <a data-toggle="modal" data-target="#Modal"><img class="product-image" src="img/chip_baby.jpg" height="250px" width="250px"></a>
                      <div id="Modal" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="row">
                            <img class="col-md-6 col-sm-5" src="img/chip_baby.jpg" height="250px" width="250px">
                            <h5>description
                            </h5>
                            </div>
                          </div> 
                        </div>
                      </div>
                      <br>
                      <br>
                      <p><b>Chipmunk Plate</b></p><br>
                      <input name="name3" value="Chipmunk Onsie" hidden>
                      <p><b>Price:$25</b></p><br>
                      <input name="price3" value="25" hidden>
                      <p>Item Quantity</p>
                        <select name="quantity3">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        </select><br><br>
                     <button class="btn" data-toggle="modal" data-target="#myModal" name="addtocart" onClick="submit">Add to Cart</button>
                      
                  </div>
                </form>
              </div>
            



               <% if (request.getParameter("addtocart")!=null)
                  {
                    String cname=request.getParameter("name3");
                    int price=Integer.parseInt(request.getParameter("price3"));
                    int quan=Integer.parseInt(request.getParameter("quantity3"));
                    String sql="insert into view(title,price,item) values ('"+cname+"',"+price+","+quan+")";
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
                 
                }
                %>
            
              <div class="product-wrapper col-md-4 col-sm-6">
                <form action="#" method="post">
                  <div class="product">
                      <a data-toggle="modal" data-target="#Modal2"><img class="product-image" src="img/chip_plate.jpeg" height="250px" width="250px"></a><br><br>
                      <div id="Modal2" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="row">
                            <img class="col-md-6 col-sm-5" src="img/chip_plate.jpeg" height="250px" width="250px">
                            <h5>description
                            </h5>
                            </div> 
                          </div>
                        </div> 
                      </div>
                     
                      <p><b>Chipmunk Plate</b></p><br>
                      <input name="name3" value="Chipmunk Plate" hidden>
                      <p><b>Price:$15</b></p><br>
                      <input name="price3" value="15" hidden>
                      <p>Item Quantity</p>
                      <select name="quantity3">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      </select><br><br>
                       <button class="btn" data-toggle="modal" data-target="#myModal" name="addtocart" onClick="submit">Add to Cart</button>
                  </div>
                </form>
              </div>
            
              
              <div class="product-wrapper col-md-4 col-sm-6">
                <form action="#" method="post">
                  <div class="product">
                      <a data-toggle="modal" data-target="#Modal3"><img class="product-image" src="img/mug.jpg" height="250px" width="250px"></a><br><br>
                      <div id="Modal3" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="row">
                            <img class="col-md-6 col-sm-5" src="img/mug.jpg" height="250px" width="250px">
                            <h5>description
                            </h5>
                            </div>

                            
                          </div>
                          
                      
                        </div>
                        
                      </div>
                      <p><b>Chipmunk Mug</b></p><br>
                        <input name="name3" value="Chimunk Mug" hidden>
                        <input name="price3" value="7" hidden>
                        <p><b>Price:$7</b></p><br>
                        <p>Item Quantity</p>
                        <select name="quantity3">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        </select><br><br>
                      <button class="btn" data-toggle="modal" data-target="#myModal" name="addtocart" onClick="submit">Add to Cart</button>
                      
                      
                  </div>
                </form> 
              </div>
             
             
              <div class="product-wrapper col-md-4 col-sm-6">
                <form action="#" method="post"> 
                  <div class="product">
                      <a data-toggle="modal" data-target="#Modal4"><img class="product-image" src="img/iphonecase.jpg" height="250px" width="250px"></a><br><br>
                      <div id="Modal4" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="row">
                            <img class="col-md-6 col-sm-5" src="img/iphonecase.jpg" height="250px" width="250px">
                            <h5>description
                            </h5>
                            </div>

                            
                          </div>
                          
                      
                        </div>
                        
                      </div>
                      <p><b>Chipmunk Iphone Case</b></p><br>
                        <input name="name3" value="Iphone Case" hidden>
                        <p><b>Price:$12</b></p><br>
                        <input name="price3" value="12" hidden>
                        <p>Item Quantity</p>
                        <select name="quantity3">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        </select><br><br>
                      <button class="btn" data-toggle="modal" data-target="#myModal" name="addtocart" onClick="submit">Add to Cart</button>
                      
                  </div>
                </form>
              </div>
            
            
              <div class="product-wrapper col-md-4 col-sm-6">
                <form action="#" method="post">  
                  <div class="product">
                      <a data-toggle="modal" data-target="#Modal5"><img class="product-image" src="img/chip_stoy1.jpg" height="250px" width="250px"></a><br><br>
                      <div id="Modal5" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="row">
                            <img class="col-md-6 col-sm-5" src="img/chip_stoy1.jpg" height="250px" width="250px">
                            <h5>description
                            </h5>
                            </div>

                            
                          </div>
                          
                      
                        </div>
                        
                      </div>
                      <p><b>Chipmunk Softtoy</b></p><br>
                        <input name="name3" value="Chipmunk Softtoy" hidden>
                        <p><b>Price:$5</b></p><br>
                        <input name="price3" value="5" hidden>
                        <p>Item Quantity</p>
                        <select name="quantity3">
                        <option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="5">5</option>
                        <option value="6">6</option>
                        </select><br><br>
                      <button class="btn" data-toggle="modal" data-target="#myModal" name="addtocart" onClick="submit">Add to Cart</button>
                      
                  </div>
                </form>
              </div>
            
            
              <div class="product-wrapper col-md-4 col-sm-6">
                <form action="#" method="post">
                  <div class="product">
                      <a data-toggle="modal" data-target="#Modal6"><img class="product-image" src="img/chip_cage.jpg" height="250px" width="250px"></a><br><br>
                      <div id="Modal6" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">details</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            <div class="row">
                            <img class="col-md-6 col-sm-5" src="img/chip_cage.jpg" height="250px" width="250px">
                            <h5>description
                            </h5>
                            </div>

                            
                          </div>
                          
                      
                        </div>
                        
                      </div>
                      <p><b>Chipmunk Rescue Cage</b></p><br>
                      <input name="name3" value="Chipmunk Cage" hidden> 
                      <p><b>Price:$17</b></p><br>
                      <input name="price3" value="17" hidden>
                      <p>Item Quantity</p>
                      <select name="quantity3">
                      <option value="1">1</option>
                      <option value="2">2</option>
                      <option value="3">3</option>
                      <option value="4">4</option>
                      <option value="5">5</option>
                      <option value="6">6</option>
                      </select><br><br>
                      <button class="btn" data-toggle="modal" data-target="#myModal" name="addtocart" onClick="submit">Add to Cart</button>
                      
                  </div>
                </form> 
              </div>
             
          </div>

      </div>

    </div>
  </main>

  <!-- SCRIPTS -->
  <!-- JQuery -->
  <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <!-- <script type="text/javascript" src="js/popper.min.js"></script> -->
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
  <!-- MDB core JavaScript -->
  <!-- <script type="text/javascript" src="js/mdb.min.js"></script> -->
  <!-- Initializations -->
  <script type="text/javascript">
    // Animations initialization
  
    
    function fun1()
    {
       $("#item_1").val($("#select_1").val());

    }function fun2()
    {
       $("#item_2").val($("#select_2").val());
       
    }function fun3()
    {
       $("#item_3").val($("#select_3").val());
       
    }function fun4()
    {
       $("#item_4").val($("#select_4").val());
       
    }function fun5()
    {
       $("#item_5").val($("#select_5").val());
       
    }
    function fun6()
    {
       $("#item_6").val($("#select_6").val());
       
    }
    function fun10(){
      window.alert("adfasd")
    }
  </script>


</body>

</html>
