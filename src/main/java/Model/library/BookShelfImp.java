/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.library;

import Model.interfaces.BookShelf;
import Model.users.User;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Apergot
 */
public class BookShelfImp implements BookShelf{
    
    public List<Book> books;

    public BookShelfImp() {
        this.books = new ArrayList();
        add(new Book(1,"Wilson, Robert Anton & Shea, Robert", 
          "Illuminati", 9.99, 15));
        add(new Book(2,"Fowler, Martin", 
          "Patterns of Enterprise Application Architecture", 27.88, 16));
        add(new Book(3,"J.K. Rowling", 
          "Harry Potter y la piedra filosofal", 24.33, 53));
        add(new Book(4,"Laura Gallego", 
          "Memorias de Idhún", 19.99, 32));
        add(new Book(5,"J.K. Rowling", 
          "Harry Potter y la cámara secreta", 9.99, 15));
        add(new Book(6, "J.K. Rowling", 
          "Harry Potter y el prisionero de azkaban", 27.88, 16));
        add(new Book(7, "J.K. Rowling", 
          "Harry Potter y el cáliz de fuego", 24.33, 53));
        add(new Book(8, "Christopher Paolini", 
          "Eragon", 19.99, 32));
        add(new Book(9, "Christopher Paolini", 
          "Eldest", 19.99, 32));
        add(new Book(10, "Christopher Paolini", 
          "Brisingr", 9.99, 15));
        add(new Book(11, "Christopher Paolini", 
          "El legado", 27.88, 16));
        add(new Book(12, "J.K. Rowling", 
          "Harry Potter y la orden del fénix", 24.33, 53));
        add(new Book(13, "J.K. Rowling", 
          "Harry Potter y el príncipe mestizo", 19.99, 32));
    }

    @Override
    public void add(Book book) {
        this.books.add(book);
    }

    @Override
    public Book findByTitle(String title) {
        for (Book e : this.books) {
            if (e.getTitle().equals(title)) {
                return e;
            }
        }
        return null;
    }
    
    public Book getBookById(int id) {
        for (Book book : this.books) {
            if (book.getId() == id) {
                return book;
            }
        }
        return null;
    }
    
    public boolean checkIfPurchased(User user, Book book) {
        if (user.purchasedBooks.contains(book)) {
            return true;
        }
        return false;
    }
}
