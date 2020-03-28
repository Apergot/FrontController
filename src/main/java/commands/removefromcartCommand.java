/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commands;

import Controller.FrontCommand;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;
import session.Cart;

/**
 *
 * @author Apergot
 */
public class removefromcartCommand extends FrontCommand{

    @Override
    public void process() throws ServletException, IOException {
        try {
            HttpSession session = request.getSession();
            Cart userCart = (Cart)session.getAttribute("cart");
            userCart.removeFromCart(Integer.parseInt(request.getParameter("id")));
            session.setAttribute("cart", userCart);
            forward("usercart");
        } catch (Exception ex) {
            try {
                forward("error");
            } catch (ServletException | IOException ex1) {
                Logger.getLogger(removefromcartCommand.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
    
}
