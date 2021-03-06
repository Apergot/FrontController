/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import Model.users.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Apergot
 */
@WebServlet(name = "SessionInitializer", urlPatterns = {"/SessionInitializer"})
public class SessionInitializer extends HttpServlet {

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
        
        HttpSession session = request.getSession();
        
        if (session.getAttribute("cart") == null) {
            Cart cart = new Cart();
            session.setAttribute("cart", cart);
        }
        
        /**
         * I might be able to log in or register an user at this point and then
         * storing user data into session to access it whenever I want.
         */
        
        User user;
        if (request.getParameter("op").equals("login")){
            if (session.getAttribute("user") == null) {
                session.setAttribute("user", UserHelper.LogUserIn(
                    request.getParameter("name"), 
                    request.getParameter("password")
                ));
            }
            System.out.println("se ha logueado en el sistema");
        } else if (request.getParameter("op").equals("register")) {
            if (session.getAttribute("user") == null) {
                session.setAttribute("user", UserHelper.RegisterUser(
                    request.getParameter("name"),
                    request.getParameter("password")
                ));
            }
            System.out.println("Se ha registrado en el sistema");
            System.out.println(((User)session.getAttribute("user")).getUsername());
        } else if (request.getParameter("op").equals("logout")) {
            session.invalidate();
            System.out.println("se ha deslogueado");
        }else {
            ServletContext context = getServletContext();
            RequestDispatcher dispatcher = context.getRequestDispatcher("/error.jsp");
            dispatcher.forward(request, response);
        }
        
        ServletContext context = getServletContext();
        RequestDispatcher dispatcher = context.getRequestDispatcher("/index.jsp");
        dispatcher.forward(request, response);
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
