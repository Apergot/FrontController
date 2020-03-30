<%-- 
    Document   : index
    Created on : 13 mar. 2020, 9:50:53
    Author     : Apergot
--%>
<%@page import="java.util.List"%>
<%@page import="Model.library.Book"%>
<jsp:include page="./components/header.jsp"/>
<%
    List<Book> books = (List<Book>)session.getAttribute("books");%>
    <div class="container">
    <div class="row">
        <div class="col-12">
            <h6 class="text-muted text-center">Your purchased books</h6> 
            <ul class="list-group">
                <%
                           for (int i = 0; i < books.size(); i++) {%>
                <li class="list-group-item d-flex justify-content-between align-items-center">  
                    <div>
                        
                    <a href="bookdetail.jsp?id=<%=books.get(i).getId()%>">
                        <p><%= books.get(i).getTitle()%></p>
                    </a>
                        <p><%= books.get(i).getAuthor()%></p>
                    </div>
                    <div class="image-parent">
                        <img src="./assets/img/bookimg.jfif" class="img-fluid" alt="bookImg">
                    </div>    
                </li>
                <%   }%>
            </ul>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp"/>
