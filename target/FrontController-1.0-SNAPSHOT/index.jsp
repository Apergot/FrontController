<%-- 
    Document   : index
    Created on : 13 mar. 2020, 9:50:53
    Author     : Apergot
--%>

<%@page import="Model.library.BookShelfImp"%>
<%@page import="Model.library.Book"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js" integrity="sha384-6khuMg9gaYr5AxOqhkVIODVIvm9ynTT5J4V1cfthmT+emCG6yVmEZsRHdxlotUnm" crossorigin="anonymous"></script>
    </head>
    <body>
        <div id="page-container">
            <div id="content-wrap">
                <jsp:include page="./components/header.jsp"/>
                <div class="container">
                    <div class="row">
                        <%
                            BookShelfImp bookshelf = new BookShelfImp();
                            for (int i = 0; i < bookshelf.books.size(); i++) {
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
                                        <% if (session.getAttribute("user") != null) {%>
                                        <form action="FrontControllerServlet">
                                            <input style="display:none;" name="id" value="<%= bookshelf.books.get(i).getId()%>">
                                            <button class="btn btn-danger mt-3" name="command" value="addtocart">Add to cart</button>
                                        </form>
                                        <%} else {%>
                                        <button class="btn btn-danger mt-3" disabled data-toggle="tooltip" data-placement="bottom" title="You need to log in first">Add to cart</button>
                                        <%}%>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%
                            }
                        %>

                    </div>
                </div>
                <jsp:include page="./components/footer.jsp"/>
            </div>

        </div>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    </body>
</html>
