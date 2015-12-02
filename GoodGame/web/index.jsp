<%-- 
    Document   : test
    Created on : Nov 30, 2015, 3:55:08 PM
    Author     : hen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="header.jspf" %>
    </head>
    <body>
        <div class="container">
            <br />
            <h1>GoodGame.store</h1>
            <form action="./search.jsp" method="POST">
                <label for="searchInput">Search</label>
                <input class="u-full-width" type="text" placeholder="Fallout 4, The Sims 3 ..." name="searchInput" id="searchInput">
                <input class="button-primary" type="submit" value="Let's Play!">
            </form>
        </div>
    </body>
</html>
