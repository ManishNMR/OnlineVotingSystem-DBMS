<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
    <style>
      .td-1{
          text-align: center;
          padding-top: 20px;
        
      }
      table{
        margin:auto;
      }
     
    </style>
</head>
<body>
    <div class="container-fluid" id="cont-3">

    <?php
include("header.html");
?>

    </section>
    <section id="center">
    <div class="container">
        <div class="row">
            <div class="col-md-6" >
                <h1 style="padding-top: 20px;">Candidate Enroll</h1>
                <form action="process_cand.php" method="post">
                <table>
                    <tr>
                        <td class="td-1">Name :</td>
                        <td class="td-1"><input   requiredtype="text" style="text-align: left;" name="txtName" autofocus></td>
                    </tr>
                    <tr>
                        <td class="td-1">Email :</td>
                        <td class="td-1"><input   requiredtype="email" style="text-align: left;" name="txtEmail"></td>
                    </tr>
                    <tr>
                        <td class="td-1">Mobile Number :</td>
                        <td class="td-1"><input  required type="number" style="text-align: left;" name="txtNumber"></td>
                    </tr>
                    <tr>
                        <td class="td-1">Voter ID :</td>
                        <td class="td-1"><input  required type="number" style="text-align: left;" name="txtRollNo"></td>
                    </tr>
                    <tr>
                        <td class="td-1">Candidate ID :</td>
                        <td class="td-1"><input  required type="text" style="text-align: left;" name="txtEnrollID"></td>
                    </tr>
                    
                    <tr>
                        <td class="td-2" id style="padding-top: 20px; padding-bottom: 40px;" ><button class="magnifyBtn" name="Submit">Submit</button></td>
                    </tr>
                </table>
              </form>
            </div>
            <div class="col-md-6" style="padding-top: 50px;">
                <img src="img/8.svg" alt="" srcset="">
            </div>
        </div>
    </div>
</section>
<div class="container-fluid">
    <div class="row">
      <div class="col-md-6">
        <hr>
        <div class="Footer">
        <?php
include("footer.html");
?>
        </div>
      </div>
      <div class="col-md-6">
        <hr>
        <div class="social-icon">
          <ul >
                          <li>
                              <a href="">
                                  <i class="fa fa-facebook"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-google-plus"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-linkedin"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-twitter"></i>
                              </a>
                          </li>
                          <li>
                              <a href="">
                                  <i class="fa fa-pinterest"></i>
                              </a>
                          </li>
                      </ul>
        </div>
      </div>
    </div>
  </div>
  </section>

  
   
       <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->

    <script src="js/jquery-3.2.1.slim.min.js"></script>
    <script src="js/popper.min.js"></script>    
    <script src="js/bootstrap.min.js"></script>  
    <!-- <script src="js/aos.js"></script>
    <script>
     AOS.init();
    </script> -->
</body>
</html>