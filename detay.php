<?php include 'header.php'; ?>

<?php

$bl=$_GET['id']; //blog id çek bl değerine ata
$blogsorgu=mysqli_query($baglan,"select * from blog where blog_id='$bl' ");//veritabanından blog id değerine göre blog verilerini çek
$blog_getir=mysqli_fetch_assoc($blogsorgu);//verileri dizi olarak ata

$kategori_sorgu=mysqli_query($baglan,"select * from kategoriler INNER JOIN blog ON kategoriler.id=blog.kategori_id where blog_id='$bl' ");//kategori adını çekebilmek için iki tabloyu birleştir
$kategori=mysqli_fetch_assoc($kategori_sorgu);

?>
<br>
<div class="">
  <div id="">
    <ul>

      <a href="index.php">Anasayfa</a>
      &#187;
      <a href="kategoriler.php?id=<?php echo $kategori['id']; ?>"><?php echo $kategori['kategori_adi']; ?></a>
      &#187;
    </ul>
  </div>
</div>
<div class="site-half">
  <div class="img-bg-1" style="background-image: url('uploads/<?php echo $blog_getir['blog_resim']; ?>');"   ></div>
  <div class="container">
    <div class="row no-gutters align-items-stretch">
      <div class="col-md-5 ml-md-auto py-5">
        <span class="caption d-block mb-2 font-secondary font-weight-bold"><?php echo $blog_getir['blog_adi']; ?></span>

        <p><?php echo $blog_getir['blog_ozet']; ?></p> 
        <br>

        <p><?php echo $blog_getir['blog_aciklama']; ?></p>  
        <br>
        <?php
        setlocale(LC_TIME, "tr_TR","tr","turkish");
        $date=$blog_getir['blog_tarih'];
        ?>
        <p><?php echo strftime("%d %B %Y, %A",strtotime("$date")); ?></p>  

      </div>
    </div>
  </div>
</div>
<br>



<?php include 'footer.php'; ?>