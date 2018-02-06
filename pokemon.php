<?php
include "yhteys.php";

// Löytyykö dex
if (isset($_GET['dex']) && is_numeric($_GET['dex']))
{
$dex = $_GET['dex'];
} else {
  echo "Odottamaton virhe";
}
// Haetaan kaikki tieto Pokemonin DEX arvolla
$query = 'SELECT * FROM pokedex WHERE "ID" ='.$dex.' ORDER BY "ID"'; 
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
if (!$result) {
        echo "Problem with query " . $query . "<br/>";
        echo pg_last_error();
        exit();
    }
	$row = pg_fetch_assoc($result); 
    $dex = $row["ID"];
    $pokemon = $row["POKEMON"];
	$type1 = $row["TYPE_1"];
	$type2 = $row["TYPE_2"];
	$abilities_1 = $row["ABILITIES_1"];
	$abilities_2 = $row["ABILITIES_2"];
	$gender = $row["GENDER"];
	$evolution = $row["EVOLUTION_DETAILS"];
	$hp = $row["HP"];
	$atk = $row["ATK"];
	$def = $row["DEF"];
	$spatk = $row["SPATK"];
	$spdef = $row["SPDEF"];
	$speed = $row["SPEED"];
	$total = $row["TOTAL"];
	
	
//Haetaan mahdollinen kuva
	
	if(file_exists("img/" . $pokemon . ".png")){
	$kuva = "img/" . $pokemon . ".png";
	
	}else {
	$kuva =	"http://placehold.it/400x300";
	}
// Luodaan pokedex tyylinen #00 
	if($dex < 10) {
	$dex = '00' . $dex;
	}
	if($dex >= 10 && $dex < 100) {
	$dex = '0' . $dex;
	}
	
?>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Pokedex</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/thumbnail-gallery.css" rel="stylesheet">

  </head>

  <body>

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="index.php">Pokedex</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item">
              <a class="nav-link" href="index.php">Pokedex
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="kokoelma.php">My Collection</a>
            </li>
          </ul>
        </div>
        
      </div>
    </nav>

    <!-- Page Content -->
    <div class="container">
      <h1 class="my-4 text-center text-lg-left"><?php echo $pokemon . " #" . $dex; ?></h1>
		<div class="row text-center text-lg-left">
			<div class="col-lg-6">
				<img class="img-fluid img-thumbnail" src="<?php echo $kuva; ?>" alt="">
			</div>
			<div class="col-lg-6">
				<p>Type: <?php echo $type1 . ', ' . $type2; ?></p>
				<p>Abilities: <?php echo $abilities_1 . ', ' . $abilities_2; ?></p>
				<p>Gender: <?php echo $gender; ?></p>
				<p>Evolution info: <?php echo $evolution; ?></p>
			</div>
			<div class="col-lg-12">
				<p>HP: <?php echo $hp; ?>
				ATK: <?php echo $atk; ?>
				DEF: <?php echo $def; ?>
				SPATK: <?php echo $spatk; ?>
				SPDEF: <?php echo $spdef; ?>
				Speed: <?php echo $speed; ?></p>
				<p>Total: <?php echo $total; ?></p>
			</div>
		</div>
    </div>
    <!-- /.container -->

    <!-- Footer -->
    <footer class="py-5 bg-dark">
      <div class="container">
        <p class="m-0 text-center text-white">Pokedex Timo Partanen</p>
      </div>
      <!-- /.container -->
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>

