<%-- 
    Document   : index
    Created on : 13 mar. 2020, 9:50:53
    Author     : Apergot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="./components/header.jsp"/>
<div class="wrapper fadeInDown">
    <div id="formContent">
        <div class="fadeIn first">
            <img src="./assets/img/user.png" id="icon" alt="User Icon" />
        </div>
        <form action="FrontControllerServlet">
            <input style="display:none" name="op" value="register">
            <input type="email" id="login" class="fadeIn second" name="name" placeholder="E-mail">
            <input type="password" id="password" class="fadeIn third" name="login" placeholder="Password">
            <input type="password" id="password" class="fadeIn third" name="login" placeholder="Confirm password">
            <input type="submit" class="fadeIn fourth" name="command" value="control">
        </form>
        <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
        </div>
    </div>
</div>
<jsp:include page="./components/footer.jsp"/>
