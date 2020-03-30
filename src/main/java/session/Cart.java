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
    }
    
    public boolean addToCart(Book book) {
        this.booksToBuy.add(book);
        return this.booksToBuy.contains(book);
    }
    
    public void removeFromCart(int id) {
        Book bookToRemove = null;
        for (Book book : this.booksToBuy) {
            if (book.getId() == id) {
                bookToRemove = book;
            }
        }
        this.booksToBuy.remove(bookToRemove);
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
    
    public boolean checkIfAlreadyAtTheCartById(int id) {
        for (Book book : this.booksToBuy) {
            if (book.getId() == id) {
                return true;
            }
        }
        return false;
    }
    
    public void empty() {
        this.booksToBuy.clear();
    }
}
