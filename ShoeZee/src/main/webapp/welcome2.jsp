
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Purchase Shoes - Shoezee</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #000;
        color: #fff;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }
    .payment-form {
        background-color: #fff;
        border: 1px solid #000;
        border-radius: 10px;
        box-shadow: 0 0 15px rgba(255, 255, 255, 0.2);
        padding: 20px;
        text-align: center;
        width: 300px;
    }
    .payment-form img {
        border-radius: 10px;
        margin-bottom: 20px;
    }
    .payment-form h1 {
        color: #000;
        margin-bottom: 20px;
    }
</style>
</head>
<body>
    <div class="payment-form">
        <img src="images/s.jpg" alt="Shoezee Logo" height="100" width="100">
        <h1>Complete Your Purchase</h1>
        <form action="second" method="POST">
            <script
                src="https://checkout.razorpay.com/v1/checkout.js"
                data-key="rzp_test_m8Ts2ANbu9AjRp"
                data-amount=${amount}
                data-currency="INR"
                data-order_id=${id}
                data-buttontext="Pay with Razorpay"
                data-name="Shoezee"
                data-description="Shoe Mart"
                data-image="https://example.com/your_logo.jpg"
                data-prefill.name=${name}
                data-prefill.email=${email}
                data-theme.color="#F37254"
            ></script>
            <input type="hidden" custom="Hidden Element" name="hidden"/>
        </form>
    </div>
</body>
</html>