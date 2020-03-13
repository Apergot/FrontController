/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.library;

import Model.interfaces.BookShelf;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Apergot
 */
public class BookShelfImp implements BookShelf{
    
    private List<Book> books;

    public BookShelfImp() {
        this.books = new ArrayList();
        add(new Book("Wilson, Robert Anton & Shea, Robert", 
          "illuminati", 9.99, 15));
        add(new Book("Fowler, Martin", 
          "patterns of enterprise application architecture", 27.88, 16));
        add(new Book("J.K. Rowling", 
          "harry potter y la piedra filosofal", 24.33, 53));
        add(new Book("Christopher Paolini", 
          "eragon", 19.99, 32));
        add(new Book("", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
        add(new Book("Fowler, Martin", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
        add(new Book("Wilson, Robert Anton & Shea, Robert", 
          "Illuminati", 9.99, 15));
        add(new Book("Fowler, Martin", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
        add(new Book("Fowler, Martin", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
        add(new Book("Wilson, Robert Anton & Shea, Robert", 
          "Illuminati", 9.99, 15));
        add(new Book("Fowler, Martin", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
        add(new Book("Fowler, Martin", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
    }

    @Override
    public BookShelf getInstance() {
        return this;
    }

    @Override
    public void add(Book book) {
        this.books.add(book);
    }

    @Override
    public Book findByTitle(String title) {
        System.out.println(title);
        for (Book e : this.books) {
            if (e.getTitle().equals(title)) {
                return e;
            }
        }
        return null;
    }
    
}
