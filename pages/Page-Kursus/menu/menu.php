<?php
@$pages=$_GET['pages'];

$FILE = "$pages".".php";

// echo $FILE;

echo file_get_contents(__DIR__ . './halaman/'.$FILE);


?>