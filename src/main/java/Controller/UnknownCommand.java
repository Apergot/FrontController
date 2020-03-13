/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;

/**
 *
 * @author Apergot
 */
public class UnknownCommand extends FrontCommand {

    public UnknownCommand() {
    }

    @Override
    public void process() throws ServletException, IOException {
        RequestDispatcher dispatcher = context.getRequestDispatcher("/jsp/error.jsp");
        dispatcher.forward(request, response);
    }
    
}
