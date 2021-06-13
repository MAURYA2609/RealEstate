<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page language="java" session = "false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            HttpSession s=request.getSession(false);
            if(s.getAttribute("user")!=null)
            {
                s.setMaxInactiveInterval(-1);
                RequestDispatcher rd2=request.getRequestDispatcher("index.jsp");
                rd2.forward(request,response);
            }
        %>
    </body>
</html>