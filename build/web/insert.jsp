<%-- 
    Document   : insert
    Created on : 22 Apr, 2020, 11:50:45 PM
    Author     : PARAM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html PUBLIC "" ""><HTML lang="en" dir="ltr"><HEAD><META 
content="IE=11.0000" http-equiv="X-UA-Compatible">
   <TITLE></TITLE>   
<META http-equiv="Content-Type" content="text/html; charset=windows-1252">
<STYLE>
	body{
  margin: 0;
  padding: 0;
  font-family: sans-serif;
  background: url('indexpic.jpeg') ;
  background-size: cover;
}

.box{
  width: 400px;

  position: absolute;
  top: 60%;
  left: 20%;
  transform: translate(-60%,-70%);
  color: white;
}
.box h1{
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
.ctn,.mtn{
  width: 70%;
  background: none;
  color: white;
  padding: 10px;
  font-size: 15px;
  cursor: pointer;
  margin: 12px 0;
}
.dtn{
  width: 70%;
  background: none;
  color: white;
  padding: 10px;
  font-size: 15px;
  cursor: pointer;
  margin: 12px 0;
}
.i{
border: none;
  outline: none;
  background: none;
  color: white;
  font-size: 20px;
  width: 70%;
  float: left;
  margin: 0 30px;
}
.m{
  float: left;
	text-align: center;
  font-size: 20px;
  text-shadow: 2px 2px 4px #000000;
  margin-bottom: 1px;
  padding: 13px 0;
  color: red;
}

</STYLE>
    
<META name="GENERATOR" content="MSHTML 11.00.10570.1001"></HEAD>   
<BODY>
<DIV class="box">
<br><br><br><br><br><br><br><br><br><br>
<H1>Add New house</H1>
<form action="InsertData.jsp"  >
<DIV class="i">
<label for="img">Select image:</label>
</div>
<input type="file" id="image" name="image" class="ctn"> 
<DIV class="textbox"><I class="fas fa-user"></I>    
<INPUT type="text" placeholder="price" name="price">	   </DIV> 
<DIV class="textbox"><I class="fas fa-relock"></I>     
<INPUT type="text" placeholder="bhk" name="bhk">   </DIV>
<DIV class="textbox"><I class="fas fa-relock"></I>     
<INPUT type="text" placeholder="address" name="address">   </DIV>
 <INPUT class="btn" type="submit" value="upload" name="submit">
</form>
 <%
        if(request.getAttribute("added") != "")
        {
            %>    <p class="m"><%=request.getAttribute("added")%></p>
        <%}
    %>
</DIV></BODY></HTML>
