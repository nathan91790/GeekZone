<?php

include('ConnectSQL.php');

$sql = 'SELECT * FROM `produit`';
while($row = mysqli_fetch_array($sql)){
             
            echo $row[`nom`];
            echo '<br>';
            echo $row[`description`];
            echo '<br>';  
        }
?>