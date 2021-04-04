<?php include 'header.php'; ?>


<div class="site-section">
  <div class="container">
    <div class="row mb-5">


     <?php
     $sayfa=@$_GET["s"];

//Eğer sayfa boş ya da sayı değilse
     if(empty($sayfa)|| !is_numeric($sayfa)){

      $sayfa=1;
    }
$sayi=6; // bir sayfada 6 tane blog gösterilsin diye 6 sayısı atandı.

//toplam blog sayısı
$blogsayisi=mysqli_num_rows(mysqli_query($baglan,"SELECT * from blog ORDER BY blog_tarih DESC"));

$sayfasayisi=ceil($blogsayisi/$sayi); //sayfa sayısını bulabilmek için blog sayısı ile kaç blog gösterilecek ise o sayıya böl
$baslangic=($sayfa*$sayi)-$sayi;

$blogcek=mysqli_query($baglan,"SELECT * FROM blog ORDER BY blog_tarih DESC limit $baslangic,$sayi");

while($blog=mysqli_fetch_assoc($blogcek)){ // blogları listeliyoruz.
  ?> 



  <div class="col-md-6 col-lg-4 mb-5">
    <div class="media-image">
      <a href="detay.php?id=<?php echo $blog['blog_id']; ?>"><img src="uploads/<?php echo $blog['blog_resim']; ?>" alt="Image" class="img-fluid"></a>
      <div class="media-image-body">
        <h2 class="font-secondary text-uppercase"><a href="detay.php?id=<?php echo $blog['blog_id']; ?>"><?php echo $blog['blog_adi']; ?></a></h2>
        
        <?php $date=$blog['blog_tarih'];
        $timestamp=strtotime($date);
                $currentDate= new DateTime('@'.$timestamp); //mevcut tarih
                $nowDate= new DateTime('@'.time()); //şuanki tarih
                $result=$currentDate->diff($nowDate)->format('  %d gün %h saat %i dakika önce');
                

                ?>
                <span class="d-block mb-3"><?php echo $result; ?></span>  
                <p><?php echo $blog['blog_ozet']; ?></p>             
                <p><a href="detay.php?id=<?php echo $blog['blog_id']; ?>">Detay için Tıklayınız.</a></p>
              </div>
            </div>
          </div>
          
          <?php

        }
        
        ?>        
      </div>
      <div class="row">
        <div class="col-12 text-center">
          <div class="custom-pagination">
            <?php
            for ($i=1; $i<=$sayfasayisi; $i++){ 

             if($i==$sayfa){
              ?>
              <span class="current"><a href="index.php?s=<?php echo $i; ?>"><?php echo $i; ?></a>  </span>

            <?php  }
            else{
              ?>  

              <a href="index.php?s=<?php echo $i; ?>"><?php echo $i; ?></a>
              <?php    
            }      
          }             
          ?>        
          

          
        </div>
      </div>
    </div>
  </div>
</div>


<?php include 'footer.php'; ?>