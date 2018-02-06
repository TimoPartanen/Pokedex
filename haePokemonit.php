<?php
function haePokemonit($taulu) {
    
// Haetaan pokemonien määrä (default 151)
$query = 'select count(*) ID from '.$taulu.'';
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
    foreach ($line as $maara) {
    }
}
pg_free_result($result);

//Jos ei löydy
if (!$maara) {
    ?>
	<div class="col-lg-12">
		</br>
		<h4>Your collection is empty</h4>
		</br></br></br>
	</div>
	<?php
}

//Jos tauluna 'collection', haetaan tulostetavien pokemoiden ID:t arrayksi.
if($taulu == 'collection'){
$id_arr = array();
$query = 'select "ID" from '.$taulu.'';
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
   $id_arr[] = $line['ID'];
}
}

//Tulostetaan kaikki pokemonit
for ($laskuri = 1; $laskuri < $maara + 1; $laskuri++) {
	if($taulu == 'pokedex'){
		$query = 'SELECT "ID", "POKEMON" FROM '.$taulu.' WHERE "ID" ='.$laskuri.' ORDER BY "ID"'; 
	}else {
		$query = 'SELECT "ID", "POKEMON" FROM '.$taulu.' WHERE "ID" = '.$id_arr[$laskuri -1].' ORDER BY "ID"'; 
	}
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
if (!$result) {
        echo "Problem with query " . $query . "<br/>";
        echo pg_last_error();
        exit();
    }
	$row = pg_fetch_assoc($result); 
    $dex = $row["ID"];
    $pokemon = $row["POKEMON"];
	
//Haetaan mahdolliset kuvat
	
	if(file_exists("img/" . $pokemon . ".png")){
	$kuva = "img/" . $pokemon . ".png";
	
	}else {
	$kuva =	"http://placehold.it/400x300";
	}
	
//JOS pokedex, alustetaan ns. perinteiseen muotoon
	if($taulu == 'pokedex'){
		if($dex < 10) {
		$dexluku = '#00' . $dex;
		}
		if($dex >= 10 && $dex < 100) {
		$dexluku = '#0' . $dex;
		}
	} else {
	$dexluku = '';
	}

//Tulostetaan halutut tiedot
?>
<div class="col-lg-3 col-md-4 col-xs-6">
<h4><?php echo $pokemon . " " . $dexluku; ?></h4>
    <a href="<?php if($taulu == 'pokedex'){echo 'pokemon.php?dex=' . $dex;}else{echo 'omapokemon.php?id=' . $id_arr[$laskuri -1];} ?>" class="d-block mb-4 h-100">
        <img style="" class="img-fluid img-thumbnail" src="<?php echo $kuva; ?>" alt="">
    </a>
	
</div>

<?php
}

}




?>