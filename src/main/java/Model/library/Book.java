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

    public Book(String author, String title, double price, int stock) {
        this.author = author;
        this.title = title;
        this.price = price;
        this.stock = stock;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }
}