<%-- 
    Document   : purchased
    Created on : 28 mar. 2020, 17:39:50
    Author     : Apergot
--%>

<%@page import="Model.users.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="./styles.css">
        <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    </head>
    <body>
        <div id="page-container">
            <div id="content-wrap">
                <jsp:include page="./components/header.jsp"/>
                <%
                    User user = (User)session.getAttribute("user");
                %>
                <div class="container">
                <div class="row">
                  <div class="col-12">
                    <% if (user.purchasedBooks.size() != 0) {%>
                    <h6 class="text-muted text-center">Your purchased books</h6> 
                    <ul class="list-group">
                       <%
                            for (int i = 0; i < user.purchasedBooks.size(); i++) {%>
                                <li class="list-group-item d-flex justify-content-between align-items-center">  
                                    <div>
                                        <p><%= user.purchasedBooks.get(i).getTitle()%></p>
                                        <p><%= user.purchasedBooks.get(i).getAuthor()%></p>
                                    </div>
                                    <div class="image-parent">
                                        <img src="./assets/img/bookimg.jfif" class="img-fluid" alt="bookImg">
                                    </div>    
                                </li>
                       <%   }%>
                    </ul>
                  </div>
                </div>
                <%} else {%>
                    <h6 class="text-muted text-center">You haven't purchased anything already</h6> 
                <%}%>
              </div>
                <jsp:include page="./components/footer.jsp"/>
            </div>
        </div>
    </body>
</html>
