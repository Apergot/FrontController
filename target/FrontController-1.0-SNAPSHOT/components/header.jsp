<%-- 
    Document   : header
    Created on : 13 mar. 2020, 10:00:08
    Author     : Apergot
--%>

<%@page import="Model.users.User"%>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.jsp">
        <img src="${pageContext.request.contextPath}/assets/img/logo.png" alt="logo" style="width: 110px;">
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <%
                if (session.getAttribute("user") != null) {
            %>
            <li class="nav-item">
                <a class="nav-link" href="usercart.jsp">Your cart</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="purchased.jsp">Purchased Books</a>
            </li>
            <%    
                }
            %>
            
        </ul>
        <form class="form-inline my-2 my-lg-0" action="FrontControllerServlet">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="title">
            <button class="btn btn-outline-success my-2 my-sm-0 mr-sm-4" name="command" value="search">Search</button>
        </form>
        
        <%
            if (session.getAttribute("user") != null) {
                User user = (User)session.getAttribute("user");
                String username = user.getUsername();
        %>
        <button class="btn btn-outline-secondary my-2 my-sm-0 mr-sm-2" disabled><%= username%></button>
            <form action="FrontControllerServlet">
                <input style="display:none;" name="op" value="logout"/>
                <button type="submit" class="btn btn-info my-2 my-sm-0 mr-sm-2" name="command" value="control">Log Out</button>
            </form>
        <%        
            } else {    
        %>
        <form action="/FrontController/login.jsp">
            <button class="btn btn-info my-2 my-sm-0 mr-sm-2">Log In</button>
        </form>
        <form action="/FrontController/register.jsp">
            <button class="btn btn-info my-2 my-sm-0 mr-sm-2">Register</button>
        </form>
        <%
            }
        %>
    </div>
</nav>
