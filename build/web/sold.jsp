<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page language="java" session = "false"%>
<!DOCTYPE html>
<html>
    <head>
<style>
body, html {
  height: 100%;
  margin: 0;
background-color:#FFDBAC;
 background-size: cover;
}
.bg .u{
position: absolute;
  bottom: 500px;
  background: rgb(0, 0, 0); 
  background: rgba(0, 0, 0, 0.5); 
  color: #f1f1f1;
  width: 100%;
  padding: 30px;
    font-size:30px; 
text-shadow: 2px 2px 4px #000000;
}
.head{
    background-position: center;
  background-color: #C18566;
    
     background-size: cover;
         width: 50%;
      height: 6%; 
    text-align: center;
       margin-left: auto;
    margin-right: auto;
 border-radius: 25px;
  
}
.head  h1{
    color:white;
    text-shadow: 2px 2px 4px #000000;
    font-size:35px; 
}
.bg{

  height: 50%; 
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
    background-image: url("img.jpg");
}

.navbar {
    bottom:0;
  overflow: hidden;
  background-color: #2D332A;
}

.navbar a {
  float: left;
  font-size: 20px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
text-shadow: 2px 2px 4px #000000;
  
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 20px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
text-shadow: 2px 2px 4px #000000;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
h1 {
  font-size: 50px;
  word-break: break-all;
}

.dtn , .ctn {
  padding: 15px 25px;
  font-size: 20px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color:black;
  border: none;
  border-radius: 15px;
  padding: 10px;
  
}
  .m,.n,.p{
  border: none;
  outline: none;
  background: none;
  color: black;
  font-size: 20px;
  width: 70%;
    margin-inline: 1px;
     font-family: inherit;
 text-shadow: 2px 1px 2px #000000;
}

.k{
    text-align: center;
  font-size: 30px;
  text-shadow: 2px 2px 4px #000000;
  margin-bottom: 1px;
  padding: 13px 0;
  color: red;
  text-align:center;
}

</style>
</head>
    <body>

<div class="bg">

</div>
    <br>
    <br>
<div class="head">
    
    <h1>Sold Homes</h1>
</div>
<br>
        <%
            HttpSession s=request.getSession(false);
            String user=(String)s.getAttribute("user");
            
            try{
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/real_estate?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                   PreparedStatement pst = conn.prepareStatement("select * from home where seller=? and buyer!='notsold'");
                pst.setString(1, user);
                ResultSet rs = pst.executeQuery();          
                            
                while(rs.next())
                {
                
        %>
                   <center>
                       <img src="/SE/images/<%=rs.getString("img")%>" height="300" width="400">
                    <p class="m"> This house is sold to :<%=rs.getString("buyer")%> in <%=rs.getString("price")%> ₹</p>
                   </center>
                <%}
                    
                }
            catch(Exception e)
                    {
                        out.println("Exception:" + e.getMessage());
                    }
                    
                        %>
    </body>
</html>