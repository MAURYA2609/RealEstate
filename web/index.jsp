
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<!DOCTYPE HTML>
<!DOCTYPE html PUBLIC "" ""><HTML lang="en" dir="ltr"><HEAD><META 
content="IE=11.0000" http-equiv="X-UA-Compatible">
   <TITLE>Login Page</TITLE>   
<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
<STYLE>
	body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background-image: url('indexpic.jpeg') ;
  background-size: cover;
}
 h2{
		 margin: 10px 0;
		text-align: center;
		font-size: 80px;
		padding-top: 40px;
		font-family: sans-serif;
		 color: white;
           text-shadow: 2px 2px 4px #000000;
 
	}
.login-box{
  width: 400px;

  position: absolute;
  top: 60%;
  left: 50%;
  transform: translate(-60%,-70%);
  color: white;
}
.login-box h1{
  float: left;
	text-align: center;
  font-size: 40px;
  text-shadow: 2px 2px 4px #000000;
  margin-bottom: 1px;
  padding: 13px 0;
}
.textbox{
  width: 100%;
  overflow: hidden;
  font-size: 20px;

  padding: 8px 0;
  margin: 8px 0;
  border-bottom: 1px solid pink;
}
.textbox i{
  width: 20px;
  float: left;
  text-align: center;
}
.textbox input{
  border: none;
  outline: none;
  background: none;
  color: white;
  font-size: 20px;
  width: 70%;
  float: left;
  margin: 0 30px;
}
.btn{
  width: 100%;
  background: none;
  border: 2px solid pink;
  color: white;
  padding: 10px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}
.ctn{
  width: 100%;
  background: none;
  border: 2px solid pink;
  color: white;
  padding: 10px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}
.dtn{
  width: 100%;
  background: none;
  border: 2px solid pink;
  color: white;
  padding: 10px;
  font-size: 18px;
  cursor: pointer;
  margin: 12px 0;
}

.m{
  float: left;
	text-align: center;
  font-size: 30px;
  text-shadow: 2px 2px 4px #000000;
  margin-bottom: 1px;
  padding: 13px 0;
  color: red;
}
  </STYLE>
    
<META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD> 
<BODY>
<form action="validate" method='POST'>
<DIV class="login-box">
<H1>Log-In</H1>
<DIV class="textbox"><I class="fas fa-user"></I>     
<INPUT type="text" placeholder="Enter Username" value="" name="username">	   </DIV>
<DIV class="textbox"><I class="fas fa-lock"></I>     
<INPUT type="password" placeholder="Enter Password" value="" name="password">   </DIV>

<INPUT class="btn" type="submit" value="Log in">
</form>
<form action="signup.jsp">
<INPUT class="ctn" type="submit" value="Don't have an account?">
</form>
    <%
        if(request.getAttribute("msg") != "")
        {
            %>    <p class="m"><%=request.getAttribute("msg")%></p>
        <%}
    %><!--
<form action="/Login_App/forget_password/">
<INPUT class="dtn" type="submit" value="Forgotten Your Password?">
</form>-->
<DIV class=m>
</DIV>
</DIV>

</BODY></HTML>
