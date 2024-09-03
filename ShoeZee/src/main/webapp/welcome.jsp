welcome.jsp

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product Purchase Page</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #000; /* Black background */
        color: #fff; /* White text */
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
    }
    .container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        margin-top: 5px;
    }
    .subcontainer {
        background-color: #000; /* Black background */
        border: 1px solid #fff; /* White border */
        border-radius: 2px;
        box-shadow: 0 0 5px rgba(255, 255, 255, 0.1);
        margin: 5px;
        padding: 30px;
        width: 250px;
        text-align: center;
    }
    .subcontainer img {
        border-radius: 5px;
        margin-bottom: 3px;
        width: 100%;
        height: auto;
        object-fit: cover; /* Maintain aspect ratio */
    }
    .subcontainer div {
        margin-bottom: 5px;
        color: #fff; /* White text */
    }
    .subcontainer input[type="submit"] {
        background-color: #000; /* Black background */
        border: none;
        border-radius: 5px;
        color: #fff; /* White text */
        padding: 10px;
        cursor: pointer;
        font-size: 14px;
    }
    .subcontainer input[type="submit"]:hover {
        background-color: #222; /* Darker black background on hover */
    }
    .header {
        background-color: #000; /* Black background */
        color: #fff; /* White text */
        padding: 10px 20px;
        text-align: center;
        width: 100%;
        box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <div class="header">
        <h1>Welcome to the Product Purchase Page</h1>
    </div>
    
    <hr>

    <%
    Map<Integer, Object[]> p = Map.of(1, new Object[] { "Nike Air Force 1", 13000 }, 2, new Object[] { "Nike Mars Yard", 12500 }, 3,
            new Object[] { "Nike Hitop Dunk", 14500 }, 4, new Object[] { "Nike What The Dunk", 22000 }, 5, new Object[] { "Chanel low trainers", 24000 }, 6,
            new Object[] { "Nike Back To Future", 26000 }
    );
    %>

    <div class="container">
        <%
        for (int i = 1; i <= 6; i++) {
        %>
        <div class="subcontainer">
            <form action="address" method="post">
                <div>
                    <img src="images/a (<%=i%>).jpg" height="100" width="130">
                    <br>
                    <span style="color:#fff"> <%=p.get(i)[0]%></span><br>
                    <span style="color:#fff">Rs.<%=p.get(i)[1]%></span><br>
                </div>
                <div>
                    <input type="hidden" name="t1" value="${name}"/>
                    <input type="hidden" name="t2" value="${email}"/>
                    <input type="hidden" name="t3" value="${contact}"/>
                    <input type="hidden" name="t4" value="<%=p.get(i)[1]%>"/>
                    <input type="hidden" name="t5" value="<%=p.get(i)[0]%>"/>
                    <input type="submit" value="Buy Now"/>
                </div>
            </form>
        </div>
        <%
        }
        %>
    </div>
</body>
</html>