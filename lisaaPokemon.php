<?php
include "yhteys.php";

// Haetaan tarvittavat tiedot lisäämistä varten
$query = 'SELECT "POKEMON" FROM pokedex ORDER BY "POKEMON"'; 
$result = pg_query($query) or die('Query failed: ' . pg_last_error());
if (!$result) {
        echo "Problem with query " . $query . "<br/>";
        echo pg_last_error();
        exit();
    }
	$row = pg_fetch_assoc($result); 
    $pokemon = $row["POKEMON"];
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
      <h1 class="my-4 text-center text-lg-left">Add Pokemon to Collection</h1>
		<div class="row text-center text-lg-left">
			<div class="col-lg-6">
			
			<form action="lisaaPokemonTallenna.php" method="post" enctype="multipart/form-data">
			  <fieldset>
					Pokemon:<br>
					<select name="pokemon" id="pokemon" required>
							<?php
							while ($line = pg_fetch_array($result, null, PGSQL_ASSOC)) {
								foreach ($line as $maara => $value) {
								echo '<option value="'.$value.'">'.$value.'</option>';
								}
							}
							?>
					</select>
					<br>
					Level:<br>
					<select name="level"  id="level" required>
						 <option value="1">1
					</select>
					<script type="text/javascript">
						var val=0;
							for(i=1;i<=100;i++) {
								document.getElementById("level").options.length+=1;
									if((i%1)==0) {
										val=val + 1;
									}
								rval=val.toFixed(2);
								document.getElementById("level").options[i].text=i;
								document.getElementById("level").options[i].value=rval;
							}
					</script>
					<br>
					Gender:<br>
					<select name="gender" id="gender" required>
						<option value="Male" >Male</option>
						<option value="Female">Female</option>
					</select>
				<br><br>
				<input type="submit" value="Submit">
				<br><br>
			  </fieldset>
			</form>
			
			
			
				
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

