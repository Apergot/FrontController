/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import Model.library.Book;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Apergot
 */
public class Cart {
    
    List<Book> booksToBuy;
    
    public Cart() {
        this.booksToBuy = new ArrayList<>();
        this.booksToBuy.add(new Book("Wilson, Robert Anton & Shea, Robert", 
          "illuminati", 9.99, 15));
        this.booksToBuy.add(new Book("Fowler, Martin", 
          "patterns of enterprise application architecture", 27.88, 16));
        this.booksToBuy.add(new Book("J.K. Rowling", 
          "harry potter y la piedra filosofal", 24.33, 53));
    }
    
    public boolean addToCart(Book book) {
        this.booksToBuy.add(book);
        return this.booksToBuy.contains(book);
    }
    
    public boolean removeFromCart(Book book) {
        this.booksToBuy.remove(book);
        return !this.booksToBuy.contains(book);
    }
    
    public List<Book> getBooksToBuy () {
        return this.booksToBuy;
    }
    
    public double getCartWholeCost() {
        double result = 0.0;
        for (Book b : this.booksToBuy) {
            result += b.getPrice();
        }
        return result;
    }
}
