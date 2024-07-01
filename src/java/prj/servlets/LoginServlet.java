/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import prj.dal.UserDAO;
import prj.dal.UserDTO;

/**
 *
 * @author PC
 */
public class LoginServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final String HOME_PAGE = "home.jsp";
    private final String LOGIN_PAGE = "login.jsp";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = HOME_PAGE;
        try {
            /* TODO output your page here. You may use following sample code. */
            String userName = request.getParameter("txtUserName");
            String password = request.getParameter("txtPassword");
            
            boolean isAdmin = false;
            boolean isCustomer = false;
            UserDAO dao = new UserDAO();
            if(userName.equals("admin1") || userName.equals("admin2") || userName.equals("admin3") || userName.equals("admin4")){
                isAdmin = dao.authenticateAdmin(userName, password);
                url = HOME_PAGE;
                
            }
            else {
                isCustomer = dao.authenticateCustomer(userName, password);
                url = HOME_PAGE;
                
                Cookie cUserName = new Cookie("USERNAME", userName);
                Cookie cPassword = new Cookie("PASSWORD", password);
                // Buoc 2: Dinh Cookie vao response
                response.addCookie(cUserName);
                response.addCookie(cPassword);
                
                // Buoc 3. Mo Session
                HttpSession session = request.getSession(true);
                
                // Buoc 4: get current user
                UserDTO user = dao.getUSer(userName);
                
                session.setAttribute("USER", user);
            }
            if(!isAdmin && !isCustomer){
                url = LOGIN_PAGE;
                request.setAttribute("ERROR", "UserName or Password is not correct, Try again!");
            }
        }catch(SQLException|ClassNotFoundException ex){
            ex.printStackTrace();
        }
        finally{
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);
            out.close();
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
