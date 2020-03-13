/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import Model.library.Book;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Apergot
 */
public class Cart {
    
    List<Book> content;

    public Cart() {
        this.content = new ArrayList<>();
    }
    
    public boolean addToCart(Book book){
        if (!content.contains(book)) {
            content.add(book);
            return true;
        }
        System.out.println("Books is already at the cart");
        return false;
    }
    
    public boolean removeFromCart(Book book){
        if(content.contains(book)) {
            content.add(book);
            return true;
        }
        System.out.println("Book is not at the cart!");
        return false;
    }
    
    

}
