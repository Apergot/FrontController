<%-- 
    Document   : success-alert
    Created on : 29 mar. 2020, 13:44:07
    Author     : Apergot
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div id="success-alert" class="alert alert-success text-center" role="alert">
    Action completed successfully! <i class="fa fa-check-circle" aria-hidden="true"></i>
</div>
<script>
    $("#success-alert").fadeTo(2000, 500).slideUp(500, function(){
    $("#success-alert").slideUp(500);
});
</script>


