<%-- 
    Document   : bookdetail
    Created on : 27 mar. 2020, 15:00:46
    Author     : Apergot
--%>

<%@page import="Model.library.BookShelfImp"%>
<%@page import="Model.library.Book"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  
    BookShelfImp bookshelf = new BookShelfImp();
    Book book = bookshelf.getBookById(Integer.parseInt(request.getParameter("id")));
%>
<jsp:include page="./components/header.jsp"/>
<div class="container">
    <div class="card">
        <div class="container-fliud">
            <div class="row">
                <div class="col-md-6 text-center">
                    <img src="./assets/img/bookimg.jfif">
                </div>
                <div class="col-md-6">
                    <h3 class="product-title"><%= book.getTitle()%></h3>
                    <div class="rating">
                        <div class="stars">
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star checked"></span>
                            <span class="fa fa-star"></span>
                            <span class="fa fa-star"></span>
                        </div>
                        <span class="review-no">41 reviews</span>
                    </div>
                    <p class="product-description">Suspendisse quos? Tempus cras iure temporibus? Eu laudantium cubilia sem sem! Repudiandae et! Massa senectus enim minim sociosqu delectus posuere.</p>
                    <h4 class="price">current price: <span>$<%= book.getPrice()%></span></h4>
                    <p class="vote"><strong>91%</strong> of buyers enjoyed this product! <strong>(87 votes)</strong></p>
                    <div class="action">
                        <% if (session.getAttribute("user") != null) {%>
                        <form action="FrontControllerServlet">
                            <input style="display:none;" name="id" value="<%= book.getId()%>">
                            <button class="btn btn-danger mt-3" name="command" value="addtocart">Add to cart</button>
                        </form>
                        <button class="btn btn-danger mt-3"><span class="fa fa-heart"></span></button>    
                            <%} else {%>
                        <button class="btn btn-danger mt-3" disabled data-toggle="tooltip" data-placement="bottom" title="You need to log in first">Add to cart</button>
                        <button class="btn btn-danger mt-3" disabled data-toggle="tooltip" data-placement="bottom" title="You need to log in first"><span class="fa fa-heart"></span></button>
                            <%}%>
                    </div>
                </div>
            </div>
        </div>
    </div>
 
</div>
<jsp:include page="./components/footer.jsp"/>
