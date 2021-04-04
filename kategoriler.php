<?php include 'header.php'; ?>

<?php

$kategori=@$_GET['id'];


$sayfa=@$_GET["s"];

if(empty($sayfa)|| !is_numeric($sayfa)){

  $sayfa=1;
}
$sayi=2;

//kategorileri çekme
$kategorisorgu=mysqli_query($baglan,"select * from kategoriler where id='$kategori' ");

while ($kategori_ad=mysqli_fetch_assoc($kategorisorgu)) {
  ?> 
  <br>
  <div class="container">
   <div class="row mb-5">
    <div class="col-md-12">
      <h2 class="site-section-heading text-center text-uppercase"><?php echo $kategori_ad['kategori_adi']; ?></h2>
    </div>
  </div>
</div>

<div class="site-section">
  <div class="container">
    <div class="row mb-5">

      <?php  
    }

    $blogcek=mysqli_query($baglan,"select * from kategoriler INNER JOIN blog ON kategoriler.id=blog.kategori_id where id='$kategori' order by blog_tarih DESC");

    $blogsayisi=mysqli_num_rows($blogcek);

$sayfasayisi=ceil($blogsayisi/$sayi); //sayfa sayısını bulabilmek için blog sayısı ile kaç blog gösterilecek ise o sayıya böl
$baslangic=($sayfa*$sayi)-$sayi;

$blog_sorgu=mysqli_query($baglan,"select * from kategoriler INNER JOIN blog ON kategoriler.id=blog.kategori_id where id='$kategori' order by blog_tarih DESC limit $baslangic,$sayi");

while($kategori_blog=mysqli_fetch_assoc($blog_sorgu)){
 ?>
  <div class="col-md-6 col-lg-4 mb-5">
    <div class="media-image">
      <a href="detay.php?id=<?php echo $kategori_blog['blog_id']; ?>"><img src="uploads/<?php echo $kategori_blog['blog_resim']; ?>" alt="Image" class="img-fluid"></a>
      <div class="media-image-body">
        <h2 class="font-secondary text-uppercase"><a href="detay.php?id=<?php echo $kategori_blog['blog_id']; ?>"><?php echo $kategori_blog['blog_adi']; ?></a></h2>
        <?php $date=$kategori_blog['blog_tarih'];
        $timestamp=strtotime($date);
                $currentDate= new DateTime('@'.$timestamp); //mevcut tarih
                $nowDate= new DateTime('@'.time()); //şuanki tarih
                $result=$currentDate->diff($nowDate)->format('  %d gün %h saat %i dakika önce');

                ?>
                <span class="d-block mb-3"><?php echo $result; ?></span>  
                <p><?php echo $kategori_blog['blog_ozet']; ?></p>
                <p><a href="detay.php?id=<?php echo $kategori_blog['blog_id']; ?>">Detay için Tıklayınız.</a></p>
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
              <span class="current"><a href="kategoriler.php?id=<?php echo $kategori; ?>"><?php echo $i; ?></a>  </span>

            <?php  }
            else{
              ?>  

              <a href="kategoriler.php?id=<?php echo $kategori; ?>&s=<?php echo $i; ?>"><?php echo $i; ?></a>
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