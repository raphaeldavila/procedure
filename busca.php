<?php

$con = mysqli_connect("localhost","root","","test");

$identificador = $_POST['identidade'];
$nome          = $_POST['nome'];

if(empty($identificador) or empty($nome)){

	header('Location: index.php');

}else{


	if (mysqli_connect_errno()){

	  	echo "Failed to connect to MySQL: " . mysqli_connect_error();

	}else{

		$results = mysqli_query($con,"CALL Selecionando(".$identificador.", '".$nome."')");

		while ($row = mysqli_fetch_assoc($results)) {

			echo $row['nome'];
			echo "<br>";

		}

	}


}


?>