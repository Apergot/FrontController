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
public class controlCommand extends FrontCommand{
    @Override
    public void process() throws ServletException, IOException {
        try {
            request.getRequestDispatcher("SessionInitializer").forward(request, response);
        } catch (Exception ex) {
            try {
                forward("error");
            } catch (ServletException | IOException ex1) {
                Logger.getLogger(controlCommand.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
}
