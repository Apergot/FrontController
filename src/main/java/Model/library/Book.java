/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model.library;

/**
 *
 * @author Apergot
 */
public class Book {
    private String author;
    private String title;
    private double price;
    private int stock;
    private final int id;

    public Book(int id, String author, String title, double price, int stock) {
        this.id = id;
        this.author = author;
        this.title = title;
        this.price = price;
        this.stock = stock;
    }

    public int getId() {
        return id;
    }

    public String getAuthor() {
        return author;
    }

    public String getTitle() {
        return title;
    }

    public int getStock() {
        return stock;
    }
    
    public void setStock(int stock){
        this.stock = stock;
    }
    
    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}
