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

/**
 *
 * @author Apergot
 */
public class logoutCommand extends FrontCommand{
    
    @Override
    public void process() throws ServletException, IOException {
        try {
            request.getRequestDispatcher("SessionInitializer").forward(request, response);
        } catch (ServletException | IOException ex) {
            try {
                forward("/unknown.jsp");
            } catch (ServletException | IOException ex1) {
                Logger.getLogger(loginCommand.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
    
}
