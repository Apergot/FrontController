/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package commands;

import Controller.FrontCommand;
import Model.library.Book;
import Model.library.BookShelfImp;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Apergot
 */
public class searchCommand extends FrontCommand {

    @Override
    public void process() throws ServletException, IOException {
        try {
            BookShelfImp bookshelf = new BookShelfImp();
            List<Book> books = bookshelf.findByTitle(request.getParameter("title"));
            if (books.size() > 0) {
                HttpSession session = request.getSession();
                session.setAttribute("books", books);
                forward("book-found");
            } else {
                forward("book-not-found");
            }
        } catch (ServletException | IOException ex) {
            try {
                forward("error");
            } catch (ServletException | IOException ex1) {
                Logger.getLogger(searchCommand.class.getName()).log(Level.SEVERE, null, ex1);
            }
        }
    }
}
