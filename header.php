<?php include 'baglan.php'; ?>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Funder &mdash; Colorlib Website Template</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <link href="https://fonts.googleapis.com/css?family=Oswald:400,700|Work+Sans:300,400,700" rel="stylesheet">
  <link rel="stylesheet" href="fonts/icomoon/style.css">

  <link rel="stylesheet" href="css/bootstrap.min.css">
  <link rel="stylesheet" href="css/magnific-popup.css">
  <link rel="stylesheet" href="css/jquery-ui.css">
  <link rel="stylesheet" href="css/owl.carousel.min.css">
  <link rel="stylesheet" href="css/owl.theme.default.min.css">
  <link rel="stylesheet" href="css/bootstrap-datepicker.css">
  <link rel="stylesheet" href="css/animate.css">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/mediaelement@4.2.7/build/mediaelementplayer.min.css">



  <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">
  
  <link rel="stylesheet" href="css/aos.css">

  <link rel="stylesheet" href="css/style.css">

</head>
<body style="background-image: url('images/bg.jpg');">

  <div class="site-wrap">



    <div class="site-mobile-menu">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div> <!-- .site-mobile-menu -->
    
    
    <div class="site-navbar-wrap js-site-navbar bg-white">

      <div class="container">
        <div class="site-navbar bg-light">
          <div class="row align-items-center">
            <div class="col-2">
              <h2 class="mb-0 site-logo"><a href="index.php" class="font-weight-bold">Blog Sayfam</a></h2>
            </div>
            <div class="col-10">
              <nav class="site-navigation text-right" role="navigation">
                <div class="container">
                  <div class="d-inline-block d-lg-none ml-md-0 mr-auto py-3"><a href="#" class="site-menu-toggle js-menu-toggle text-black"><span class="icon-menu h3"></span></a></div>

                  <ul class="site-menu js-clone-nav d-none d-lg-block">
                    <li><a href="index.php">Anasayfa</a></li>
                    <li class="has-children">
                     <a href="#">Kategoriler</a>
                     <ul class="dropdown arrow-top">

                      <?php
                      $kategorisorgu=@mysqli_query($baglan,"select * from kategoriler"); //kategorileri menüde listeliyoruz.
                      while($kategori=mysqli_fetch_assoc($kategorisorgu)){
                        ?>


                        <li><a href="kategoriler.php?id=<?php echo $kategori['id']; ?>"><?php echo $kategori['kategori_adi']; ?></a></li>
                        <?php
                      }
                      ?>                       

                    </ul>
                  </li>

                </ul>
              </div>
            </nav>
          </div>
        </div>
      </div>
    </div>
  </div>


