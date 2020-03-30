/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commands;

import Controller.FrontCommand;
import Model.library.Book;
import Model.users.User;
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
public class buyCommand extends FrontCommand{

    @Override
    public void process() throws ServletException, IOException {
         try {
            /*TODO: At this point we would like to make the payment someway*/
            HttpSession session = request.getSession();
            User user = (User)session.getAttribute("user");
            Cart cart = (Cart)session.getAttribute("cart");
            user.addPurchasedBooks(cart.getBooksToBuy());
            cart.empty();
             for (Book purchasedBook : user.purchasedBooks) {
                 System.out.println(purchasedBook.getTitle());
             }
            session.setAttribute("cart", cart);
            session.setAttribute("user", user);
            session.setAttribute("bought", "done");
            forward("usercart");
        } catch (Exception ex) {
            try {
                forward("error");
            } catch (ServletException | IOException ex1) {
                Logger.getLogger(buyCommand.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
    
}
