<!DOCTYPE html>
<html>
<head>
<link
    href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
    rel="stylesheet"
    integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
    crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<style>
    body {
      background-image: url("https://st4.depositphotos.com/5040187/19755/v/600/depositphotos_197558142-stock-illustration-logo-swoosh-global-red-letter.jpg");
      }
  </style>
<body style="background-color:powderblue;">
<div class="align-center text-center">
<div class="form-container">
<h1>LOGIN</h1>
    <form action="/login" method="post"> 
        <div class="form-group text-black">
            <label>Username</label>
            <input class="form-input" type="text" name="username">
            <br>
            <br>
        </div>
        <div class="form-group text-black">
            <label>Password </label>
            <input class="form-input" type="password" name="password">
            <br>
            <br>
        </div>
        <button type="submit" class="btn btn-dark" >Login</button>
        <a href="/signup" class="btn btn-dark" >signup</a>
        <p  class="text text-danger"> ${message} </p>
        
    </form>
    </div>
    </div>
</body>
</html>