/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.users;

import Model.library.Book;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Apergot
 */
public class User {
    
    String username;
    public List<Book> purchasedBooks;
    
    public User (String username) {
        this.username = username;
        this.purchasedBooks = new ArrayList<>();
        //TODO:Get from db purchasedbooks
    }
    
    public String getUsername () {
        return this.username;
    }
    
    public void addPurchasedBooks(List<Book> booksToAdd) {
        //TODO: should add books to db referencing user to make it persistent
        this.purchasedBooks.addAll(booksToAdd);
    }
    
    public boolean checkIfPurchased(Book book) {
        for (Book purchasedBook : this.purchasedBooks) {
            if (purchasedBook.getId() == book.getId()) {
                return true;
            }
        }
        return false;
    }
    
}
