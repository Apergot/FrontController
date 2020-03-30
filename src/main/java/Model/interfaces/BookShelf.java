/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.interfaces;

import Model.library.Book;
import java.util.List;

/**
 *
 * @author Apergot
 */
public interface BookShelf {
    void add(Book book);
    List<Book> findByTitle(String title);
}
