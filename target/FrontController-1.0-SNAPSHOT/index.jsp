<%-- 
    Document   : index
    Created on : 13 mar. 2020, 9:50:53
    Author     : Apergot
--%>

<%@page import="Model.users.User"%>
<%@page import="Model.library.BookShelfImp"%>
<%@page import="Model.library.Book"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="./components/header.jsp"/>
<div class="container">
    
    <%if (session.getAttribute("bought") == "done") {%>
    <jsp:include page="./components/success-alert.jsp"/>
    <%
        session.setAttribute("bought", "no");
    }
    %>
    <div class="row">
        <%
            BookShelfImp bookshelf = new BookShelfImp();
            if (session.getAttribute("user") != null) {
                User user = (User) session.getAttribute("user");
                for (int i = 0; i < bookshelf.books.size(); i++) {
                    if (!user.checkIfPurchased(bookshelf.books.get(i))) {
        %>
        <div class="col-12 col-sm-8 col-md-6 col-lg-4 d-flex align-items-stretch">
            <div class="card">
                <div class="text-center">
                    <img class="img-fluid img-thumbnail custom-img-card" src="./assets/img/bookimg.jfif" alt="book">
                </div>
                <div class="card-body">
                    <a href="bookdetail.jsp?id=<%= bookshelf.books.get(i).getId()%>">
                        <h4 class="card-title"><%= bookshelf.books.get(i).getTitle()%></h4>
                    </a>
                    <h6 class="card-subtitle mb-2 text-muted"><%= bookshelf.books.get(i).getAuthor()%></h6>
                    <p class="card-text">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. In, nemo, magni autem adipisci architecto unde</p>
                    <div class="buy d-flex justify-content-between align-items-center">
                        <div class="price text-success"><h5 class="mt-4">$<%= bookshelf.books.get(i).getPrice()%></h5></div>
                        <form action="FrontControllerServlet">
                            <input style="display:none;" name="id" value="<%= bookshelf.books.get(i).getId()%>">
                            <button class="btn btn-danger mt-3" name="command" value="addtocart">Add to cart</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%          }
            }
        } else {
            for (int i = 0; i < bookshelf.books.size(); i++) {
        %>
        <div class="col-12 col-sm-8 col-md-6 col-lg-4 d-flex align-items-stretch">
            <div class="card">
                <div class="text-center">
                    <img class="img-fluid img-thumbnail " src="./assets/img/bookimg.jfif" alt="book">
                </div>
                <div class="card-body">
                    <a href="bookdetail.jsp?id=<%= bookshelf.books.get(i).getId()%>">
                        <h4 class="card-title"><%= bookshelf.books.get(i).getTitle()%></h4>
                    </a>
                    <h6 class="card-subtitle mb-2 text-muted"><%= bookshelf.books.get(i).getAuthor()%></h6>
                    <p class="card-text">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. In, nemo, magni autem adipisci architecto unde</p>
                    <div class="buy d-flex justify-content-between align-items-center">
                        <div class="price text-success"><h5 class="mt-4">$<%= bookshelf.books.get(i).getPrice()%></h5></div>
                        <button class="btn btn-danger mt-3" disabled data-toggle="tooltip" data-placement="bottom" title="You need to log in first">Add to cart</button>
                    </div>
                </div>
            </div>
        </div>
        <%
                }
            }
        %>
    </div>
</div>
<jsp:include page="./components/footer.jsp"/>

