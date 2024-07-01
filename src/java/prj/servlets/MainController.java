/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package prj.servlets;

import java.util.List;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import prj.dal.ProductDAO;
import prj.dal.ProductDTO;

/**
 *
 * @author PC
 */
public class MainController extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    private final String LOGIN_SERVLET = "LoginServlet";
    private final String LOGIN_PAGE = "login.jsp";
    private final String VIEW_CART_PAGE = "viewCart.jsp";
    private final String ADD_TO_CART_SERVLET = "AddToCartServlet";
    private final String SEARCH_SERVLET = "SearchServlet";
    private final String UPDATE_CUSTOMER_SERVLET = "UpdateCustomerServlet";
    private final String REMOVE_SERVLET = "RemoveServlet";
    private final String REGISTER_SERVLET="RegisterServlet";
    private final String COOKIE_SERVLET = "CookieServlet";
    private final String UPDATE_PASSWORD_SERVLET = "UpdatePasswordServlet";
    private final String SEARCH_PRODUCT_SERVLET = "SearchServlet";
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String url = "home.jsp";
         ProductDAO productDAO = new ProductDAO();
         List<ProductDTO> productList = productDAO.getProductList();
         HttpSession session = request.getSession(true);
         session.setAttribute("PRODUCT_LIST", productList);
        try {
            /* TODO output your page here. You may use following sample code. */
            String button = request.getParameter("btAction");
           
            if(button.equals("Login")){
                url = LOGIN_SERVLET;
            }
            else if(button.equals("AddToCart")){
                url = ADD_TO_CART_SERVLET;
            }
            else if(button.equals("Search")){
                url = SEARCH_SERVLET;
            }
            else if(button.equals("Save")){
                url = UPDATE_CUSTOMER_SERVLET;
            }
            else if (button.equals("SavePassword")){
                url = UPDATE_PASSWORD_SERVLET;
            }
            else if(button.equals("Remove")){
                url = REMOVE_SERVLET;
            }
            else if(button.equals("Register")){
                url = REGISTER_SERVLET;
            }
            else if(button.equals("SearchProduct")){
                url = SEARCH_PRODUCT_SERVLET;
            }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(MainController.class.getName()).log(Level.SEVERE, null, ex);
        }
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