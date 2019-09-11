<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 
<html>
   <head>
      <title>View Cart</title>
      <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
            <!-- Bootstrap core CSS -->
            <link href="css/bootstrap.min.css" rel="stylesheet">
            <!-- Material Design Bootstrap -->
            <link href="css/mdb.min.css" rel="stylesheet">
            <link rel="stylesheet" type="text/css" href="css/accss.css">
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
        
          <a href="frontpage.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Home Page</a>
          
          <a href="AboutUs.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>About Us</a>
          
          <a href="accessories.jsp" class="list-group-item active waves-effect">
          <i class="fas fa-chart-pie mr-3"></i>Accessories
        </a>
        <a href="Training.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Training</a>
          
          <a href="contactus.html" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>Contact Us</a>
          
        <a href="view.jsp" class="list-group-item list-group-item-action waves-effect">
          <i class="fas fa-table mr-3"></i>view cart</a>
        
      </div>

    </div>
    <!-- Sidebar -->
<% if(request.getParameter("delete")!=null)
{
	int deleteid=Integer.parseInt(request.getParameter("deleteproduct"));
	String sql="delete from view where id="+deleteid+"";
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
  </header>
    
          
   <main class="pt-5 mx-lg-5">
    <div class="container-fluid mt-5">
    <h1>view cart</h1>
    <hr>
      <div class="row wow fadeIn" style="visibility: visible; animation-name: fadeIn;">
        <div class="col-md-6 col-md-offset-2 mb-4">

          
          <div style="width:800px;"class="card">

            <!--Card content-->
            <div class="card-body">

              <!-- Table  -->
              <table class="table table-hover">
                <!-- Table head -->
                <thead class="blue-grey lighten-4">
                  <tr>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Quantity</th>
                    <th>Total price</th>
                    <th>Tax</th>
                    <th></th>
                  </tr>
                </thead>
                <tbody>
                

                  <% String sql="select * from view";
                    String url="jdbc:mysql://localhost:3306/chipmunk_database";
                    String username="root";
                    String password="";
                    int tp = 0;
                    float tx = 0;
                    float tt = 0;
                    float ta = 0;
                    try{
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection con = DriverManager.getConnection(url,username,password);
                      PreparedStatement st = con.prepareStatement(sql);
                      ResultSet rs= st.executeQuery();
                      
                      while(rs.next())
                      {
                        int price=rs.getInt("price");
                        int itemquan=rs.getInt("item");
                        int total=price*itemquan;  
                        float tax = total*5/100f;
                        tp=tp+total;
                        tx=tx+tax;
                        tt=total+total*5/100f;
                        ta=ta+tt;
                        
                      %>
                        <tr>
                        <td><%=rs.getString("title") %></td>
                        <td>$<%=rs.getInt("price") %></td>
                        <td><%=rs.getInt("item") %></td>
                        <td><% out.println("$"+total); %></td>
                        <td><% out.println("$"+tax); %></td>
                        <form action="#" method="get">
                        <td><button class="btn btn-default btn-xs" data-toggle="modal" data-target="#myModal" name="delete" onClick="submit">Delete</button></td>
                              <input name="deleteproduct" value="<%= rs.getInt("id") %>" hidden>
                        </form>
                              </tr>
                          
                      <% }
                      
                    } catch (ClassNotFoundException e) { 
                    e.printStackTrace();
                    }
                    
                  %>	
                </tr>
                <tr>
                <td>
                Total Price:
                </td>
                <td>
                </td>
                <td>
                </td>
                <td><% out.println(tp); %></td>
                <td><% out.println(tx); %></td>
                <td>$<% out.println(ta); %></td>
                </tr>
                </tbody>
               
              </table>
              <input type="button" data-toggle="modal" data-target="#myModal2"  class="btn btn-success"  value="Checkout" />
              <a href="accessories.jsp" onClick="fun()"  class="btn btn-default">back</a>
              <div id="myModal2" class="modal fade" role="dialog">
                      
                        <div class="modal-dialog">
                      
                          <!-- Modal content-->
                          <div class="modal-content">
                            <div class="modal-header">
                              
                              <h4 class="modal-title">ACCOUNT</h4>
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>
                            
                            <form name="form1" method="post" action="order.html">
                              <div class="modal-body"> 
                                <label>NAME:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                                <input type="text" name ="name" id="name" />
                                <br>                      
                                <label>ADDRESS:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>                               
                                <input type="text" name ="adress" id="adress" />
                                <br>
                                <label>EMAIL:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>                               
                                <input type="email" name ="adress" id="adress" placeholder="abc@gmail.com" />
                                <br>
                                <label>PHONE NO:&nbsp&nbsp&nbsp&nbsp</label>
                                <input type="text" name ="price" id="price">
                                <br>
                                <label>CARD NO:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                                <input type="number" name ="card" id="card">
                                <br>
                                <label>EXPIRY DATE:</label>
                                <input type="number" name ="card" id="expiry" placeholder="mm/yyyy">
                                <br>
                                <label>CVV:&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</label>
                                <input type="password" name ="card" id="cvv">
           
                                <br>
                                  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<input type="submit" class="btn btn-success" value="Place Order" />
                                  &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<button type="button" class="btn btn-default" data-dismiss="modal">cancel</button>
                                </div>
                            </form>

                            
                          </div>
                          
                      
                        </div>
                        
              </div>
             

            </div>

          </div>
          
         

        </div>
         
      </div>
      <div class="row">
      <div class="col-md-offset-10">
        
         
         
      </div>
      </div>
      </main>
   </body>
   <script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
  <!-- Bootstrap tooltips -->
  <!-- <script type="text/javascript" src="js/popper.min.js"></script> -->
  <!-- Bootstrap core JavaScript -->
  <script type="text/javascript" src="js/bootstrap.min.js"></script>
   <script type="text/javascript">
   function fun(){
      var i = 0;
       i += $("#total1").val();
       
       $("#total").val(i);
   }
   
   
   </script>
</html>