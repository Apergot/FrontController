package commands;

import Controller.FrontCommand;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Apergot
 */
public class loginCommand extends FrontCommand{

    @Override
    public void process() throws ServletException, IOException {
        try {
            forward("login");
        } catch (ServletException | IOException ex) {
            try {
                forward("error");
            } catch (ServletException | IOException ex1) {
                Logger.getLogger(loginCommand.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
    
}
