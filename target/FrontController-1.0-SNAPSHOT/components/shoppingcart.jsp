<%-- 
    Document   : shoppingcart
    Created on : 26 mar. 2020, 9:40:45
    Author     : Apergot
--%>
<%@page import="java.util.List"%>
<%@page import="session.Cart"%>
<%@page import="Model.library.Book"%>
<div class="card shopping-cart">
            <div class="card-header bg-dark text-light">
                <i class="fa fa-shopping-cart" aria-hidden="true"></i>
                Shopping cart
                <a href="index.jsp" class="btn btn-outline-info btn-sm pull-right">Continue shopping</a>
                <div class="clearfix"></div>
            </div>
            <div class="card-body">
                
                <%
                    Cart cart = (Cart)session.getAttribute("cart");
                    List<Book> booksToBuy = cart.getBooksToBuy();
                    double totalPrice= 0.0;
                    if (booksToBuy.size()== 0) {
                %>
                    <p>Not items added to the cart already</p>
                <%
                    } else {
                        for (int i = 0; i < booksToBuy.size(); i++) {
                            totalPrice += booksToBuy.get(i).getPrice();
                %>     
                        <div class="row">
                        <div class="col-12 col-sm-12 col-md-2 text-center">
                                <img class="img-responsive" src="http://placehold.it/120x80" alt="prewiew" width="120" height="80">
                        </div>
                        <div class="col-12 text-sm-center col-sm-12 text-md-left col-md-6">
                            <h4 class="product-name"><strong><%= booksToBuy.get(i).getTitle()%></strong></h4>
                            <h4>
                                <small><%= booksToBuy.get(i).getAuthor()%></small>
                            </h4>
                        </div>
                        <div class="col-12 col-sm-12 text-sm-center col-md-4 text-md-right row">
                            <div class="col-3 col-sm-3 col-md-6 text-md-right" style="padding-top: 5px">
                                <h6>Precio <strong><%= booksToBuy.get(i).getPrice()%> <span class="text-muted">$</span></strong></h6>
                            </div>
                            <div class="col-6 col-sm-6 col-md-6 text-right">
                                <form action="FrontControllerServlet">
                                    <input style="display:none" name="id" value="<%= booksToBuy.get(i).getId()%>">
                                    <button class="btn btn-outline-danger btn-xs" name="command" value="removefromcart">
                                        <i class="fa fa-trash" aria-hidden="true"></i>
                                    </button>
                                </form>
                            </div>
                        </div>
                    </div>
                    <hr>
                <%
                        }
                    }
                %>
                <div class="pull-right">
                    <a href="usercart.jsp" class="btn btn-outline-secondary pull-right">
                        Update shopping cart
                    </a>
                </div>
            </div>
            <div class="card-footer">
                <div class="pull-right" style="margin: 10px">
                    <a href="" class="btn btn-success pull-right">Checkout</a>
                    <div class="pull-right" style="margin: 10px">
                        Total price: <b><%= Math.round(totalPrice*100.0)/100.0%></b>
                    </div>
                </div>
            </div>
        </div>