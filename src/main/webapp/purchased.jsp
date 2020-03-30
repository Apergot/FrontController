<%-- 
    Document   : purchased
    Created on : 28 mar. 2020, 17:39:50
    Author     : Apergot
--%>

<%@page import="Model.users.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="./components/header.jsp"/>
<%
    User user = (User) session.getAttribute("user");
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
