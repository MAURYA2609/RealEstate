<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page language="java" session = "false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
           HttpSession s=request.getSession(false);
           String seller="";
           if(s==null)
            {
                RequestDispatcher rd=request.getRequestDispatcher("index.html");
                request.setAttribute("logged","<center><font size='5' color='white'>You are not logged in.</font></center>");
                rd.forward(request,response);
            }
           else
           {
                seller=(String)s.getAttribute("user");
                String image=request.getParameter("image");
                String price=request.getParameter("price");
                String bhk=request.getParameter("bhk");
                String address=request.getParameter("address");

                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/real_estate?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                    Statement st=conn.createStatement();
                    File img= new File(image);

                    int x= st.executeUpdate("insert into home (seller,img,price,bhk,address) values("+"'"+seller+"'"+","+"'"+img+"'"+","+"'"+price+"'"+","+"'"+bhk+"'"+","+"'"+address+"'"+");");
                }
                catch(Exception e){out.println(e);}
                RequestDispatcher rd= request.getRequestDispatcher("insert.jsp");
                request.setAttribute("added","SUCCESSFULLY ADDED");
                rd.forward(request,response);
            }
           %>
    </body>
</html>