/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author PARAM
 */
public class adduser extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            
            String username=request.getParameter("username");
            String password=request.getParameter("password");
            String repassword=request.getParameter("repassword");
            String email=request.getParameter("email");
            HttpSession session=request.getSession();
            session.setAttribute("user",username);
            
            if(username.length() > 5){    
                if(password.equals(repassword) ){    
                    try
                    {
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/real_estate?useUnicode=true&useJDBCCompliantTimezoneShift=true&useLegacyDatetimeCode=false&serverTimezone=UTC","root","");
                        Statement st=conn.createStatement();
                        int x= st.executeUpdate("insert into login (username,password,email) values("+"'"+username+"'"+","+"'"+password+"'"+","+"'"+email+"'"+");");
                        out.println("added successfully");
                        RequestDispatcher rd=request.getRequestDispatcher("welcome.jsp");
                        rd.forward(request, response);
                    }
                    catch(IOException | ClassNotFoundException | SQLException | ServletException e){out.println(e);}
                }
                else
                {
                    RequestDispatcher rd= request.getRequestDispatcher("signup.jsp");
                    request.setAttribute("msg","PASSWORD AND REPASSWORD ARE NOT SAME!");
                    rd.forward(request,response); 
                }
            }
             else
                {
                    RequestDispatcher rd= request.getRequestDispatcher("signup.jsp");
                    request.setAttribute("msg","USERNAME IS TOO SHORT!");
                    rd.forward(request,response); 
                }
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet adduser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet adduser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
