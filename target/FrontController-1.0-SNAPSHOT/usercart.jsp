<%-- 
    Document   : index
    Created on : 13 mar. 2020, 9:50:53
    Author     : Apergot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:include page="./components/header.jsp"/>
<div class="container">
    <%if (session.getAttribute("bought") == "done") {%>
    <jsp:include page="./components/success-alert.jsp"/>
    <%
        session.setAttribute("bought", "no");
    }
    %>
    <% if (session.getAttribute("user") != null) { %>
    <jsp:include page="./components/shoppingcart.jsp"/>     
    <% }%>
</div>
<jsp:include page="./components/footer.jsp"/>