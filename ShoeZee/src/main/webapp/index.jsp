

<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge" />
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
  <title>Shoezee</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-color: #000;
      color: #fff;
    }

    .header_section {
      background-color: #000;
      color: #fff;
      padding: 15px 0;
      display: flex;
      justify-content: space-between;
      align-items: center;
      position: fixed;
      top: 0;
      width: 100%;
      z-index: 1000;
    }

    .logo {
      display: flex;
      align-items: center;
      margin-left: 20px;
    }

    .logo img {
      height: 70px;
    }

    .navbar-brand {
      font-size: 24px;
      font-weight: bold;
      text-align: center;
      flex-grow: 1;
      position: absolute;
      left: 50%;
      transform: translateX(-50%);
    }

    .contact_nav {
      display: flex;
      flex-direction: column;
      align-items: flex-end;
      margin-right: 20px;
    }

    .contact_nav a {
      color: #fff;
      text-decoration: none;
      margin-top: 10px;
      transition: color 0.3s;
    }

    .contact_nav a:hover {
      color: #ccc;
    }

    .contact_nav form {
      display: flex;
      align-items: center;
    }

    .contact_nav input[type="text"],
    .contact_nav input[type="password"] {
      padding: 5px;
      margin-right: 5px;
      border: 1px solid #ccc;
      border-radius: 3px;
      background-color: #333;
      color: #fff;
    }

    .contact_nav input[type="submit"] {
      background-color: #555;
      color: #fff;
      border: none;
      padding: 5px 10px;
      font-size: 14px;
      border-radius: 3px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .contact_nav input[type="submit"]:hover {
      background-color: #777;
    }

    .hero_area {
      padding: 100px 0 50px;
      text-align: center;
    }

    .registration_form {
      background-color: #333;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0px 0px 10px rgba(255, 255, 255, 0.1);
      width: 80%;
      max-width: 600px;
      margin: 50px auto;
      animation: fade-in 1s ease-in-out;
    }

    @keyframes fade-in {
      from {
        opacity: 0;
      }

      to {
        opacity: 1;
      }
    }

    .registration_form table {
      width: 100%;
    }

    .registration_form input[type="text"],
    .registration_form input[type="password"] {
      width: 100%;
      padding: 10px;
      margin: 5px 0;
      border: 1px solid #555;
      border-radius: 5px;
      box-sizing: border-box;
      background-color: #444;
      color: #fff;
      transition: border-color 0.3s;
    }

    .registration_form input[type="text"]:focus,
    .registration_form input[type="password"]:focus {
      border-color: #777;
    }

    .registration_form input[type="submit"] {
      background-color: #555;
      color: #fff;
      border: none;
      padding: 10px 20px;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
      transition: background-color 0.3s;
    }

    .registration_form input[type="submit"]:hover {
      background-color: #777;
    }

    .slogan-container {
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 150px 0 50px;
    }

    .quote-carousel {
      width: 30%;
      max-width: 400px;
      text-align: left;
    }

    .quote-carousel-inner {
      position: relative;
      height: 100px;
      overflow: hidden;
    }

    .quote-slide {
      position: absolute;
      width: 100%;
      opacity: 0;
      transition: opacity 1s;
    }

    .quote-slide.active {
      opacity: 1;
    }

    .quote-slide p {
      font-size100%px;
      line-height: 1.4;
    }

    .carousel {
      width: 40%;
      max-width: 1800px;
    }

    .carousel-inner {
      display: flex;
      justify-content: center;
    }

    .carousel img {
  width: 700px; /* Decrease image size */
  height: 100%;
  position: relative; /* Absolute positioning for better control */
  right: 10%; /* Shift the image slightly to the left */
}


    .slogan {
      text-align: left;
      width: 20%;
      max-width: 500px;
    }

    .slogan h1 {
      margin: 0;
      font-size: 60px;
      color: #fff;
    }

    .slogan h2 {
      margin: 0;
      font-size: 24px;
      color: #fff;
    }
  </style>
</head>

<body>

  <div class="hero_area">
    <header class="header_section">
      <div class="logo">
        <img src="images/s.jpg" alt="Shoezee Logo">
      </div>
      <div class="navbar-brand">
        Shoezee
      </div>
      <div class="contact_nav">
        <form action="login" method="post">
          <input type="text" placeholder="Username" name="t1" />
          <input type="password" placeholder="Password" name="t2" />
          <input type="submit" value="Login">
        </form>
        <a href="#registration">New User?</a>
      </div>
    </header>

    <div class="slogan-container">
      <div class="quote-carousel">
        <div class="quote-carousel-inner">
          <div class="quote-slide active">
            <p>"Good shoes take you good places."<br>- Seo Min Hyun</p>
          </div>
          <div class="quote-slide">
            <p>"Give a girl the right shoes, and she can conquer the world."<br>- Marilyn Monroe</p>
          </div>
          <div class="quote-slide">
            <p>"The shoe that fits one person pinches another; there is no recipe for living that suits all cases."<br>- Carl Jung</p>
          </div>
          <div class="quote-slide">
            <p>"Keep your head, heels and standards high."<br>- Coco Chanel</p>
          </div>
        </div>
      </div>

      <div class="carousel">
        <div class="carousel-inner">
          <img src="images/b2.png" alt="Image 1">
        </div>
      </div>

      <div class="slogan">
        <h1>Solemates</h1>
        <h2>for</h2>
        <h1>life!</h1>
      </div>
    </div>

    <div class="container registration_form" id="registration">
      <form action="registration" method="post">
        <h2>Sign Up</h2>
        <table>
          <tr>
            <td>Name:</td>
            <td><input type="text" name="t1"></td>
          </tr>
          <tr>
            <td>Mobile Number:</td>
            <td><input type="text" name="t2"></td>
          </tr>
          <tr>
            <td>Email id:</td>
            <td><input type="text" name="t3"></td>
          </tr>
          <tr>
            <td>Password:</td>
            <td><input type="password" name="t4"></td>
          </tr>
          <tr>
            <td colspan="2" style="text-align: center;">
              <input type="submit" value="Sign up Now">
            </td>
          </tr>
        </table>
      </form>
    </div>

  </div>

  <script>
    let currentQuote = 0;
    const quotes = document.querySelectorAll('.quote-slide');

    function showNextQuote() {
      quotes[currentQuote].classList.remove('active');
      currentQuote = (currentQuote + 1) % quotes.length;
      quotes[currentQuote].classList.add('active');
    }

    setInterval(showNextQuote, 5000);
  </script>

</body>

</html>