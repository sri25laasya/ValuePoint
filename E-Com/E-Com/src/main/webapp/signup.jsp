<html>
    <head>
        <title>
            Value Point
        </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <link rel="icon" href="https://st4.depositphotos.com/5040187/19755/v/600/depositphotos_197558142-stock-illustration-logo-swoosh-global-red-letter.jpg" type="image/x-icon">
        <style>
        body{
        text-align: center;
        }
        form{
        text-align: center;
        }
        .boxed {
        border: 4px solid black;
        border: 4px solid #ffbb33;
        border-image: linear-gradient(45deg,#ffbb33,blue) 10;
        }       
        </style>
    </head>
    <body bgcolor="#EEE9E8">
        <h1 style="font-size: 25 px; background: -webkit-linear-gradient(#ffbb33, blue);-webkit-background-clip: text;
            -webkit-text-fill-color: transparent;">VALUE POINT</h1><br>
          
     <br><br><br><br><br>
         <div class="container-fluid">
               <div class="row">
                   <div class="col-md-3"></div>
                   <div class="col-md-6">
                    <div class="boxed">
                        <p>Register</p>
                        <form action="/signup" method="post">
                            username:<input name="username" type="text" placeholder="username" >
                            <br>
                            <br>
                            password:<input name="password" type="password" placeholder="password" >
                            <br>
                            <br>
                            cpassword:<input name="cpassword" type="password" placeholder="confirm password" >
                            <br>
                            <br>
                            email:<input name="email" type="email" placeholder="E-mail">
                            <br>
                            <br>
                            <button class="btn btn-warning"  style="border:0px;">submit</button>   
                            <span>${message}</span>       
                        </form>
                      </div>
                   </div>
                   <div class="col-md-3"></div>
               </div>
           </div>
    </body>
</html>       
 