<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Address Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #000;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        form {
            background-color: #fff;
            border-radius: 5px;
            padding: 20px;
            width: 300px;
            text-align: center;
            box-shadow: 0 0 10px rgba(255, 255, 255, 0.1);
        }
        input[type="text"], input[type="email"], input[type="number"] {
            width: 90%;
            padding: 7px;
            margin: 5px 0;
            border: 1px solid #000;
            border-radius: 5px;
        }
        input[type="submit"] {
            background-color: #000;
            border: none;
            border-radius: 5px;
            color: #fff;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
        }
        input[type="submit"]:hover {
            background-color: #333;
        }
    </style>
</head>
<body>
    <form action="saveaddress" method="post">
        <h2 style="color: #000;">Enter Your Details</h2>
        <input type="text" name="name" placeholder="Name" required><br>
        <input type="email" name="email" placeholder="Email" required><br>
        <input type="number" name="contact" placeholder="Contact" required><br>
        <input type="text" name="address" placeholder="Address" required><br>
        <input type="text" name="city" placeholder="City" required><br>
        <input type="text" name="pincode" placeholder="Pincode" required><br>
        
        <input type="hidden" name="price" value="${price}">
        <input type="hidden" name="productName" value="${productName}">
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
