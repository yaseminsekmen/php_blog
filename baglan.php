<?php

//Veritabanı ulaşım bilgileri
$username="root";
$password="";
$sunucu="localhost";
$database="blog";


$baglan=mysqli_connect($sunucu,$username,$password,$database);
mysqli_set_charset($baglan, "utf8");//Türkçe karakter doğrulaması


if(!$baglan){
	echo "Baglantı hatası:".mysqli_errno();
	//exit();
}


?>