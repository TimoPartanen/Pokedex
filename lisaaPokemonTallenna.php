<?php
include("yhteys.php");   

$pokemon = $_POST['pokemon'];
$pokemon = "'" . $pokemon . "'";
$level = $_POST['level'];
$gender = $_POST['gender'];
$gender = "'" . $gender . "'";

$query = 'SELECT "TYPE_1", "TYPE_2" FROM pokedex WHERE "POKEMON" ='.$pokemon.''; 
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
if (!$result) {
        echo "Problem with query " . $query . "<br/>";
        echo pg_last_error();
        exit();
    }
	$row = pg_fetch_assoc($result); 
    $type1 = $row["TYPE_1"];
    $type2 = $row["TYPE_2"];
	
	$type1 = "'" . $type1 . "'";
	$type2 = "'" . $type2 . "'";

// Ei turvallinen vaihtoehto, oikeassa sovelluksessa käytä pg_prepare+pg_execute
$query = 'INSERT INTO collection ("POKEMON","TYPE1","TYPE2","LEVEL","GENDER") VALUES ('.$pokemon.','.$type1.','.$type2.','.$level.','.$gender.')';
$result = pg_query($query);

header("Location: kokoelma.php");

?>
