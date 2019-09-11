

 
<%@ page import="java.sql.*" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    try{
        String userid = request.getParameter("username");   
        String pwd = request.getParameter("password");
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chipmunk_database?" + "user=root&password=");    
        PreparedStatement pst = conn.prepareStatement("Select userid,pwd from users where userid=? and pwd=?");
        pst.setString(1, userid);
        pst.setString(2, pwd);
        ResultSet rs = pst.executeQuery();                        
        if(rs.next())           
           response.sendRedirect("frontpage.html"); 
           
        else
           
           out.println("<script type=\"text/javascript\">");
           out.println("location='index.jsp';");
           out.println("</script>");           
   }
   catch(Exception e){       
       out.println("Something went wrong !! Please try again");       
   }      
%>

                                                                                 